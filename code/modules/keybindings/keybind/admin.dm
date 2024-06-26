/datum/keybinding/admin
	category = CATEGORY_ADMIN
	weight = WEIGHT_ADMIN

/datum/keybinding/admin/can_use(client/user)
	return user.holder ? TRUE : FALSE

/datum/keybinding/admin/is_visible(client/user)
	return !!user.holder

/datum/keybinding/admin/admin_say
	hotkey_keys = list("F5")
	name = "admin_say"
	full_name = "Admin say"
	description = "Talk with other admins."

/datum/keybinding/admin/admin_say/down(client/user)
	user.get_admin_say()
	return TRUE

/datum/keybinding/admin/admin_ghost
	hotkey_keys = list()
	name = "admin_ghost"
	full_name = "Aghost"
	description = "Go ghost"

/datum/keybinding/admin/admin_ghost/down(client/user)
	user.admin_ghost()
	return TRUE

/datum/keybinding/admin/player_panel
	hotkey_keys = list("F6")
	name = "player_panel"
	full_name = "Player Panel New"
	description = "Opens up the new player panel"

/datum/keybinding/admin/player_panel/down(client/user)
	user.holder.player_panel()
	return TRUE

/datum/keybinding/admin/toggle_buildmode_self
	hotkey_keys = list()
	name = "toggle_buildmode_self"
	full_name = "Toggle Buildmode Self"
	description = "Toggles buildmode"

/datum/keybinding/admin/toggle_buildmode_self/down(client/user)
	user.togglebuildmodeself()
	return TRUE

/datum/keybinding/admin/stealthmode
	hotkey_keys = list()
	name = "stealth_mode"
	full_name = "Stealth mode"
	description = "Enters stealth mode"

/datum/keybinding/admin/stealthmode/down(client/user)
	user.stealth()
	return TRUE

/datum/keybinding/admin/invisimin
	hotkey_keys = list("F8")
	name = "invisimin"
	full_name = "Admin invisibility"
	description = "Toggles ghost-like invisibility (Don't abuse this)"

/datum/keybinding/admin/invisimin/down(client/user)
	user.invisimin()
	return TRUE

/datum/keybinding/admin/admin_pm_mob
	hotkey_keys = list("F7")
	name = "admin_pm_mob"
	full_name = "Admin PM Mob"
	description = "Admin PMs a mob from the player list"

/datum/keybinding/admin/admin_pm_mob/down(client/user)
	user.cmd_admin_pm_panel()
	return TRUE

/datum/keybinding/admin/deadsay
	hotkey_keys = list()
	name = "dsay"
	full_name = "deadsay"
	description = "Allows you to send a message to dead chat"

/datum/keybinding/admin/deadsay/down(client/user)
	user.get_dead_say()
	return TRUE

/datum/keybinding/admin/deadmin
	hotkey_keys = list()
	name = "deadmin"
	full_name = "Deadmin"
	description = "Shed your admin powers"

/datum/keybinding/admin/deadmin/down(client/user)
	user.deadmin_self()
	return TRUE

/datum/keybinding/admin/readmin
	hotkey_keys = list()
	name = "readmin"
	full_name = "Readmin"
	description = "Regain your admin powers"

/datum/keybinding/admin/readmin/down(client/user)
	user.readmin_self()
	return TRUE
