extends Node2D

var vehicles = []
var speeds = [100, 150, 200]  # Adjust the speeds as needed for each vehicle type

func _ready():
	for i in range(3):
		var vehicle_scene = load("res://VehicleType" + str(i) + ".tscn")
		
		
		add_child(vehicle_scene)
		vehicles.append(vehicle_scene)

func _process(delta):
	for vehicle in vehicles:
		vehicle.position += vehicle.velocity * delta

		# Check if the vehicle has gone out of bounds
		if vehicle.position.x < 0:
			vehicle.position.x = 800  # Move the vehicle to the right side
		elif vehicle.position.x > 800:
			vehicle.position.x = 0  # Move the vehicle to the left side
