extends StaticBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var number = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func interact(relate):
	print("Numpad" + str(number))
	var number_str : String
	number_str = str(number)
	
	var input_password = get_node("../../PasswordScreen/InputPassword")
	
	var cur_str : String 
	cur_str = input_password.get_text()
	print(cur_str)
	if (cur_str.length() < 4):
		print("is  smaller than 4")
		var new_str = cur_str + number_str
		input_password.set_text(new_str)
	
	
	
