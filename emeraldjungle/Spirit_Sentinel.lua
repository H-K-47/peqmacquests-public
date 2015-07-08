--Spirit Sentinel is for Shaman Epic 1.0 and administers the Test of Might and the completion of the epic.
function event_say(e)
	if(e.message:findi("hail")) then --Part of Shaman Epic 1.0
		e.self:Say("Greetings, " .. e.other:Class() .. ".");
	elseif(e.message:findi("I will continue what I have started")) then --Part of Shaman Epic 1.0
		e.self:Say("This brings happiness to our hearts and we are grateful. However, we must ask you to walk one more path before you can become a true Heyokah. With trust, one can focus on what is important. With patience, one can perceive what is harmful. With wisdom, one can know what must be done. These, you have learned, yet without the might to carry out what must be done, all is for naught. Are you [prepared to walk the path of might]?");
	elseif(e.message:findi("I am prepared to walk the path of might")) then --Part of Shaman Epic 1.0
		e.self:Say("Good, good, Do you know this place, " .. e.other:GetName() .. ", this forest? The wasichu call it the Emerald Jungle, but we know it only as the terrible place. Where there is no spirituality, we are weak. The lost city in the middle of this jungle is a great void of belief not only absent of spirituality, but actually draining it from others. We are here to neutralize that void. The void is like the sky, and nothing escapes its gaze. If it senses us, it will drain us away and sometimes it turns our minds, making us [like the wasichu], crazy for things with no meaning.");
	elseif(e.message:findi("like the wasichu")) then --Part of Shaman Epic 1.0
		e.self:Say("Yes, there are some of us who have turned their backs on our world and struggle for possesions and power over others. These lost ones are our brothers and we cry for them. Our hearts are in pain like bleeding wounds when we think of them. The path of might will lead you to one of our lost brothers. We are afraid there is nothing we can do for him now, so you must eliminate him when you [find him].");
	elseif(e.message:findi("find him")) then --Part of Shaman Epic 1.0
		e.self:Say("He left us long ago and walked the land for ages. He soon met a man, one of the pointy-ears that live underground. This man was like a void just like the one over that terrible place now. Our Brother-Friend was attracted to this man's desire and ambition. He no doubt thought that he could get what he wanted in service of this [dark point ear] who denied his own creator.");
	elseif(e.message:findi("dark point ear")) then --Part of Shaman Epic 1.0
		e.self:Say("After our brother began traveling with this point-ear, they became shrouded in a darkness we could not peer through. The point-ear was a powerful being and we soon lost their trail. We have no idea where he could be now. Although, after all these centuries, he has no doubt been gathering and cultivating his wealth and power. He must be an incredibly influential being at this point. Find this point-ear and draw our brother out, then destroy him and bring us proof. We await your return in somber mourning.");
	elseif(e.message:findi("Heyokah")) then --Part of Shaman Epic 1.0
		e.self:Say("Yes, you have walked the Path of the Heyokah to its end. You have become what few have and we will now call to you as Heyokah " .. e.other:GetName() .. ". From now on, you are a direct link between the spirits and man. Whether your goals are to help us or master us, you are welcomed. Though there is little time for celebration. Do you feel the darkness of this place, the forest? To eyes not trained to see beyond physical appearances, it seems like any other forest. But you know, as do we, of the mantle over the city threatening all of us. We must [rub it out].");
	elseif(e.message:findi("rub it out")) then --Part of Shaman Epic 1.0
		e.self:Say("There are many such mantles scarring the universe and each is very different from the last. Removing them requires that we learn how they were created and go about reversing the damage done. We cannot enter under the mantle for long which is why we search out Heyokah such as yourself. We need you to enter the city and find out what you can about the [city's demise]. We hope you will do this for the cause of balance but if you desire none but your own power, we shall grant that as well.");
	elseif(e.message:findi("city's demise")) then --Part of Shaman Epic 1.0
		e.self:Say("It was known as Torsis. During its history it amassed great wealth and power yet it eventually crumbled. No one understands what happened. The men of the world ask themselves how a nation as successful as Torsis could ever fall. Some blame plague, internal unrest, the constant encroachment of the forest, and marauding bands of monsters but we alone know what happened. Just as Tabien and Glaron lost sight of their spiritual paths, so did Torsis. Without the awe and inspiration of that which was greater than themselves, they eventually withered away. The mantle was born long before the last days, though, and what we need to learn is [how it all began].");
	elseif(e.message:findi("how it all began")) then --Part of Shaman Epic 1.0
		e.self:Say("Excellent! Go into the city and gather what evidence you can. The ghosts who still walk the streets may hoard precious memories that will aid us. Take this booklet and combine what you find in it. Then bring me the completed report. From there, we will know where to look next.");
		e.other:SummonItem(17805);
	end
end


function event_trade(e)
	local item_lib = require("items");
	if(e.other:GetFaction(e.self) <= 3) then
		if(item_lib.check_turn_in(e.self, e.trade, {item1 = 1668})) then --Part of Shaman Epic 1.0
			e.self:Say("Ahh, you live, shaman! I am glad the beasts of this jungle haven't torn your body asunder. Tell me, do you still walk the path? Are you willing to [continue what you have started]?");
			e.other:Faction(342,150);
		elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 1672})) then --Part of Shaman Epic 1.0
			e.self:Emote("begins to weep softly as he sees the pelt, battered and bloody. After a few moments, he says, 'We can only hope his passing was quick and painless. The Dire was powerful and yet you overcame him. Always remember that when you became [Heyokah], it was the passing of a noble, yet misguided being that allowed you to do so. You should hold a special place in your heart for him and what he was in life. To help you remember him, we will fashion this pelt into a pair of boots and give them to you. With every step you take, you must think on the Dire, else his death be in vain forever.");
			e.other:QuestReward(e.self,0,0,0,0,1678,50000);
			e.other:Faction(342,50);
		elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 3599})) then --Part of Shaman Epic 1.0
			e.self:Emote("Ahhh good, let us hope what you have found will point us in the right direction. Hmmm...this is interesting. It appears the disappearance of the first queen may have caused Rak'Ashiir's faith to decline. From there, the first King Rak laid down the groundwork for the city's eventual demise. We need to learn what happened to the queen. Perhaps bringing this knowledge to the King's now cursed form will lift the mantle. We've learned that the last lord of Torsis, Ghiosk, was a bit of a historian. Find him and see what you can learn about the queen. Take what you find to my brother here in the jungle beneath the murky waters of a pond.");
			e.other:Faction(342,100);
			e.other:QuestReward(e.self,0,0,0,0,0,75000);
		end
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

--Submitted by: Jim Mills
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
