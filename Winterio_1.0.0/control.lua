
function CheckTile ( tile )

	local valid = { "water","water-green","deepwater","deepwater-green" }
	
	for k, v in pairs( valid ) do
	
		if v == tile then
		
			return true
		
		end
	
	end

	return false
	
end


function PlacePump ( event )

	local ent = event.created_entity
	
	if ent.name == "snow-pump" then

		--game.player.print( ent.surface.get_tile( ent.position.x, ent.position.y ).name )
		
		local e = ent
		local s = e.surface
		local X = e.position.x
		local Y = e.position.y
		local pump = s.create_entity{name = "offshore-pump", position = {X,Y}, force= game.forces.player, direction = ent.direction}
		pump.destructible = true
		
		ent.destroy()
	
		if CheckTile( s.get_tile( X, Y ).name ) == true then
	
			pump.active = true
			
		else
		
			pump.active = false
		
		end
	
	end


end

script.on_event( defines.events.on_built_entity, PlacePump )
script.on_event( defines.events.on_robot_built_entity, PlacePump )