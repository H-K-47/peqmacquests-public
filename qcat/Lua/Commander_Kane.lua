function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say('Hello. I am the guild master.');
	end
end

function event_trade(e)
	local item_lib = require("items");
	--do all other handins first with plugin, then let it do disciplines
	
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
