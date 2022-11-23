extends Node2D

var PlayerScore = 0
var opponentScore = 0

func _process(delta):
	$MarcadorPlayer.text = str(PlayerScore)
	$MarcadorOponente.text = str(opponentScore)

func _restart_game():
	$BALL.is_moving = false
	$BALL.direction = Vector2.ZERO
	$BALL.position = Vector2(960, 540)
	$BALL.reset_ball()


func _on_arcoplayer_body_entered(body):
	opponentScore += 1 
	_restart_game()


func _on_arcooponente_body_entered(body):
	PlayerScore += 1 
	_restart_game()
