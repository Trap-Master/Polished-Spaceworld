	db 115,  45,  20,  20,  45,  25 ; 270 BST
	;   hp  atk  def  spe  sat  sdf

	db NORMAL, FAIRY ; type
	db 170 ; catch rate
	db 76 ; base exp
	db ORAN_BERRY, ORAN_BERRY ; held items
	dn GENDER_F75, HATCH_FASTER ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for JIGGLYPUFF, CUTE_CHARM, COMPETITIVE, FRISK
else
	abilities_for JIGGLYPUFF, CUTE_CHARM, COMPETITIVE, SOUNDPROOF
endc
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	ev_yield 2 HP

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, SOLAR_BEAM, THUNDERBOLT, THUNDER, RETURN, DIG, PSYCHIC, SHADOW_BALL, ROCK_SMASH, DOUBLE_TEAM, REFLECT, FLAMETHROWER, FIRE_BLAST, SUBSTITUTE, FACADE, REST, ATTRACT, DAZZLINGLEAM, WILD_CHARGE, DRAIN_PUNCH, WATER_PULSE, FLASH, THUNDER_WAVE, GYRO_BALL, STRENGTH, BODY_SLAM, COUNTER, DEFENSE_CURL, DOUBLE_EDGE, DREAM_EATER, ENDURE, FIRE_PUNCH, HEADBUTT, HYPER_VOICE, ICE_PUNCH, ICY_WIND, KNOCK_OFF, ROLLOUT, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end