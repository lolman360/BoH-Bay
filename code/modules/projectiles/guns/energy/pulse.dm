/obj/item/weapon/gun/energy/pulse_rifle
	name = "NT PR12A Rifle"
	desc = "A weapon that uses advanced pulse-based beam generation technology to emit powerful laser blasts. Because of its complexity and cost, it is rarely seen in use except by specialists."
	icon = 'icons/obj/guns/pulse_rifle.dmi'
	icon_state = "pulse"
	item_state = "pulse"
	slot_flags = SLOT_BACK
	force = 12
	projectile_type = /obj/item/projectile/beam/pulse/heavy
	max_shots = 36
	w_class = ITEM_SIZE_HUGE
	one_hand_penalty= 6
	multi_aim = 1
	burst_delay = 3
	burst = 3
	move_delay = 4
	wielded_item_state = "gun_wielded"
	bulk = GUN_BULK_RIFLE

/obj/item/weapon/gun/energy/pulse_rifle/carbine
	name = "NT PR12C Carbine"
	desc = "A weapon that uses advanced pulse-based beam generation technology to emit powerful laser blasts. Less bulky than the full-sized rifle."
	icon = 'icons/obj/guns/pulse_carbine.dmi'
	icon_state = "pulse_carbine"
	slot_flags = SLOT_BACK|SLOT_BELT
	force = 8
	projectile_type = /obj/item/projectile/beam/pulse/mid
	max_shots = 24
	w_class = ITEM_SIZE_LARGE
	one_hand_penalty= 3
	burst_delay = 2
	move_delay = 2
	bulk = GUN_BULK_RIFLE - 3

/obj/item/weapon/gun/energy/pulse_rifle/pistol
	name = "NT PP2A Sidearm"
	desc = "A weapon that uses advanced pulse-based beam generation technology to emit powerful laser blasts. Even smaller than the carbine."
	icon = 'icons/obj/guns/pulse_pistol.dmi'
	icon_state = "pulse_pistol"
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	force = 6
	projectile_type = /obj/item/projectile/beam/pulse
	max_shots = 21
	w_class = ITEM_SIZE_NORMAL
	one_hand_penalty=1 //a bit heavy
	burst_delay = 1
	move_delay = 1
	wielded_item_state = null
	bulk = 0

/obj/item/weapon/gun/energy/pulse_rifle/mounted
	self_recharge = 1
	use_external_power = 1
	has_safety = FALSE

/obj/item/weapon/gun/energy/pulse_rifle/destroyer
	name = "NT PR12B Destroyer"
	desc = "A heavy-duty, pulse-based energy weapon. Capable of turning pretty much anyone on the recieving end into a past-tense!"
	cell_type = /obj/item/weapon/cell/super
	fire_delay = 25
	projectile_type=/obj/item/projectile/beam/pulse/destroy
	charge_cost= 40

/obj/item/weapon/gun/energy/pulse_rifle/destroyer/attack_self(mob/living/user as mob)
	to_chat(user, "<span class='warning'>[src.name] doesn't need a selector switch. Hell, its safety just has  'PUSSYMODE' scratched into it!</span>")

/obj/item/weapon/gun/energy/pulse_rifle/skrell
	name = "VT-3 carbine"
	desc = "The Vuu'Xqu*ix T-3, known as 'VT-3' by SolGov. Rarely seen out in the wild by anyone outside of a Skrellian SDTF."
	icon = 'icons/obj/guns/skrell_carbine.dmi'
	icon_state = "skrell_carbine"
	item_state = "skrell_carbine"
	slot_flags = SLOT_BACK|SLOT_BELT
	origin_tech = list(TECH_COMBAT = 10, TECH_MAGNET = 7)
	self_recharge = 1
	move_delay = 2
	projectile_type=/obj/item/projectile/beam/pulse/skrell/single
	charge_cost=120
	burst=1
	burst_delay=null
	wielded_item_state = "skrell_carbine-wielded"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun/heavy, charge_cost=40, burst=1, burst_delay=null),
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/pulse/skrell/single, charge_cost=120, burst=1, burst_delay=null),
		list(mode_name="double", projectile_type=/obj/item/projectile/beam/pulse/skrell/heavy, charge_cost=55, burst=2, burst_delay=3),
		)

//SSV Ions
/obj/item/weapon/gun/energy/pulse_rifle/skrell/lance
	name = "WK-53 Energy Lance"
	desc = "The Wuu'tap Kal'xuum 53 or WK-53 is a man portable anti-armor weapon designed for longer range operations, with a potent, secondary ion discharge."
	icon = 'icons/boh/obj/guns/ion.dmi'
	icon_state = "ionskrifle"
	item_state = "ionskrifle"
	one_hand_penalty = 6
	accuracy = -4
	bulk = 8
	scoped_accuracy = 9
	recharge_time = 20
	fire_delay = 30
	slowdown_held = 1
	slowdown_worn = 1
	screen_shake = 0 //screenshake breaks the scope.
	scope_zoom = 2
	charge_cost = 240
	max_shots = 6
	projectile_type = /obj/item/projectile/beam/pulse/skrell/single/lance
	wielded_item_state = "ionskrifle_wielded"
	item_icons = list(
		slot_l_hand_str = 'icons/boh/mob/items/lefthand_guns.dmi',
		slot_r_hand_str = 'icons/boh/mob/items/righthand_guns.dmi',
		slot_back_str = 'icons/boh/mob/items/onmob_back.dmi',
	)
	firemodes = list(
		list(mode_name="pulse", projectile_type=/obj/item/projectile/beam/pulse/skrell/single/lance, charge_cost=240, burst=1, burst_delay=null),
		list(mode_name="ion", projectile_type=/obj/item/projectile/ion/skrell, charge_cost=720, burst=1, burst_delay=null),
	)