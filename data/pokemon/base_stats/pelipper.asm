	db  45,  30,  35,  45,  20,  20 ; 195 BST
	;   hp  atk  def  spe  sat  sdf

	db WATER, FLYING ; type
	db 255 ; catch rate
	db 53 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_FAST ; gender ratio, step cycles to hatch

	abilities_for PELIPPER, KEEN_EYE, HYDRATION, RAIN_DISH
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	ev_yield 1 HP

	; tm/hm learnset
	tmhm
	; end
