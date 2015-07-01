--Lord Korzin is for the Greenmist quest and administers the third quest in the line.

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("What is it you seek? [Eternal suffering]?");
	elseif(e.message:findi("eternal suffering")) then --Test of Suffering (Greenmist Quest 3/8)
		e.self:Say("Then follow the words of Cazic-Thule and may his blessed curses rain upon your soul as they shall on all of his faithful servants. Were you [sent] to me by Gikzic?");
	elseif(e.message:findi("sent")) then --Test of Suffering (Greenmist Quest 3/8)
		e.self:Say("Then you must be the squire who found the ancient tome, 'The Origins of Pain'. I can use a talented crusader such as yourself. In my dreams, Cazic-Thule has spoken to me. He instructed me to seek out the 'Skull of Torture' which was last reported to be within the torture tower of the ancient Lord of Pain, Kurn. Will you [accept the calling]?");
	elseif(e.message:findi("accept the calling")) then --Test of Suffering (Greenmist Quest 3/8)
		e.self:Say("As if you had a choice. Seek out the tower of Kurn and find the Skull of Torture. You should be able to easily recognize this skull as it glows with the power of Cazic Thule. Return it to me with your squire's khukri and I shall reward you with the knight's khukri. Go at once.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 12401, item2 = 5122})) then	--Test of Suffering (Greenmist Quest 3/8)
		e.self:Say("Excellent work! You are no squire. You are now a knight of the crusaders. Your next step shall be zealot. And every zealot wields a magical khukri.");
		e.other:SummonItem(5123);
		e.other:Faction(62,20);
		e.other:Faction(193,10);
		e.other:AddEXP(1500);
		e.other:GiveCash(0,0,15,0);
		e.other:Ding();
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

--Submitted by: Jim Mills
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
