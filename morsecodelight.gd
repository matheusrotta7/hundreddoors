extends OmniLight


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var morse_array = ["--...", "..---", "-----", "....-"]
export var unit = 0.5
var acc_time = 0
var unit_counter = 0
var cur_number = 0
var cur_dot = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("delta: " + str(delta))
	#password will be 7204
	acc_time = acc_time + delta
	if (acc_time >= unit):
		unit_counter = unit_counter + 1
		if (cur_number <= 3):
			if (cur_dot <= 4):
				var dot = morse_array[cur_number][cur_dot]
				if (dot == "."):
					if (unit_counter >= 1):
						unit_counter = unit_counter - 1
						
				
				

