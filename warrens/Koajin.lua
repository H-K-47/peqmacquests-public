function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Emote("slowly looks up at you, his eyes glazed in exhaustion. Obviously the kobolds have worked him near to the point of death. You notice he is strong and his paws are scarred here and there. He must be some sort of craftsman. After gazing at you a few moments he realizes you are not a kobold and says, 'Hurry and leave this place, " .. e.other:GetRace() .. ". Or you'll end up sharing this cell with us and wishing death upon yourself' ");
	end
end