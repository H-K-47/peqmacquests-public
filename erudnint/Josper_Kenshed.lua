function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Come forward and speak.  What is it you seek within these walls?  Let it be the knowledge of wizardry. for that is what we are.  Only a [servant of wizardry] should be within these walls.");
	elseif(e.message:findi("servant of wizardry")) then
		e.self:Say("A servant. you say?  If you be a young apprentice. perhaps you might assist me? I could use you to [collect components].  If you believe yourself to be beyond such things. you may wish to assist me with a [special matter].");
	elseif(e.message:findi("collect component")) then
		e.self:Say("Of course you may assist me!! We have much need of a certain item which can only be found in the frigid peaks of Everfrost. There you shall find creatures called ice goblins. Take this bag and fill it with ice goblin beads and be sure to combine them before you return them. Well, then... Off with you!! And be quick about it and I shall give you a fine wizard's weapon. None of this rust-covered garbage offered by our associates!");
		e.other:SummonItem(17944);
	elseif(e.message:findi("special matter")) then
		if(e.other:GetClass() == 12) then
			e.self:Say("It seems my last apprentice was sent into Toxxulia to test a spell I call Ice Capade, well, everyone else calls it Column of Frost, how droll! Anyway... he never returned. I fear he is nothing more than BONES, though I hope I'm wrong. Could you find good old Ilanic and ask him, [where is the scroll]?! I do not wish it to fall into enemy hands. Return it and I shall let you keep the scroll. Oh yes, It is only half of a spell. I forgot to send him the full scroll. I imagine that is why he was not victorious.");
			eq.set_global("ilanic","1",7,"H1");
		else
			e.self:Say("The Crimson Hands have no quarrel with you, but we cannot truly trust you as yet.");
		end
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13898})) then -- bag of ice necklaces
		e.self:Say("Well done, my young apprentice. I call you apprentice for you are nothing but a spark to my fire. This is the final component for my greatest creation. AHA!! I call it - iced tea!! Never again shall I boil under the hot sun. As for you, take this. It should serve you well. Now go away. There is no iced tea for you");
		e.other:Ding();
		e.other:SummonItem(12208);
		e.other:Faction(60,1,0); --faction with Crimson hands increased
		e.other:Faction(145,1,0); --faction with High Council of Erudin increased
		e.other:Faction(143,-1,0); --faction with Heretics decreased
		e.other:Faction(147,1,0); --faction with High Guards of Erudin increased
		e.other:AddEXP(1000);
		e.other:GiveCash(0,7,0,0);
	elseif(e.other:GetClass() == 12) then
		if(item_lib.check_turn_in(e.self, e.trade, {item1 = 12207})) then -- Half of a Spell
			e.self:Say("'I see you found Ilanic. How is he doing? I hope he is well. As for you, you may have the spell Ice Capa... err, I mean Column of Frost. Don't go and lose it now.");
			e.other:Faction(60,1,0); --faction with Crimson hands increased
			e.other:Faction(145,1,0); --faction with High Council of Erudin increased
			e.other:Faction(143,-1,0); --faction with Heretics decreased
			e.other:Faction(147,1,0); --faction with High Guards of Erudin increased
			e.other:QuestReward(e.self,0,7,0,0,15380,1000);
		end
		item_lib.return_items(e.self, e.other, e.trade)
	end
	item_lib.return_items(e.self, e.other, e.trade);
end

--END of FILE Zone:erudnint  ID:24072 -- Josper_Kenshed