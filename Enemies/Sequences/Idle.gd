extends "res://Enemies/AttackSequence.gd"

func _init().(["idle"]):
  pass

func get_next_sequence():
  var next = ["Idle", "Left", "Left", "Paradiddle"]
  return next[randi() % next.size()]
