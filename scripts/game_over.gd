extends Area2D
@onready var label: Label = $Label
@onready var timer: Timer = $Timer
#@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _on_body_entered(body: Node2D) -> void:
	print("Body Entered: ", body.name)
	label.text = "You Won! Thank You for Playing!"
	#animated_sprite_2d.play("win")
	timer.start()
	#Engine.time_scale = 0.5


func _on_timer_timeout() -> void:
	#Engine.time_scale = 1
	label.text = ""
	get_tree().reload_current_scene()
	
