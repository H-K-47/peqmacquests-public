function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Oh, hello! Welcome to Surefall Glade. Are you planning a trip to Qeynos? If you are, I could use some help finding my [brother].");
	elseif(e.message:findi("brother")) then
		e.self:Say("My brother Ronn went to Qeynos several days ago for supplies. He was just going to Sneed's and back. But he hasn't been seen since. I can't leave the Glade because the Sabertooths could attack at any minute. Could you please find out what happened to my brother? Ask Sneed about [Ronn Castekin].");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18014})) then
		e.self:Say("Oh Tunare why!?!? Those foul Bloodsabers will pay for my brother's death!! Here. You have given us valuable information about a new threat to our homes. Take this a token of our appreciation.");
		e.other:Ding();
		e.other:Faction(265,5,0); -- Protectors of Pine
		e.other:Faction(159,1,0); -- Jaggedpine Treefolk
		e.other:Faction(279,-1,0); -- Sabertooths of Blackburrow
		e.other:Faction(135,1,0); -- Guards of Qeynos
		e.other:AddEXP(1000);
	end
	item_lib.return_items(e.self, e.other, e.trade);
end
