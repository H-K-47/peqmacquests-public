-- NPC:96080 -- Natasha Whitewater, Cleric epic 1.0 quest NPC
function event_spawn(e)
	eq.set_timer("NatashaDepop",600000);
end

function event_timer(e)
	if(e.timer == "NatashaDepop") then
		eq.depop();
	end
end

function event_trade(e)
	local item_lib =require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 28018})) then
		e.self:Say(string.format("Thank you, %s, for your services thus far. The Triumvirate missionaries are, so far, impressed. However, there is yet another threat rising from the Plasmatic Priesthood that may have dire effects on all of Norrath if it is not stopped. An Iksar member of the Triumvirate missionaries has discovered that the Plasmatic Priesthood has somehow convinced the sarnak summoners of Chardok to assist them in summoning Ixilblat Fer to Norrath. Take this shell to Naxot Deepwater in the Burning Woods so that she knows I have sent you. We ask that you return with the Sceptre of Ixiblat Fer as well as evidence to show that the Plasmatic Priesthood is dealing with sarnaks. High Priest Omat will await your return. I must depart now. I pray for your success.",e.other:GetName()));
		e.other:QuestReward(e.self,0,0,0,0,28056);
		eq.depop();
	end
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 28052})) then
		e.self:Say("lowers her head in mourning and whispers a prayer. 'It is a shame that fate has decided one so young and from such a background should perish, but we must not attempt to change what was destined to be. Priestess Naxot sacrificed herself selflessly so that others may be spared the horrors Ixiblat would have brought to Norrath. May the waters of Norrath forever remember her reflection. I thank you for delivering Naxot's message to me and give you this pearl imbued with the power of the Triumvirate. Should you find Zordak Ragefire, speak with him before all else and hand him this pearl. No mortal enemy of the Triumvirate can resist its enchantments.'");
		e.other:QuestReward(e.self,0,0,0,0,28054);
		eq.depop();
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
