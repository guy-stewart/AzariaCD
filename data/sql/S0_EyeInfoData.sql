
delete from games;
delete from objectInfo;

update objects 
set class = 'IDC_NULL'
where class = '';



INSERT INTO "main"."objectInfo" ("object", "view", "control", "content") VALUES 

('IDD_DIARY1', 'IDV_PARCHBIG', 'ID_PARCHBIGTXT', '
        I leave this here in case something happens
        192978 46 Zan
        
        I Onam, archiologist of Niret 
        have  found the sacred map of our forefathers
        that grants power over the sky.
        
        Although their language still comfounds me!

        Now, I shall continue the quest spurred on 
        by our great discovery of a promise written in stone.
        I speak of course of the stone rubbing unearthed 
        outside of Etnoc, that hideous city of great 
        sadness and tragedy.

        It is the Niret way of spirit that makes us so 
        much better than those of Etnoc.

        ....to take the seed of Azaria and plant it
         on the altar of seven moons.
        
        I imagine the seed as some relic that existed 
        before the rains... I must find it! Something that
        contains this seed.

        I shall now see for myself and fill my spirit with joy - 
        Searching for something to plant on some altar!'),

('IDD_DIARY2', 'IDV_TECHPANBIG', 'ID_TECHBIGTXT', '	
	After years of isolation, your people are lost and divided.
	
	The flood water from more than 180,000 days of rain has
	finally reseeded into the ocean.  It has been a long, dark age.
    
	There are rumors of some higher purpose and a lost civalization,
	but anger and mistrust amongst your people is widespread.
	
	As a member of either the Niret or the Etnoc clans, you 
	can now re-discover your home world and uncover
	the ancient secrets that time has buried. 
	
	There have been a few adventurers to wander out ahead of you 
	and their new findings may begin to tell your tale.  Look for evidence 
	of their discoveries as you go further on your journey. 

'),

('IDD_DIARY3', 'IDV_TECHPANBIG', 'ID_TECHBIGTXT', '
	I''ve devised a way to force some growth on our progeny 
	- to help them evolve in such a way that they are able to transcend 
	the dimensional barrier and make the journey home with us.  
	Kamioza awaits.




	I''ve decided to demolish my track after several of my 
	test subjects have perished during the trials.  
	The populace seem to be resenting this even though a few 
	of them evolved nearly 100 fold.  
	
	
	
	
	Jaxius assures me that I may cause an outright revolt
	- my only goal was to move things along.  
	His idea of a slow methodical evolution may have merit.
'),

('IDD_DIARY4', 'IDV_TECHPANBIG', 'ID_TECHBIGTXT', 'There was already a great fear that festered like a wound amongst us. 
Then, four of our bravest souls took the trial. 
Bathed in visions of beauty and light, they did not evolve as
our governors had promised.  Instead, their bodies, limp and lifeless, 
were set to the torch and their families'' unconsolable wailing turned
to anger.

On this day 199970 45 Zan, I record the events for which I fear
may have divided us forever.

Gray smoke billowed from the grand chemical repository as it burned
 to the ground.

A large crowd carried Armstead to the city square - pulling him by his hair 
and side coat. There were at least 10 dragging him up the stairs
to the statuary.  

Armstead pleaded with the crowd and a group from the temple formed
to try and free him from the clutches of the raging crowd to no
avail.

This group had been the same citizens - recently admonishing many for our 
dependence on our governor''s technology.

They were already heading for banishment and now the line was drawn. 
Just as the stain of our sin can not be washed away, 
now too their absence reminds us of our folly.'),

('IDD_BLOBBALL', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

       The object of Blob ball is to get rid of all your balls first.
       Pick a side and roll a die. place your ball in the number
       corresponding to the number rolled.  If you roll a six, that is 
       great because your ball gets sucked away. 
       
       At any point, you can pass your turn to the other player 
       If you roll a number which already has a ball in it, 
       you take it and the other player takes over.

       Oh, you do not have a die? You can buy one!
'),

('IDD_EMERALD', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       The Emerald of Light! 
       Rathe will be ecstatic.
'),
('IDD_RUBY', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a Ruby. It may have some
        value to somebody. It may not.
'),
('IDD_ROCK', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a nice rock.'),

('IDD_BOMB1', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

This small bomb can cause big damage when dropped on another player. 
Also, a bomb can be used to blow up parts of doors or locks.  In addition,
bombs can cause major damage to piles of rocks.'),

('IDD_BOMB2', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

This small bomb can cause big damage when dropped on another player. 
Also, a bomb can be used to blow up parts of doors or locks.  In addition,
bombs can cause major damage to piles of rocks.'),

('IDD_AMULET', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
This amulet looks old and powerful!
Considered sacred, it is encrusted with dirt and looks a bit gaudy.'),

('IDD_BAIT0', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
This is gross and smelly and will likely catch a fish.'),

('IDD_BAIT1', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
A dragon fly. This will catch a fish but maybe something else too.'),

('IDD_BAIT2', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
Your basic worm. This will catch a fish.'),

('IDD_BAIT3', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
This special bait fish can only be caught by hand.'),

('IDD_BAIT4', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
This special bait fish can only be caught by hand.'),

('IDD_BAIT5', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        Manufactured bait otherwise known as a lure.'),

('IDD_BAIT6', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This special bait fish can only 
        be caught by hand.'),

('IDD_BAIT7', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        More bait'),

('IDD_BAIT8', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        More bait'),

('IDD_BAIT9', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        More bait'),

('IDD_NYPLANT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This plant only grows on the walls 
        of the nystrom mines.'),

('IDD_SCOOPE', 'IDV_PARCHNYSTROM', 'ID_PARCHNYSTROMTXT', '


This is known as a kusadi.  It is the only device
capable of holding precious Nystrom.  You use it to 
pay for items by moving the kusadi across payment 
receptacles.

You can collect Nystrom from the mines in the same
way, but be CAREFUL as the mines emit a poisonous
gas!

'),

('IDD_SCOOPF', 'IDV_PARCHNYSTROM', 'ID_PARCHNYSTROMTXT', '


This is known as a kusadi.  It is the only device
capable of holding precious Nystrom.  You use it to 
pay for items by moving the kusadi across payment 
receptacles.

You can collect Nystrom from the mines in the same
way, but be CAREFUL as the mines emit a poisonous
gas!

'),

('IDD_FISH1', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
You have a fish. That''s a nice looking one!
Try cooking it somewhere.'),

('IDD_EYEWAND', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

The eye wand was once used all across Azaria.
It can help you to understand the ancient
language and perhaps clear up some mysteries
of the past.  Hold on to it tightly.'),

('IDD_PROTECT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

		Spell: Protection
		Type: Defensive

		This spell is cast on oneself to prevent damage
		from bombs and attack spells.

'),

('IDD_WETBREATH', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Breath
		Type: Defensive

		This spell is cast on oneself to allow for 
		temporary breathing under water.

'),

('IDD_NYBREATH', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Nystrom Breath
		Type: Defensive

		This spell is cast on oneself to allow for 
		temporary safety from the foul winds of the
		nystrom mines.

		15 - 30 seconds'),

('IDD_TELEKINESIS', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Telekinesis
		Type: Psychic

		This spell is cast on oneself to allow for 
		temporary movement of large objects.  Access to 
		hidden areas can be achieved with use.

'),

('IDD_INVISIBLE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Invisibility
		Type: Psychic

		This spell is cast on oneself to allow for 
		the removal of your representation from 
		everyone else.

	'),

('IDD_ENCHANT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Enchant
		Type: Attack 

		This spell is cast on someone whom you 
		force to follow you around the world.

'),

('IDD_HOLDING', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Holding
		Type: Attack 

		This spell is cast on someone whom you 
		force to stay in their current position for the
		durration of the spell.
		
'),

('IDD_STALKING', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Stalking
		Type: Attack 

		This spell is cast on someone whom you 
		choose to follow around the world.
		
'),

('IDD_TRANSFER', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Transfer
		Type: Attack 

		The transfer spell switches the targets 
		wisdom, energy and karma with your own.  
		The transfer enemy is a great way to satify
		your jealousy.
		
'),

('IDD_DEATH', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Death
		Type: Attack 

		The death spell instantly kills the target.
		The target usually looses all of their Nystrom and energy
		as they die.  The target must start a new 
		character 
		
'),


('IDD_REVIAL', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Revive
		Type: Psychic 

		This rare potion may bring back the dead.			
		
'),




('IDD_BANISHMENT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Banishment
		Type: Attack 

		Banishment sends the target to
		a very dark place from where they need
		to discover a way out of.
		
		
		
'),

('IDD_GVIAL', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: Gopa
		Type: Curative 

		Gopa is a special elixer that meflin make.
		This elixer is so powerful that it can increase
		your energy.  Some Gopa is so well brewed that
		it can potentially bring back the dead.
		
	'),

('IDD_BLINDNESS', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: BLINDNESS
		Type: Attack 
		
		Blindness makes the target unable to see and 
		leaves them in a state of confusing darkness.
		
'),

('IDD_HALUCINATE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: HALUCINATE
		Type: Attack 
		
		This spell forces some strange behavior
		and visions on the target.
		
	'),

('IDD_STRENGTH', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: STRENGTH
		Type: Environment 
		
		This spell, when applied directly to 
                an external object, applies the required
                strength to move it.
		
	'),
('IDD_MINDREAD', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Spell: MINDREAD
		Type: Psychic 
		
		At present, there is no known use for
                this spell.
		
	'),       


('IDD_SPELx01', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '' ),
('IDD_SPELx02', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '' ),
('IDD_SPELx03', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '' ),
('IDD_SPELx04', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '' ),
('IDD_SPELx05', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '' ),
('IDD_SPELx06', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '' ),
('IDD_SPELx07', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '' ),
('IDD_SPELx08', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '' ),
('IDD_SPELx09', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '' ),
('IDD_SPELx10', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '' ),        

('IDD_DIARY5', 'IDV_PARCHBIG', 'ID_PARCHBIGTXT', 'To Monamar of Etnok, machine guard

From Onam of Niret, Appointed Archiologist

Alas, I have no choice but to grovel before you and ask for your assistance.
I ask that you manufacture and  provision my team of humble Niret workers
with enough shovels and picks to unearth what we believe are ancient 
monoliths with some powerful form of energy.  Our explosion spells
work too slowly at this endevour.

Based on found evidence, It is my belief that there are 7 monoliths in the 
valley.  Each may represent a moon in our system with the power source 
eminating from the center.

I believe that unearthing them will show us truth and we, as has 
always been the Niret way, will share what treasures there are to be found 
- from our hard labor
 - to you - of less ...substantive assistance.

As is the custom, we shall use our breath spell and be able to pay you 
twice value.

Onam'),

('IDD_GOPASEED', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
Gopa is grown from its seed stage by only watering once per week.
After it sprouts Gopa requires daily water until fruit shows up.

After 3 days, Gopas first fruit (green) may be seen and it is time to
start irrigating with Nystrom. Typical plants, at this stage, take 
2 scoop of nystrom daily. 

After a few Nystrom applications, 
the fruits should change from green, to red 
and finally to blue. Gopa will keep bearing green fruit after 
harvesting, if watering is continued.

'),


-----------

('IDD_BBISHOP', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
This is a Bishop. It can move diagonally as long as there are no 
pieces in the way. Captures by landing on an enemy piece.' ),

('IDD_BKING' ,'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
A king can move one square in any direction, as long as the
 move does not put the king in check or land on a square already
occupied by a friendly piece.' ),

('IDD_BKINGME', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
This appears to be some token for a game.' ),

('IDD_BKNIGHT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
A knight moves two squares in any direction vertically, 
followed by one square horizontally, or vice versa.' ),


('IDD_BPAWN', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
Pawns can move one square forward, or two squares forward 
on their first move.' ),

('IDD_BQUEEN', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
The queen can move any number of squares in any direction, 
as long as it is not blocked by another piece or occupied 
square.' ),

('IDD_BROOK', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
a rook moves in a straight line, either horizontally or vertically, 
as many squares as desired, as long as it does not encounter an 
obstruction or capture a piece.' ),

('IDD_REVERSIA', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
A reversi token' ),

('IDD_REVERSIB', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
A reversi token' ),

('IDD_WKING', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
A king can move one square in any direction, as long as the
move does not put the king in check or land on a square already
occupied by a friendly piece.' ),

('IDD_WKINGME', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
This appears to be some token for a game.' ),

('IDD_WKNIGHT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
A knight moves two squares in any direction vertically, 
followed by one square horizontally, or vice versa.' ),

('IDD_WPAWN', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
Pawns can move one square forward, or two squares forward 
on their first move.' ),

('IDD_WQUEEN', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT',  '
The queen can move any number of squares in any direction, 
as long as it is not blocked by another piece or occupied 
square.' ),

('IDD_WBISHOP', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
This is a Bishop. It can move diagonally as long as there are no 
pieces in the way. Captures by landing on an enemy piece.' ),

('IDD_WROOK', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
a rook moves in a straight line, either horizontally or vertically, 
as many squares as desired, as long as it does not encounter an 
obstruction or capture a piece.' ),

('IDD_GOBTRFLY', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
Go Butterfly
This appears to be some token for a game.' ),
('IDD_GODRAGON', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
Go Dragon
This appears to be some token for a game.' ),


('IDD_BUCKE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', ' 

		This empty bucket could use some water.
		' ),
('IDD_BUCKF', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', ' 

		This full bucket could be used to water your plant.
		' ),

('IDD_CITKEY', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This special key is provided to you at birth and
        reminds you that you are Etnoc. You may use it
        to enter places where your people have staked 
        a claim.
' ),
('IDD_CITLOCK', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This lock can be used to secure claims for 
        the Etnoc tribe.
' ),

('IDD_VILKEY', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This special key is provided to you at birth and
        reminds you that you are Niret. You may use it
        to enter places where your people have staked 
        a claim.
' ),
('IDD_VILLOCK', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT',  '
        This lock can be used to secure claims for 
        the Niret tribe.
' ),

('IDD_FISH10', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        You have a fish. That''s a nice looking one!
Try cooking it somewhere.'),
('IDD_FISH2', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        You have a fish. That''s a nice looking one!
Try cooking it somewhere.'),
('IDD_FISH3', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        You have a fish. That''s a nice looking one!
Try cooking it somewhere.'),
('IDD_FISH4', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        You have a fish. That''s a nice looking one!
Try cooking it somewhere.'),
('IDD_FISH5', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        You have a fish. That''s a nice looking one!
Try cooking it somewhere.'),
('IDD_FISH6', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        You have a fish. That''s a nice looking one!
Try cooking it somewhere.'),
('IDD_FISH7', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        You have a fish. That''s a nice looking one!
Try cooking it somewhere.'),
('IDD_FISH8', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        You have a fish. That''s a nice looking one!
Try cooking it somewhere.'),
('IDD_FISH9', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        You have a fish. That''s a nice looking one!
Try cooking it somewhere.'),

('IDD_FISHASH1', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        The fish you have is now ash.  It can now be used in
a spell.'),
('IDD_FISHASH10', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT',  '
        The fish you have is now ash.  It can now be used in
a spell.'),
('IDD_FISHASH2', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        The fish you have is now ash.  It can now be used in
a spell.'),
('IDD_FISHASH3', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        The fish you have is now ash.  It can now be used in
a spell.'),
('IDD_FISHASH4', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        The fish you have is now ash.  It can now be used in
a spell.'),
('IDD_FISHASH5', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        The fish you have is now ash.  It can now be used in
a spell.'),
('IDD_FISHASH6', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        The fish you have is now ash.  It can now be used in
a spell.'),
('IDD_FISHASH7', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        The fish you have is now ash.  It can now be used in
a spell.'),
('IDD_FISHASH8', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        The fish you have is now ash.  It can now be used in
a spell.'),
('IDD_FISHASH9', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        The fish you have is now ash.  It can now be used in
a spell.'),

--------- Plant life

('IDD_GLEAFSPT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '		
		
		Plant Class: PEDOFIC

		This small green plant will help
                in the creation of spells.
'),

('IDD_GOPAB', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: GOPA
		
                This is a ripened Gopa berry. This 
                berry is used to brew a retorative 
                brew by the meflin of Azaria.
'),

('IDD_GOPAG', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: GOPA
		
                This Gopa berry is not ripe 
                and has little value to anyone.
'),

('IDD_GOPAR', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: GOPA
		
                Red Gopa berries are almost ripe!
'),

('IDD_OMUSHSPT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: THINIUS SPORE
		
                This orange mushroom is helpful in some spells.
'),
('IDD_PFLWRSPT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','	
		
		Plant Class: CARTONIST FLOWER
		
                This flower can be used in certain spells.
'),
('IDD_PLEAFSPT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: PEDOFIC
		
                This plant is useful in crafting spells.
'),
('IDD_FERNLEAF', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: FENAPRIAL
		
                This plant is useful in crafting spells.
'),

('IDD_REDBERRY', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: CASIPEM
		
                This red berry is useful in crafting spells.
'),

('IDD_BLUEBERRY', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: CASIPEM
		
                This blue berry is useful in crafting spells.
'),

('IDD_ROOTBLUE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: SPECROOT
		
                Various roots grow all throughout Azaria.
                This root is used in the crafting of spells.
'),
('IDD_ROOTORANGE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: SPECROOT
		
                Various roots grow all throughout Azaria.
                This root is used in the crafting of spells.
'),
('IDD_ROOTWHITE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: SPECROOT
		
                Various roots grow all throughout Azaria.
                This root is used in the crafting of spells.
'),
('IDD_ROOTDBL', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: PAKSIUMROOT
		
                Various roots grow all throughout Azaria.
                This root is used in the crafting of spells.
'),

('IDD_WFLWRSPT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: CARTONIST
		
                This flower can be used in certain spells.
'),

('IDD_YFLWRSPT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: CARTONIST
		
                This flower can be used in certain spells.
'),
('IDD_YMUSHSPT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: GORDIUS SPORE
		
                This yellowish mushroom is helpful in some spells.
'),
('IDD_LEAF', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: TREONIC
		
                This is a leaf that can be used in spell crafting.
'),
('IDD_FLOWERD', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: BRUSHERBIUS
		
                This flower can be used in spell crafting.
'),
('IDD_FLOWERR', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: SHYANTHIUS
		
                This flower can be used in spell crafting.
'),
('IDD_WILDBERRY', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '	
		
		Plant Class: ITSIUS
		
                This berry can be used in spell crafting.
'),


-----------------
-- Common objects / hardware
('IDD_LOG', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       This is a log and will probably burn 
       if placed upon a fire pit and lit.
' ),

('IDD_MATCH', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        You are looking at your torch... or
        maybe its more of a match.
' ),
('IDD_HAMMER', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       This is a hammer.
       
' ),
('IDD_CLOCK', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       A clock that measures time.
       
' ),
('IDD_LAVA', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
      Lava lamps are very popular,
      They are said to resemble the oceans
      of Kamioza.
' ),
('IDD_LAMP', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
       This appears to be a lamp.
' ),
('IDD_VASE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
      This vase is merely decorative.
' ),
('IDD_STATUE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       This is a statue to be treasured.
       '),
('IDD_PORTRAIT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       A self portrait.  
' ),
('IDD_FAN', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
      A fan could be useful to move a foul wind. 
' ),
('IDD_GASMASK', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       Like a spell of sorts, this gas mask
       might make breathing possible where 
       foul winds blow.
' ),

('IDD_SHOVEL', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        A shovel is a useful tool.
' ),
('IDD_PICK', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       A pick that can break rock.
' ),
('IDD_CROWBAR', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
       A crowbar is useful in turning over 
       heavy rocks.
' ),
('IDD_SPADE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       A spade is just a tiny shovel.
' ),

('IDD_DICE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       This is a die, not a dice.
' ),
('IDD_SHAKE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
      These dice are great for playing games.
' ),
('IDD_VIAL3', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       This vial is actually too big.
' ),
('IDD_VIAL2', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       You can use this vial by dropping it 
       where your Kusadi is.  This allows 
       you to hold more nystrom.
' ),
('IDD_VIAL1', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       You can use this vial by dropping it 
       where your Kusadi is.  This allows 
       you to hold more nystrom.
' ),

('IDD_PLAYER_W', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       A player token for a game.
' ),
('IDD_PLAYER_B', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       A player token for a game.
' ),

('IDD_MAPBTN', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       Try a little farther to the left.
' ),
('IDD_EXPLOA', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
       This is obviously magic to be used elsewhere.
' ),

('IDD_NYPLANT', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This rare plant only grows in 
        the mines as it produces energy
        from the poisonous fumes of Nystrom.
' ),


('IDD_NYSVIAL', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This poor graphic should be cast into the 90s
' ),

('IDD_SEED', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This seed is unique and should
        be handled with great care. 
        It should be planted on the 
        altar of seven moons.
' ),
('IDD_SPEAKER', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is an orientation speaker.
        You can place the speaker on the 
        speaker jacks next to the displays
        in the orientation room.
' ),
('IDD_SPRINGS', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        It appears you have captured 
        the soul of a fish.
' ),

('IDD_H2OMASK', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This manufactured mask can allow 
        you to breathe under water.
' ),
('IDD_NYSMASK', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This manufactured mask can allow 
        you to breathe in the mines.
' ),
('IDD_ALARM', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This item records your location and
        allows you to return instantly.
' ),
('IDD_LIGHTER', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This manufactured item can catch
        logs on fire.
' ),
('IDD_SICKLE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        Originally to harvest grain,
        this manufactured item can remove
        stubborn items from walls.
' ),

('IDD_TICKLELEAF', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This leaf has some interesting properties.
        It is fuzzy and somewhat ticklish to the
        touch.
' ),

('IDD_MEMFUSE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        
        This ancient item contains the technical
        configuration to locate the celestial bodies
        of Kamioza at a critical point in time.
' ),
('IDD_MEMSPELL', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        
        This ancient manifestation contains the spiritual
        configuration to perceive the celestial bodies
        of Kamioza at a critical point in time.
' ),
('IDD_LUNCHCRUMBS', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        
        Just some bread crumbs for you
        could be a feast to those nearby.
' ),

('IDD_EYESPELL', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        
        This ancient manifestation contains a portion of 
        the spiritual configuration necessary to 
        channel understanding of language.

' ),
('IDD_EYEFUSE', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        
        This ancient item contains a portion of 
        the technical configuration necessary to 
        channel knowledge of language.
' ),

----------------
('IDD_POTTALIS1', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        Known as a pottalis, this magical
        object should be matched to its 
        resting receptical.
' ),
('IDD_POTTALIS2', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT',  '
        Known as a pottalis, this magical
        object should be matched to its 
        resting receptical.
' ),
('IDD_POTTALIS3', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        Known as a pottalis, this magical
        object should be matched to its 
        resting receptical.
' ),
('IDD_POTTALIS4', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT',  '
        Known as a pottalis, this magical
        object should be matched to its 
        resting receptical.
' ),
('IDD_POTTALIS5', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT',  '
        Known as a pottalis, this magical
        object should be matched to its 
        resting receptical.
' ),
('IDD_POTTALIS6', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT',  '
        Known as a pottalis, this magical
        object should be matched to its 
        resting receptical.
' ),

--------------------

('IDD_POLE1', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),
('IDD_POLE1B0', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        This is a fishing pole.
' ),
('IDD_POLE1B1', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        This is a fishing pole.
' ),
('IDD_POLE1B2', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        This is a fishing pole.
' ),
('IDD_POLE1B3', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        This is a fishing pole.
' ),
('IDD_POLE1B4', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        This is a fishing pole.
' ),
('IDD_POLE1B5', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        This is a fishing pole.
' ),
('IDD_POLE1B6', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        This is a fishing pole.
' ),
('IDD_POLE1B7', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        This is a fishing pole.
' ),
('IDD_POLE1B8', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        This is a fishing pole.
' ),
('IDD_POLE1B9', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','
        This is a fishing pole.
' ),
('IDD_POLE2', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),
('IDD_POLE2B0', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),
('IDD_POLE2B1', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),
('IDD_POLE2B2', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),
('IDD_POLE2B3', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),
('IDD_POLE2B4', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),
('IDD_POLE2B5', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),
('IDD_POLE2B6', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),
('IDD_POLE2B7', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),
('IDD_POLE2B8', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),
('IDD_POLE2B9', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '
        This is a fishing pole.
' ),


('IDD_CITY_KEY_0', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_1', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_2', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_3', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_4', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_5', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_6', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_7', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_8', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_9', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_10', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_11', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_12', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_13', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_14', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_15', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_16', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_17', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_18', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_19', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_20', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_21', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_22', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_23', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_24', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_25', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_26', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_27', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_28', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_29', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_30', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_31', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_32', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_33', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_34', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_35', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_36', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_37', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_38', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_39', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_40', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_41', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_42', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_43', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_44', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_45', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_46', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_47', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_48', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_49', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_50', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_51', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_52', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_53', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_54', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_55', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_56', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_57', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_58', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_59', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_60', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_61', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_62', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),
('IDD_CITY_KEY_63', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        Your programmable key.
' ),



('IDD_CARD00', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD01', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT','

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD02', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD03', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD04', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD05', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD06', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD07', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD08', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD09', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD10', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD11', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD12', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD13', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD14', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD15', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD16', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD17', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD18', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD19', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD20', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD21', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD22', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD23', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD24', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD25', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD26', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD27', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD28', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD29', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),
('IDD_CARD30', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        A manufacturing card contains 
        object chemical and nystrom 
        requirements.
' ),



('IDD_TEMPLATE_01', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_02', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_03', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_04', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_05', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_06', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_07', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_08', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_09', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_10', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_11', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_12', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_13', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_14', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_15', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_16', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_17', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_18', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_19', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_20', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_21', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_22', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_23', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_24', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_25', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_26', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_27', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_28', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_29', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_30', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_31', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_32', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_33', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_34', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),
('IDD_TEMPLATE_35', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        An object template is used in the 
        item selection machine.
' ),

('IDD_CHEMV01', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV02', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV03', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV04', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV05', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV06', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV07', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV08', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV09', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV10', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV11', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV12', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV13', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV14', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV15', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV16', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV17', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV18', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV19', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' ),
('IDD_CHEMV20', 'IDV_PARCHSMALL', 'ID_PARCHSMALLTXT', '

        This is a chemical used in the 
        manufacturing process.
' );

















