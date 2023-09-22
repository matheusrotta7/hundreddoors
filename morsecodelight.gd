extends OmniLight


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var morse_array = ["--...", "..---", "-----", "....-"]
export var unit = 0.5
export var break_size = 5
export var short_size = 1
export var long_size = 3
var acc_time = 0
var unit_counter = 0
var cur_number = 0
var cur_dot = 0
var on_break = false
var break_counter = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("delta: " + str(delta))
	#password will be 7204
	acc_time = acc_time + delta
	
	if (acc_time >= unit):
		acc_time = 0
		if (on_break):
			self.hide()
			break_counter = break_counter + 1
			if (break_counter == break_size):
				break_counter = 0
				on_break = false
		else:
			if (cur_number <= 3):
				if (cur_dot <= 4):
					var dot = morse_array[cur_number][cur_dot]
					if (dot == "."):
						if (unit_counter == 0):
							self.show()
							unit_counter = 1
						elif (unit_counter == 1):
							go_to_next_dot()
							unit_counter = 0
							self.hide()
					elif (dot == "-"):
						if (unit_counter < 3):
							self.show()
							unit_counter = unit_counter + 1
						elif (unit_counter == 3):
							go_to_next_dot()
							unit_counter = 0
							self.hide()

func go_to_next_dot():
	cur_dot = cur_dot + 1
	if (cur_dot == 5):
		on_break = true
		cur_dot = 0
		cur_number = cur_number + 1
		if (cur_number == 4):
			cur_number = 0
			cur_dot = 0
