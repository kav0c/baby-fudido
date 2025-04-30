extends Sprite2D

const speed = 60

var direction = 1

@onready var princesa: Sprite2D = $"."
@onready var ray_cast_e: RayCast2D = $RayCast_e
@onready var ray_cast_d: RayCast2D = $RayCast_d



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_d.is_colliding():
		direction = -1
		princesa.flip_h = false
	if ray_cast_e.is_colliding():
		direction = 1
		princesa.flip_h = true
	
	position.x += direction * speed * delta 
