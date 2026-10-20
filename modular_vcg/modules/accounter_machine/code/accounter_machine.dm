/obj/structure/accounter_machine
	abstract_type = /obj/structure/accounter_machine
	name = "accounter machine"
	desc = "A counter for partaking in wretched capitalism. Takes cash or card."
	icon = 'modular_darkpack/modules/retail/icons/vendors_shops.dmi'
	icon_state = "register"
	density = FALSE
	anchored = TRUE
	anchored_tabletop_offset = 6

	// how much do cargo\supply get money(via % taxing) by default
	var/fee_rate = 0

	// how much money at the machine right now
	var/account_machine_balance = 0

/obj/structure/retail/Initialize(mapload)

/obj/structure/accounter_machine/proc/set_fee_rate()
	var/list/options = list("Set the Fee", "Withdraw money")
	var/choice = tgui_alert(src, "", options)
	var/fee_setted = tgui_input_number(src, "Do you wish to set a money fee for any purchasement, which will be gathered at this machine? This allows to set a % fee to any buy operation, and you can choose it anytime!", "Fee input(50 for 50%)", default = 0, max_value = 100)
	fee_rate = fee_setted
