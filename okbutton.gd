extends StaticBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var password = "3578"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func interact(relate):
	var input_password_label = get_node("../../PasswordScreen/InputPassword")
	var password_str : String = input_password_label.get_text()
	if (password_str == password):
		var door = get_node("../../")
		if (door.has_method("opendoor")):
			door.opendoor()
	else:
		input_password_label.set_text("")
		
