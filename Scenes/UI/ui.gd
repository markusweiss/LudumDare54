extends Node

var startTimer = true
var timerTime = 0
var extraPoints = 0

func _physics_process(delta):
	if (startTimer):
		timerTime += delta * 10
		var baseScore = int(round(timerTime)) * 98
		#var add = randi_range(1,100)
		if (Global.magnet):
			extraPoints += 10
			
		var all = baseScore + extraPoints
		$MarginContainer/MarginContainer/HBoxContainer/ScoreValue.text = str(all)
