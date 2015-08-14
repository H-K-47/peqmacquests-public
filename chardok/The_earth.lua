function event_spawn(e)
	local xloc = e.self:GetX();
	local yloc = e.self:GetY();
	local zloc = e.self:GetZ();
	eq.set_proximity(xloc - 25, xloc + 25, yloc - 25, yloc + 25, zloc - 3, zloc + 6);
end

function event_enter(e)
	e.self:Emote("at your feet erupts!");
	eq.spawn2(eq.ChooseRandom(103158,103158,103159),0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),e.self:GetY(),e.self:GetHeading());
	eq.depop_with_timer();
end