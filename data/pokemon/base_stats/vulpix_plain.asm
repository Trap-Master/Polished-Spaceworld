	db  38,  41,  40,  65,  50,  65 ; 299 BST
	;   hp  atk  def  spe  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 63 ; base exp
	db ALWAYS_ITEM_2, ASPEAR_BERRY ; held items
	dn GENDER_F75, HATCH_MEDIUM_FAST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for VULPIX, FLASH_FIRE, FLASH_FIRE, DROUGHT
else
	abilities_for VULPIX, FLASH_FIRE, FOREWARN, DROUGHT
endc
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	ev_yield 1 Spe

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, SAFEGUARD, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SWIFT, SUBSTITUTE, FACADE, FLAME_CHARGE, REST, ATTRACT, THIEF, ENERGY_BALL, DARK_PULSE, WILL_O_WISP, BODY_SLAM, DOUBLE_EDGE, ENDURE, HEADBUTT, SLEEP_TALK, SWAGGER, ZEN_HEADBUTT
	; end