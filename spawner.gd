# AsteroidSpawner.gd
extends Node2D

var AsteroidScene = preload("res://asteroid.tscn")  # correct path!

var asteroid_count = 5

func _ready():
	randomize()  # important! seeds RNG once
	for i in range(asteroid_count):
		var asteroid = AsteroidScene.instantiate()
		add_child(asteroid)  # each asteroid is a separate node
