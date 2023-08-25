; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - EvolutionMoves (see data/pokemon/evolution_moves.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MiniIconPointers (see data/pokemon/mini_icon_pointers.asm)
; - OverworldMonIconColors (see data/pokemon/overworld_icon_pals.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPicSizes (see data/pokemon/pic_sizes.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokemonBodyData (see data/pokemon/body_data.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - ValidPokemonLevels (see data/pokemon/valid_levels.asm)
; - FootprintPointers (see data/pokemon/footprint_pointers.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/extra_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
	const_def 1
	;NUM_POKEMON EQU KANTO
	const BULBASAUR  ; 01 1
	const IVYSAUR    ; 02 2
	const VENUSAUR   ; 03 3
	const CHARMANDER ; 04 4
	const CHARMELEON ; 05 5
	const CHARIZARD  ; 06 6
	const SQUIRTLE   ; 07 7
	const WARTORTLE  ; 08 8
	const BLASTOISE  ; 09 9
	const CATERPIE   ; 0a 10
	const METAPOD    ; 0b 11
	const BUTTERFREE ; 0c 12
	const WEEDLE     ; 0d 13
	const KAKUNA     ; 0e 14
	const BEEDRILL   ; 0f 15
	const PIDGEY     ; 10 16
	const PIDGEOTTO  ; 11 17
	const PIDGEOT    ; 12 18
	const RATTATA    ; 13 19
	const RATICATE   ; 14 20
	const SPEAROW    ; 15 21
	const FEAROW     ; 16 22
	const EKANS      ; 17 23
	const ARBOK      ; 18 24
	const PIKACHU    ; 19 25
	const RAICHU     ; 1a 26
	const SANDSHREW  ; 1b 27
	const SANDSLASH  ; 1c 28
	const NIDORAN_F  ; 1d 29
	const NIDORINA   ; 1e 30
	const NIDOQUEEN  ; 1f 31
	const NIDORAN_M  ; 20 32
	const NIDORINO   ; 21 33
	const NIDOKING   ; 22 34
	const CLEFAIRY   ; 23 35
	const CLEFABLE   ; 24 36
	const VULPIX     ; 25 37
	const NINETALES  ; 26 38
	const JIGGLYPUFF ; 27 39
	const WIGGLYTUFF ; 28 40
	const ZUBAT      ; 29 41
	const GOLBAT     ; 2a 42
	const ODDISH     ; 2b 43
	const GLOOM      ; 2c 44
	const VILEPLUME  ; 2d 45
	const PARAS      ; 2e 46
	const PARASECT   ; 2f 47
	const VENONAT    ; 30 48
	const VENOMOTH   ; 31 49
	const DIGLETT    ; 32 50
	const DUGTRIO    ; 33 51
	const MEOWTH     ; 34 52
	const PERSIAN    ; 35 53
	const PSYDUCK    ; 36 54
	const GOLDUCK    ; 37 55
	const MANKEY     ; 38 56
	const PRIMEAPE   ; 39 57
	const GROWLITHE  ; 3a 58
	const ARCANINE   ; 3b 69
	const POLIWAG    ; 3c 60
	const POLIWHIRL  ; 3d 61
	const POLIWRATH  ; 3e 62
	const ABRA       ; 3f 63
	const KADABRA    ; 40 64
	const ALAKAZAM   ; 41 65
	const MACHOP     ; 42 66
	const MACHOKE    ; 43 67
	const MACHAMP    ; 44 68
	const BELLSPROUT ; 45 69
	const WEEPINBELL ; 46 70
	const VICTREEBEL ; 47 71
	const TENTACOOL  ; 48 72
	const TENTACRUEL ; 49 73
	const GEODUDE    ; 4a 74
	const GRAVELER   ; 4b 75
	const GOLEM      ; 4c 76
	const PONYTA     ; 4d 77
	const RAPIDASH   ; 4e 78
	const SLOWPOKE   ; 4f 79
	const SLOWBRO    ; 50 80
	const MAGNEMITE  ; 51 81
	const MAGNETON   ; 52 82
	const FARFETCH_D ; 53 83
	const DODUO      ; 54 84
	const DODRIO     ; 55 85
	const SEEL       ; 56 86
	const DEWGONG    ; 57 87
	const GRIMER     ; 58 88
	const MUK        ; 59 89
	const SHELLDER   ; 5a 90
	const CLOYSTER   ; 5b 91
	const GASTLY     ; 5c 92
	const HAUNTER    ; 5d 93
	const GENGAR     ; 5e 94
	const ONIX       ; 5f 95
	const DROWZEE    ; 60 96
	const HYPNO      ; 61 97
	const KRABBY     ; 62 98
	const KINGLER    ; 63 99
	const VOLTORB    ; 64 100
	const ELECTRODE  ; 65 101
	const EXEGGCUTE  ; 66 102
	const EXEGGUTOR  ; 67 103
	const CUBONE     ; 68 104
	const MAROWAK    ; 69 105
	const HITMONLEE  ; 6a 106
	const HITMONCHAN ; 6b 107
	const LICKITUNG  ; 6c 108
	const KOFFING    ; 6d 109
	const WEEZING    ; 6e 110
	const RHYHORN    ; 6f 111
	const RHYDON     ; 70 112
	const CHANSEY    ; 71 113
	const TANGELA    ; 72 114
	const KANGASKHAN ; 73 115
	const HORSEA     ; 74 116
	const SEADRA     ; 75 117
	const GOLDEEN    ; 76 118
	const SEAKING    ; 77 119
	const STARYU     ; 78 120
	const STARMIE    ; 79 121
	const MR__MIME   ; 7a 122
	const SCYTHER    ; 7b 123
	const JYNX       ; 7c 124
	const ELECTABUZZ ; 7d 125
	const MAGMAR     ; 7e 126
	const PINSIR     ; 7f 127
	const TAUROS     ; 80 128
	const MAGIKARP   ; 81 129
	const GYARADOS   ; 82 130
	const LAPRAS     ; 83 131
	const DITTO      ; 84 132
	const EEVEE      ; 85 133
	const VAPOREON   ; 86 134
	const JOLTEON    ; 87 135
	const FLAREON    ; 88 136
	const PORYGON    ; 89 137
	const OMANYTE    ; 8a 138
	const OMASTAR    ; 8b 139
	const KABUTO     ; 8c 140
	const KABUTOPS   ; 8d 141
	const AERODACTYL ; 8e 142
	const SNORLAX    ; 8f 143
	const ARTICUNO   ; 90 144
	const ZAPDOS     ; 91 145
	const MOLTRES    ; 92 146
	const DRATINI    ; 93 147
	const DRAGONAIR  ; 94 148
	const DRAGONITE  ; 95 149
	const MEWTWO     ; 96 150
	const MEW        ; 97 151
	;NUM_POKEMON EQU JOHTO
	const CHIKORITA  ; 98 152
	const BAYLEEF    ; 99 153
	const MEGANIUM   ; 9a 154
	const CYNDAQUIL  ; 9b 155
	const QUILAVA    ; 9c 156
	const TYPHLOSION ; 9d 157
	const TOTODILE   ; 9e 158
	const CROCONAW   ; 9f 159
	const FERALIGATR ; a0 160
	const SENTRET    ; a1 161
	const FURRET     ; a2 162
	const HOOTHOOT   ; a3 163
	const NOCTOWL    ; a4 164
	const LEDYBA     ; a5 165
	const LEDIAN     ; a6 166
	const SPINARAK   ; a7 167
	const ARIADOS    ; a8 168
	const CROBAT     ; a9 169
	const CHINCHOU   ; aa 170
	const LANTURN    ; ab 171
	const PICHU      ; ac 172
	const CLEFFA     ; ad 173
	const IGGLYBUFF  ; ae 174
	const TOGEPI     ; af 175
	const TOGETIC    ; b0 176
	const NATU       ; b1 177
	const XATU       ; b2 178
	const MAREEP     ; b3 179
	const FLAAFFY    ; b4 180
	const AMPHAROS   ; b5 181
	const BELLOSSOM  ; b6 182
	const MARILL     ; b7 183
	const AZUMARILL  ; b8 184
	const SUDOWOODO  ; b9 185
	const POLITOED   ; ba 186
	const HOPPIP     ; bb 187
	const SKIPLOOM   ; bc 188
	const JUMPLUFF   ; bd 189
	const AIPOM      ; be 190
	const SUNKERN    ; bf 191
	const SUNFLORA   ; c0 192
	const YANMA      ; c1 193
	const WOOPER     ; c2 194
	const QUAGSIRE   ; c3 195
	const ESPEON     ; c4 196
	const UMBREON    ; c5 197
	const MURKROW    ; c6 198
	const SLOWKING   ; c7 199
	const MISDREAVUS ; c8 200
	const UNOWN      ; c9 201
	const WOBBUFFET  ; ca 202
	const GIRAFARIG  ; cb 203
	const PINECO     ; cc 204
	const FORRETRESS ; cd 205
	const DUNSPARCE  ; ce 206
	const GLIGAR     ; cf 207
	const STEELIX    ; d0 208
	const SNUBBULL   ; d1 209
	const GRANBULL   ; d2 210
	const QWILFISH   ; d3 211
	const SCIZOR     ; d4 212
	const SHUCKLE    ; d5 213
	const HERACROSS  ; d6 214
	const SNEASEL    ; d7 215
	const TEDDIURSA  ; d8 216
	const URSARING   ; d9 217
	const SLUGMA     ; da 218
	const MAGCARGO   ; db 219
	const SWINUB     ; dc 220
	const PILOSWINE  ; dd 221
	const CORSOLA    ; de 222
	const REMORAID   ; df 223
	const OCTILLERY  ; e0 224
	const DELIBIRD   ; e1 225
	const MANTINE    ; e2 226
	const SKARMORY   ; e3 227
	const HOUNDOUR   ; e4 228
	const HOUNDOOM   ; e5 229
	const KINGDRA    ; e6 230
	const PHANPY     ; e7 231
	const DONPHAN    ; e8 232
	const PORYGON2   ; e9 233
	const STANTLER   ; ea 234
	const SMEARGLE   ; eb 235
	const TYROGUE    ; ec 236
	const HITMONTOP  ; ed 237
	const SMOOCHUM   ; ee 238
	const ELEKID     ; ef 239
	const MAGBY      ; f0 240
	const MILTANK    ; f1 241
	const BLISSEY    ; f2 242
	const RAIKOU     ; f3 243
	const ENTEI      ; f4 244
	const SUICUNE    ; f5 245
	const LARVITAR   ; f6 246
	const PUPITAR    ; f7 247
	const TYRANITAR  ; f8 248
	const LUGIA      ; f9 249
	const HO_OH      ; fa 250
	const CELEBI     ; fb 251
	;NUM_POKEMON EQU HOENN
	const TREEKO     ; fc 252
	const GROVYLE    ; fd 253
	const SCEPTILE   ; fe 254
	const EGG        ; ff
	const_skip       ; 100 is unused
	const TORCHIC    ; 101 255
	const COMBUSKEN  ; 102 256
	const BLAZIKEN   ; 103 257
	const MUDKIP     ; 104 258
	const MARSHTOMP  ; 105 259
	const SWAMPERT   ; 106 260
	const AZURILL    ; 12A 298
	const WYNAUT     ; 168 360
	;NUM_POKEMON EQU SINNOH
	const AMBIPOM    ; 1A8 424
	const MISMAGIUS  ; 1AD 429
	const HONCHKROW  ; 1AE 430
	const BONSLY     ; 103
	const MIME_JR_   ; 104
	const HAPPINY    ; 105
	const MUNCHLAX   ; 106
	const MANTYKE    ; 107
	const WEAVILE    ; 108
	const MAGNEZONE  ; 109
	const LICKILICKY ; 10a
	const RHYPERIOR  ; 10b
	const TANGROWTH  ; 10c
	const ELECTIVIRE ; 10d
	const MAGMORTAR  ; 10e
	const TOGEKISS   ; 10f
	const YANMEGA    ; 110
	const LEAFEON    ; 111
	const GLACEON    ; 112
	const GLISCOR    ; 113
	const MAMOSWINE  ; 114
	const PORYGON_Z  ; 115
	const SYLVEON    ; 116
	const PERRSERKER ; 117
	const CURSOLA    ; 118
	const SIRFETCH_D ; 119
	const MR__RIME   ; 11a
	const WYRDEER    ; 11b
	const KLEAVOR    ; 11c
	const URSALUNA   ; 11d
	const SNEASLER   ; 11e
	const OVERQWIL   ; 11f
	const DUDUNSPARCE ; 120
	const FARIGIRAF  ; 121
	const CLODSIRE   ; 122
	const ANNIHILAPE ; 123
DEF NUM_SPECIES EQU const_value - 1 ; 123
DEF NUM_POKEMON EQU NUM_SPECIES - (2 * HIGH(NUM_SPECIES)) ; 121

DEF CANCEL EQU -1

; form values
; related to:
; - CosmeticSpeciesAndFormTable (see data/pokemon/variant_forms.asm)
; - ValidVariantRanges (see data/pokemon/valid_variants.asm)

MACRO ext_const_def
	if _NARG >= 1
		def ext_const_value = \1
	else
		def ext_const_value = 0
	endc
	if _NARG >= 2
		DEF \2 EQU ext_const_value
		redef ext_const_value += const_inc
	endc
ENDM

MACRO ext_const
	const_skip
	DEF \1 EQU ext_const_value
	redef ext_const_value += const_inc
ENDM

DEF NO_FORM EQU 0
DEF PLAIN_FORM EQU 1

DEF FIRST_COSMETIC_FORM_MON EQU const_value ; 124

; unown
	ext_const_def 1, UNOWN_A_FORM    ;     (01)
	ext_const UNOWN_B_FORM           ; 124 (02)
	ext_const UNOWN_C_FORM           ; 125 (03)
	ext_const UNOWN_D_FORM           ; 126 (04)
	ext_const UNOWN_E_FORM           ; 127 (05)
	ext_const UNOWN_F_FORM           ; 128 (06)
	ext_const UNOWN_G_FORM           ; 129 (07)
	ext_const UNOWN_H_FORM           ; 12a (08)
	ext_const UNOWN_I_FORM           ; 12b (09)
	ext_const UNOWN_J_FORM           ; 12c (0a)
	ext_const UNOWN_K_FORM           ; 12d (0b)
	ext_const UNOWN_L_FORM           ; 12e (0c)
	ext_const UNOWN_M_FORM           ; 12f (0d)
	ext_const UNOWN_N_FORM           ; 130 (0e)
	ext_const UNOWN_O_FORM           ; 131 (0f)
	ext_const UNOWN_P_FORM           ; 132 (10)
	ext_const UNOWN_Q_FORM           ; 133 (11)
	ext_const UNOWN_R_FORM           ; 134 (12)
	ext_const UNOWN_S_FORM           ; 135 (13)
	ext_const UNOWN_T_FORM           ; 136 (14)
	ext_const UNOWN_U_FORM           ; 137 (15)
	ext_const UNOWN_V_FORM           ; 138 (16)
	ext_const UNOWN_W_FORM           ; 139 (17)
	ext_const UNOWN_X_FORM           ; 13a (18)
	ext_const UNOWN_Y_FORM           ; 13b (19)
	ext_const UNOWN_Z_FORM           ; 13c (1a)
	ext_const UNOWN_EXCLAMATION_FORM ; 13d (1b)
	ext_const UNOWN_QUESTION_FORM    ; 13e (1c)
DEF NUM_UNOWN EQU ext_const_value - 1

; arbok
	ext_const_def 1, ARBOK_JOHTO_FORM ; (1)
	ext_const ARBOK_KANTO_FORM    ; 13f (2)
	ext_const ARBOK_KOGA_FORM     ; 140 (3)
	ext_const ARBOK_AGATHA_FORM   ; 141 (4)
	ext_const ARBOK_ARIANA_FORM   ; 142 (5)
DEF NUM_ARBOK EQU ext_const_value - 1

; pikachu
	ext_const_def 2
	ext_const PIKACHU_FLY_FORM    ; 143 (2)
	ext_const PIKACHU_SURF_FORM   ; 144 (3)
	ext_const PIKACHU_RED_FORM    ; 145 (4)
	ext_const PIKACHU_YELLOW_FORM ; 146 (5)
	ext_const PIKACHU_SPARK_FORM  ; 147 (6)
DEF NUM_PIKACHU EQU ext_const_value - 1

; pichu
	ext_const_def 2
	ext_const PICHU_SPIKY_EARED_FORM ; 148 (2)

; magikarp
	ext_const_def 2
	ext_const MAGIKARP_SKELLY_FORM    ; 149 (02)
	ext_const MAGIKARP_CALICO1_FORM   ; 14a (03)
	ext_const MAGIKARP_CALICO2_FORM   ; 14b (04)
	ext_const MAGIKARP_CALICO3_FORM   ; 14c (05)
	ext_const MAGIKARP_TWO_TONE_FORM  ; 14d (06)
	ext_const MAGIKARP_ORCA_FORM      ; 14e (07)
	ext_const MAGIKARP_DAPPLES_FORM   ; 14f (08)
	ext_const MAGIKARP_TIGER_FORM     ; 150 (09)
	ext_const MAGIKARP_ZEBRA_FORM     ; 151 (0a)
	ext_const MAGIKARP_STRIPE_FORM    ; 152 (0b)
	ext_const MAGIKARP_BUBBLES_FORM   ; 153 (0c)
	ext_const MAGIKARP_DIAMONDS_FORM  ; 154 (0d)
	ext_const MAGIKARP_PATCHES_FORM   ; 155 (0e)
	ext_const MAGIKARP_FOREHEAD1_FORM ; 156 (0f)
	ext_const MAGIKARP_MASK1_FORM     ; 157 (10)
	ext_const MAGIKARP_FOREHEAD2_FORM ; 158 (11)
	ext_const MAGIKARP_MASK2_FORM     ; 159 (12)
	ext_const MAGIKARP_SAUCY_FORM     ; 15a (13)
	ext_const MAGIKARP_RAINDROP_FORM  ; 15b (14)
DEF NUM_MAGIKARP EQU ext_const_value - 1 ; 14

DEF NUM_COSMETIC_FORMS EQU const_value - FIRST_COSMETIC_FORM_MON ; 38

DEF FIRST_VARIANT_FORM_MON EQU const_value ; 15c

; gyarados
	ext_const_def NUM_MAGIKARP + 1
	ext_const GYARADOS_RED_FORM ; 15c (15)

; mewtwo
	ext_const_def 2
	ext_const MEWTWO_ARMORED_FORM ; 15d (2)

; dudunsparce
	ext_const_def 1, DUDUNSPARCE_TWO_SEGMENT_FORM ;     (1)
	ext_const DUDUNSPARCE_THREE_SEGMENT_FORM      ; 15e (2)

; alolan forms
DEF ALOLAN_FORM EQU 2
	const_skip ; 15f rattata
	const_skip ; 160 raticate
	const_skip ; 161 raichu
	const_skip ; 162 sandshrew
	const_skip ; 163 sandslash
	const_skip ; 164 vulpix
	const_skip ; 165 ninetales
	const_skip ; 166 diglett
	const_skip ; 167 dugtrio
	const_skip ; 168 meowth
	const_skip ; 169 persian
	const_skip ; 16a geodude
	const_skip ; 16b graveler
	const_skip ; 16c golem
	const_skip ; 16d grimer
	const_skip ; 16e muk
	const_skip ; 16f exeggutor
	const_skip ; 170 marowak

; galarian forms
DEF GALARIAN_FORM EQU 3
	const_skip ; 171 meowth
	const_skip ; 172 ponyta
	const_skip ; 173 rapidash
	const_skip ; 174 slowpoke
	const_skip ; 175 slowbro
	const_skip ; 176 farfetch'd
	const_skip ; 177 weezing
	const_skip ; 178 mr. mime
	const_skip ; 179 articuno
	const_skip ; 17a zapdos
	const_skip ; 17b moltres
	const_skip ; 17c slowking
	const_skip ; 17d corsola

; hisuian forms
DEF HISUIAN_FORM EQU 4
	const_skip ; 17e growlithe
	const_skip ; 17f arcanine
	const_skip ; 180 voltorb
	const_skip ; 181 electrode
	const_skip ; 182 typhlosion
	const_skip ; 183 qwilfish
	const_skip ; 184 sneasel

; paldean forms
DEF PALDEAN_FORM EQU 5
	const_skip ; 185 wooper
	const_skip ; 186 tauros

; tauros
	ext_const_def 2
	ext_const TAUROS_PALDEAN_FIRE_FORM  ; 187 (2)
	ext_const TAUROS_PALDEAN_WATER_FORM ; 188 (3)

DEF NUM_VARIANT_FORMS EQU const_value - FIRST_VARIANT_FORM_MON ; 2c

; these constants include EGG and a dummy entry as species
DEF NUM_UNIQUE_POKEMON EQU const_value - 1 ; 188
DEF NUM_EXT_POKEMON EQU NUM_UNIQUE_POKEMON - NUM_COSMETIC_FORMS ; 14f
