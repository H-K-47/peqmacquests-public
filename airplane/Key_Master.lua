function event_signal(e)
	local qglobals = eq.get_qglobals();

	if(e.signal == 1) then -- azarack
		if(eq.get_entity_list():IsMobSpawnedByNpcTypeID(71111) == false and eq.get_entity_list():IsMobSpawnedByNpcTypeID(71031) == false) then
			eq.spawn2(71059,0,0,-602.2,-254.4,-333.5,201.5);
		end
	end
	if(e.signal == 2) then
		if(qglobals["keeper"] == nil) then
			-- eq.set_timer("13",300000); what is this referred to?
			eq.set_global("keeper","1",3,"H4");
			-- supposed to be 60-85 minute timer
			eq.set_timer("soul",math.random(1920000) + 2880000);
		end
	end
end

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hello there, brave traveller. I sell keys that take you to other islands in this here Plane of Sky. My prices are the best around. Heh, heh.");
	end
end

function event_timer(e)
	if(e.timer == "soul") then
		eq.unique_spawn(71075,0,0,-996.3,910.5,192.3,18.0);
		eq.stop_timer("soul");
	end
end

-- END of FILE Zone:airplane  ID:2977 -- Key_Master