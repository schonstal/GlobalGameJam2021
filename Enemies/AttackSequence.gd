var sequence = []
var next_sequence setget ,get_next_sequence
var next_action setget ,get_next_action
var index = 0

func _init(move_sequence:Array):
  sequence = move_sequence

func _iter_init(_arg):
  index = 0
  return index < sequence.size()

func _iter_next(_arg):
  index += 1
  return index < sequence.size()

func _iter_get(_arg):
  return sequence[index]

func get_next_sequence():
  return "Idle"

func get_next_action():
  if index + 1 < sequence.size():
    return sequence[index + 1]
  else:
    return null

