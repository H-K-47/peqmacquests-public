-- Snowbeast

function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 6981}, 0)) then -- Kejekan Smithy Hammer
		e.self:Say("Freeing long imprisoned spirits is a noble cause. Your hammer has our blessing to free the souls from their crystalline shadow tombs.");
		e.other:QuestReward(e.self,0,0,0,0,6979,1000); -- Soulforge Hammer
	end
	item_lib.return_items(e.self, e.other, e.trade)
end