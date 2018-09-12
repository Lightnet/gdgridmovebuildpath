extends Node

var tilemap = null
var gpos

func _ready():
	tilemap = get_node("../TileMap")
	#print(tilemap)
	pass

func _input(event):
	if event.is_action_pressed('build'):
		gpos = get_viewport().get_mouse_position()
		#print(gpos)
		gpos.x = floor(gpos.x/64)
		gpos.y = floor(gpos.y/64)
		tilemap.set_cell(gpos.x,gpos.y,0)#add tile
		tilemap.updatepathtile()#update path
		pass
		
	if event.is_action_pressed('destroy'):
		gpos = get_viewport().get_mouse_position()
		gpos.x = floor(gpos.x/64)
		gpos.y = floor(gpos.y/64)
		tilemap.set_cell(gpos.x,gpos.y,-1)#remove tile
		tilemap.updatepathtile()#update path
		pass