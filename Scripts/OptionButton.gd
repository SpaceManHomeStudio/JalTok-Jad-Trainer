extends OptionButton

var key = ShortCut.new()

func _ready():
	key.set_shortcut(InputMap.get_action_list("F2")[0])
	$"../../../TopTab/PrayerButton".set_shortcut(key)
	
	select(Globals.prayerFkey)
	
	if selected == 0:
		key.set_shortcut(InputMap.get_action_list("F1")[0])
		$"../../../TopTab/PrayerButton".set_shortcut(key)
	if selected == 1:
		key.set_shortcut(InputMap.get_action_list("F2")[0])
		$"../../../TopTab/PrayerButton".set_shortcut(key)
	if selected == 2:
		key.set_shortcut(InputMap.get_action_list("F3")[0])
		$"../../../TopTab/PrayerButton".set_shortcut(key)
	if selected == 3:
		key.set_shortcut(InputMap.get_action_list("F4")[0])
		$"../../../TopTab/PrayerButton".set_shortcut(key)

func _on_OptionButton2_item_selected(_index):
	if _index == 0:
		Globals.prayerFkey = 0
		Globals.setDefaults = false
		key.set_shortcut(InputMap.get_action_list("F1")[0])
		$"../../../TopTab/PrayerButton".set_shortcut(key)
	if _index == 1:
		Globals.prayerFkey = 1
		Globals.setDefaults = false
		key.set_shortcut(InputMap.get_action_list("F2")[0])
		$"../../../TopTab/PrayerButton".set_shortcut(key)
	if _index == 2:
		Globals.prayerFkey = 2
		Globals.setDefaults = false
		key.set_shortcut(InputMap.get_action_list("F3")[0])
		$"../../../TopTab/PrayerButton".set_shortcut(key)
	if _index == 3:
		Globals.prayerFkey = 3
		Globals.setDefaults = false
		key.set_shortcut(InputMap.get_action_list("F4")[0])
		$"../../../TopTab/PrayerButton".set_shortcut(key)
