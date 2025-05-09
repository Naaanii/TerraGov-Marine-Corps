// Surgery Tools
/obj/item/tool/surgery
	icon = 'icons/obj/items/surgery_tools.dmi'
	worn_icon_list = list(
		slot_l_hand_str = 'icons/mob/inhands/equipment/surgery_left.dmi',
		slot_r_hand_str = 'icons/mob/inhands/equipment/surgery_right.dmi',
	)
	attack_speed = 11 //Used to be 4 which made them attack insanely fast.

/obj/item/tool/surgery/retractor
	name = "retractor"
	desc = "Retracts stuff."
	icon_state = "retractor"
	atom_flags = CONDUCT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/tool/surgery/hemostat
	name = "hemostat"
	desc = "You think you have seen this before."
	icon_state = "hemostat"
	atom_flags = CONDUCT
	w_class = WEIGHT_CLASS_SMALL
	attack_verb = list("attacks", "pinches")

/obj/item/tool/surgery/cautery
	name = "cautery"
	desc = "This stops bleeding."
	icon_state = "cautery"
	atom_flags = CONDUCT
	w_class = WEIGHT_CLASS_TINY
	attack_verb = list("burns")

/obj/item/tool/surgery/surgicaldrill
	name = "surgical drill"
	desc = "You can drill using this item. You dig?"
	icon_state = "drill"
	hitsound = 'sound/weapons/circsawhit.ogg'
	atom_flags = CONDUCT
	force = 15
	w_class = WEIGHT_CLASS_SMALL
	attack_verb = list("drills")

/obj/item/tool/surgery/surgicaldrill/suicide_act(mob/user)
	user.visible_message(span_danger("[user] presses the [name] to [user.p_their()] [pick("temple","chest")] and activates it! It looks like [user.p_theyre()] trying to commit suicide!"))
	return (BRUTELOSS)

/obj/item/tool/surgery/scalpel
	name = "scalpel"
	desc = "Cut, cut, and once more cut."
	icon_state = "scalpel"
	atom_flags = CONDUCT
	force = 20
	sharp = IS_SHARP_ITEM_ACCURATE
	edge = 1
	w_class = WEIGHT_CLASS_TINY
	throwforce = 5
	throw_speed = 3
	throw_range = 5
	attack_verb = list("attacks", "slashes", "stabs", "slices", "tears", "rips", "dices", "cuts")

/obj/item/tool/surgery/scalpel/suicide_act(mob/user)
	user.visible_message(pick(span_danger("[user] is slitting [user.p_their()] wrists with the [name]! It looks like [user.p_theyre()] trying to commit suicide."), \
							span_danger("[user] is slitting [user.p_their()] throat with the [name]! It looks like [user.p_theyre()] trying to commit suicide."), \
							span_danger("[user] is slitting [user.p_their()] stomach open with the [name]! It looks like [user.p_theyre()] trying to commit seppuku.")))
	return (BRUTELOSS)

/*
* Researchable Scalpels
*/
/obj/item/tool/surgery/scalpel/laser3
	name = "laser scalpel"
	desc = "A scalpel augmented with a directed laser, for more precise cutting without blood entering the field.  This one looks to be the pinnacle of precision energy cutlery!"
	icon_state = "scalpel_laser3_on"
	damtype = BURN
	force = 15

/obj/item/tool/surgery/scalpel/manager
	name = "incision management system"
	desc = "A true extension of the surgeon's body, this marvel instantly and completely prepares an incision allowing for the immediate commencement of therapeutic steps."
	icon_state = "scalpel_manager_on"
	force = 7.5

/*
* Circular Saw
*/
/obj/item/tool/surgery/circular_saw
	name = "circular saw"
	desc = "For heavy duty cutting."
	icon_state = "saw"
	hitsound = 'sound/weapons/circsawhit.ogg'
	atom_flags = CONDUCT
	force = 30
	w_class = WEIGHT_CLASS_SMALL
	throwforce = 9
	throw_speed = 3
	throw_range = 5
	attack_verb = list("attacks", "slashes", "saws", "cuts")
	sharp = IS_SHARP_ITEM_BIG
	edge = 1

//misc, formerly from code/defines/weapons.dm
/obj/item/tool/surgery/bonegel
	name = "bone gel"
	icon_state = "bone-gel"
	force = 0
	w_class = WEIGHT_CLASS_SMALL
	throwforce = 1

/obj/item/tool/surgery/FixOVein
	name = "FixOVein"
	icon_state = "fixovein"
	force = 0
	throwforce = 1
	w_class = WEIGHT_CLASS_SMALL
	var/usage_amount = 10

/obj/item/tool/surgery/bonesetter
	name = "bone setter"
	icon_state = "bonesetter"
	force = 8
	throwforce = 9
	throw_speed = 3
	throw_range = 5
	w_class = WEIGHT_CLASS_SMALL
	attack_verb = list("attacks", "hits", "bludgeons")

/obj/item/tool/surgery/suture
	name = "surgical suture"
	icon_state = "suture"
	force = 3
	throwforce = 0
	w_class = WEIGHT_CLASS_SMALL
	attack_verb = list("needles", "sews", "stabs")

/obj/item/tool/surgery/surgical_membrane
	name = "surgical membrane"
	icon_state = "surgical_membrane"
	force = 0
	throwforce = 0
	w_class = WEIGHT_CLASS_SMALL
