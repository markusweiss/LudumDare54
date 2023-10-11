extends Node

var startTimer = true
var timerTime = 0
var extraPoints = 0

func _physics_process(delta):
	if (startTimer):
		timerTime += delta * 10
		var baseScore = int(round(timerTime)) * 98
		if (Global.magnet):
			extraPoints += 10
			
		Global.scoreTogether = baseScore + extraPoints
		$MarginContainer/MarginContainer/HBoxContainer/ScoreValue.text = str(Global.scoreTogether)

		$MarginContainer/MarginContainer/EmpBar/ProgressBar.value = Global.empPower
		
		$MarginContainer/MarginContainer/EmpMega/ProgressBar.value = Global.empMegaBeam
