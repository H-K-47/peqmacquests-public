function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Why, hello there!!  What is a powerful adventurer such as yourself doing in a dive like this?  I hope it is buying little ol' me a drink...?");
	end
end

function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13038,item2= 13038,item3 = 13038,item4 = 13038})) then
		e.self:Say("Mmmm.. <Burp!!> Thank you. Here is a little dona.. <Hic!!> dona.. <Hic!!> mmmoney for your generosity.");
		e.other:SendSound();
		e.other:SummonItem(13291); -- donation 2
		e.other:Faction(217,1,0); -- Merchants of Qeynos
		e.other:Faction(33,-1,0); -- Circle of Unseen Hand
		e.other:Faction(9,1,0); -- Antonius Bayle
		e.other:Faction(47,1,0); -- Coalition of Tradefolk
		e.other:Faction(135,1,0); -- Guard of Qeynos
		e.other:AddEXP(200);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end