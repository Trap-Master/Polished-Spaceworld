#!/usr/bin/env python

"""
Convert an rgbds .map file into a sorted .sym file
with bank and section data in comments.
"""

import sys
import re

def total_bank_size(type):
	# used to output the size of EMPTY banks
	sizes = {
		'ROM0':  0x4000, # 0000-3FFF
		'ROMX':  0x4000, # 4000-7FFF
		'VRAM':  0x2000, # 8000-9FFF
		'SRAM':  0x2000, # A000-BFFF
		'WRAM0': 0x1000, # C000-CFFF
		'WRAMX': 0x1000, # D000-DFFF
		                 # E000-FDFF: echo RAM
		'OAM':     0xA0, # FE00-FE9F
		                 # FEA0-FEFF: unusable
		                 # FF00-FF7F: hardware I/O registers
		'HRAM':    0x80, # FF80-FFFF
	}
	return sizes[type]

def map_to_sym(input):
	# analogous to "; File generated by rgblink"
	yield '; File generated by map2sym.py\n'

	# ex: OAM:
	unused_rx = re.compile(r'^([A-Z]+):$', re.IGNORECASE)
	# ex: ROM Bank #1:
	bank_rx = re.compile(r'^([A-Z0-9]+) bank #([0-9]+)', re.IGNORECASE)
	# ex:   SECTION: $4000-$747A ($347B bytes) ["bank1"]
	section_rx = re.compile(r' +SECTION: \$([0-9A-F]+)(?:-\$([0-9A-F]+))? \(\$([0-9A-F]+) bytes\) \["(.+)"\]', re.IGNORECASE)
	# ex:            $4025 = PlaceWaitingText.Waiting
	label_rx = re.compile(r' +\$([0-9A-F]+) = (.+)', re.IGNORECASE)
	# ex:     SLACK: $0B85 bytes
	slack_rx = re.compile(r' +SLACK: \$([0-9A-F]+) bytes', re.IGNORECASE)

	rom_size = 0
	bank_type = None
	bank_number = None
	bank_size = 0
	bank_lines = []
	section_lines = []

	for line in input:

		if line.startswith('  EMPTY'):
			# empty banks have their entire capacity as slack
			line = '    SLACK: $%04X bytes\n' % total_bank_size(bank_type)

		x = re.match(unused_rx, line)
		if x:
			# start an unused bank
			bank_type = x.group(1)
			bank_number = '00' # default for HRAM and OAM
			bank_size = 0
			del bank_lines[:]
			del section_lines[:]
			continue

		x = re.match(bank_rx, line)
		if x:
			# start a new bank
			bank_type = x.group(1)
			bank_number = '%02X' % int(x.group(2))
			# These checks are not needed for RGBDS past a few commits beyond 0.3.9.
			# They're kept for compatibility, remove them further?
			if bank_type == 'ROM':
				bank_type = 'ROM0' if bank_number == '00' else 'ROMX'
			if bank_type == 'WRAM':
				bank_type = 'WRAM0' if bank_number == '00' else 'WRAMX'
			bank_size = 0
			del bank_lines[:]
			del section_lines[:]
			continue

		x = re.match(section_rx, line)
		if x:
			# finish current section
			bank_lines.extend(sorted(section_lines))
			# start a new section
			start = x.group(1)
			end = x.group(2) or start
			size = x.group(3).zfill(4)
			name = x.group(4)
			bank_size += int(size, 16)
			# ex: ; 01:4000-747A ($347B) bank1
			bank_lines.append('; %s:%s-%s ($%s) %s\n' % (bank_number, start, end, size, name))
			del section_lines[:]
			continue

		x = re.match(label_rx, line)
		if x:
			# add label to section
			address = x.group(1)
			label = x.group(2)
			# ex: 01:4025 PlaceWaitingText.Waiting
			section_lines.append('%s:%s %s\n' % (bank_number, address, label))
			continue

		x = re.match(slack_rx, line)
		if x:
			# finish current section
			bank_lines.extend(sorted(section_lines))
			# finish current bank
			if bank_type.startswith('ROM'): # ROM0 or ROMX
				rom_size += bank_size
			slack = int(x.group(1), 16)
			if bank_type in {'ROM0', 'WRAM0', 'OAM', 'HRAM'}:
				# ex: ; ROM0 ($3E93) ($016D free)
				yield '; %s ($%04X) ($%04X free)\n' % (bank_type, bank_size, slack)
			else:
				# ex: ; ROMX $01 ($347B) ($0B85 free)
				yield '; %s $%s ($%04X) ($%04X free)\n' % (bank_type, bank_number, bank_size, slack)
			for line in bank_lines:
				yield line
			continue

	total_rom_size = 0x4000 * 128
	free_space = total_rom_size - rom_size
	percent_free = free_space * 100.0 / total_rom_size
	yield '; ROM: %.2f%% free space ($%06X) ($%06X free)\n' % (percent_free, rom_size, free_space)

def main():
	if len(sys.argv) < 3:
		sys.stderr.write('Usage: %s polishedcrystal.map sorted.sym\n' % sys.argv[0])
		sys.exit(1)
	with open(sys.argv[1], 'r') as infile:
		input = infile.readlines()
		output = map_to_sym(input)
	with open(sys.argv[2], 'w') as outfile:
		outfile.writelines(output)

if __name__ == '__main__':
	main()
