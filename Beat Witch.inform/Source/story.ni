"Beat Witch" by Robert Patten

[
*** LEGAL STUFF ***

You are free to use selections of this code and adapt them for personal or commercial projects. But I am not releasing the characters, world, story, etc., for public use here -- just the code. 

I have also included music. This is for people intending to experiment and compile the story on their own. You are also welcome to download it for your personal use only. See the credits in the help menu for more information on the music, as well as the sound effects (which I did not produce).

Extensions I used are included as well. While these are all publicly available, please respect the rights of the respective authors.

*** END LEGAL STUFF ***

This source code for Beat Witch is being released primarily to help other Inform authors, though it's not supposed to be a shining example of great code. It's quite hacky in some parts. 

A big issue I ran into was that when I was coding the game was that the online interpreters (Parchment/Quixe) did not support sound. (They may by the time you read this.) I used Vorple to get around the issue, and other Inform coders may be curious at how I got sound to work in traditional interpreters and the browser at the same time. See Book Music.

However, as of this date, Brian Rushton's Bisquixe is probably the better option for adding sounds for online play. (Reasons: Vorple has scrolling issues, in 2023 wouldn't produce IFComp's player transcripts, and Bisquixe is closer to standard interpreter behavior, as far as I understand.) Bisquixe was not available when I created Beat Witch. I really should move everything over it it, but Vorple is tightly coupled with this code, so it will take some effort to do so.

Players who want to find out more about the beat witch world or the author's deranged thought processes may also find the source code interesting. If you haven't played through Beat Witch at least once, come back after you have done so. Spoilers abound below!

You can find the latest version of the game here: https://ifdb.org/viewgame?id=bkct2lhv4u5z818a

Reach me at curiousrealms@gmail.com.

--Robert Patten
A Basement in Idaho
April 1, 2024
]

The story headline is "An interactive loneliness".
Use American dialect.
Use serial comma.
The story genre is "Horror".
The release number is 3.
The story creation year is 2023.

[
version 2: minor things like typos
version 3: clearer directions to exits on 32nd floor. add jamie as beta tester. alert player to bonus material at beginning. some scroll fixes for vorple.
]


[to do:
- expand corpse description on bridge to include those hauling the battery.
- have Dr. Steve mention his wife and daughters in beginning. CHECK
- have Denise explain her ploy on the stairs. CHECK
- have Margo say there are a lot of remotes in the building. CHECK
- have Denise get rid of the notepad once the conversation on the Roof is over CHECK
- Hear buzz of drones before we climb up.	CHECK

- Don't allow player to give life to Dr. Steve in first scene - can we just leave this in? not sure why i wrote this.
- Have a crow flying near you while you're falling to give the player something to do. There's a lot of waiting right now!! CHECK
- Finish implementing elevator in Sales. CHECK

- Test restore and music
- Colors -- make banner bar red during music-harm? 
]

[I am an indecisive boy, as you can see from all these story descriptions.]

[The story description is "Thousands have dropped dead, and only you know why. Armed with only a notepad and a Walkman, you venture into the mostly empty city to face the source."]

[The story description is "The beat witch killed thousands with a thought. Armed only with a notepad and Walkman, you venture into the mostly empty city to face her. You are the only one who can."]

The story description is "The beat witch killed thousands with a thought. Now you venture into a city of death to face her. Flee your pursuers. Save a world that fears you. Stay away from music."

[The story description is "Stay away from music in a city of death."]

[Note to those viewing this on GitHub who want to compile their own version of Beat Witch: I have included these extensions in the Beat Witch.materials/Extensions folder. Those that aren't included are bundled with Inform. However, I might have missed an extension one of these is dependent on. Better safe than sorry, I included all the Vorple extensions I had, as there is some interdependency between them, though I don't think I used them all.]

Include Simple Chat by Mark Tilford.
Include Punctuation Removal by Emily Short.
Include Room Description Control by Emily Short.
Include Numbered Disambiguation Choices by Aaron Reed.
Include Epistemology by Eric Eve.
Include Basic Screen Effects by Emily Short.
Include Room Description Headings by Erwin Genstein.
Include Basic Help Menu by Wade Clarke.
Include Music by Daniel Stelzer.
Include Glulx Text Effects by Emily Short.


Include Vorple Multimedia by Juhana Leinonen.
Include Vorple Status Line by Juhana Leinonen.
Include Vorple Screen Effects by Juhana Leinonen. 


Release along with the "Vorple" interpreter.


Release along with cover art, interpreter, and a website.

Release along with the style sheet "beatwitch.css".


[Beat Witch was originally going to be in an Ectocomp speed competition held on itch.io, but I ran out of time! I keep this little tracker of minutes here just to amuse myself.]
[Log:
Saturday:
1:45 to  2 - 15
6:50 to 7:07 - 17
7:25 to 7:39 - 14
7:45 to 7:57 - 12
9:03 to 9:12 - 9
9:17 to 9:19 - 2
9:25 to 9:29 - 4
9:40 to 10:05 -25
--total 40
11 to 11:05 - 5
11:07 to 11:25 -18
11:27 to 11:44 - 17
11:47 to 11:51 - 4
11:57 to 12:06 - 9
12:08 to 12:18 - 10



Monday
8:23 to 8:50 - 27
8:55 to 9:04 - 9
9:40 to 10:02 - 22
10:08 to 10:17 - 9
10:20 to 10:27 - 7

Tuesday
5:50 to 6:03 - 13
6:07 to 6:30 - 23
8:55 to 9:17 - 22
9:20 to 10:50 - 90


Thursday
8:09 to 8:32 - 23

Friday
1:16 to 1:45 - 29
11 to 1:10 - 130

Saturday
8:28
fde
]

Volume Testing (not for release)

Test me with "take off helmet/g/jump/wear helmet/take life from steve/leave"


Volume Misc

Book Sayings

[A tip from Zarf on intfiction.org -- we can use this to avoid Inform 7's unwanted line breaks.]

To say period: (- print "."; -). 
To say exclamation: (- print "!"; -).
To say question: (- print "?"; -).

[Part Any Key - Not for release

[The skein in Inform 7 is getting confused over the wait for any key parts, so I'm skipping over them as I code, but the reader will have them.]

To press any key:
	do nothing;]

Part Any Key 2 

[- For release only]

To press any key:
	if Vorple is supported:
		wait for any key;
	otherwise:
		[pause the game;]
		wait for any key;

Part Any Key 3

To say keypress:
	press any key;
	
Part Scroll To Last Command


To scroll to last command:
	scroll to the element called "turn"; [this is the previous turn]

When play begins:
	scroll to the element called "turn";

To say scroll-to-last-command:
	scroll to last command;	
	
[	execute JavaScript command "let scroll_to_me = document.querySelector('.lineinput.last'); scroll_to_me.scrollIntoView();";]
	
	

Book Filter Commands

After reading a command:
	resolve punctuated titles;

Book Death

To die:
	now the player is dead;
	end the story saying "You die";
	redraw the status line;
	if Vorple is supported:
		follow the refresh Vorple status line rule;
	mute sound;
 
To fake die: [the big twist -- if you haven't played the game, stop reading now, you big cheater]
	stop all;
	now the player is dead;
	redraw the status line;  [This gives us an updated status line]
	if Vorple is supported:
		follow the refresh Vorple status line rule;
		pause the game; [Vorple will sometimes not wait for the wait for any key!!! This is a super important part of the game, and we can't have Vorple screwing it up. So we insert this pause the game line to slow everything down.]
	say "


[alert style][unicode 160][unicode 160][unicode 160][unicode 160]*** You die ***[roman type]



Would you like to RESTART, RESTORE a saved game, QUIT, or UNDO the last command?[line break]";
	say "[line break][command prompt][input style] [run paragraph on]";
	wait for any key;
	say "L[run paragraph on]";
	wait for any key;
	say "I[run paragraph on]";
	wait for any key;
	say "V[run paragraph on]";
	wait for any key;
	say "E[run paragraph on]";
	wait for any key;
	say "[paragraph break][roman type]You awaken from death."; [We'll elaborate on this, maybe.] 
	
Understand "live" as a mistake("But you are already alive, if your life can be called living.");

Understand "die" or "give up" or "cry" as a mistake("You almost want to. Sometimes you question why you insist on survival.");

To say wait-for-any-key:
	wait for any key;
	

Book Epistemology

When play begins:
	now every subject is unfamiliar.
	
unmasked-subject is a subject.

Book Examining

A thing can be examined or unexamined. A thing is usually unexamined.

Before examining something:
	now the noun is examined.
	
Instead of searching something:
	try examining the noun; [i do not like the search verb!]
	
Part Reading

A thing can be readable. 

When play begins:
	now the writing is readable;
	now the memo is readable;
	now the whiteboard is readable;
	now the album is readable;

Does the player mean doing something to a readable thing:
	if the current action is examining:
		it is very likely;

[Rule for supplying a missing noun when examining (this is the reading rule):
	if the player's command includes "read":
		if a readable thing is in the location:
			try examining the noun;]
	
Book Looking

Understand "look around" or "look round" as looking.


Book Attacking

Definition: A person is other-present if it is other and it is in the location.

Definition: A person is other-scope if it is other and it is visible.

Does the player mean doing something to an other-present person:
	if the current action is not examining:
		it is likely;

Rule for supplying a missing noun when attacking:
	let people-list be the list of other-present people;
	if people-list is not empty:
		sort people-list in random order;
		let attacked-person be entry 1 of people-list;
		try attacking attacked-person;
	otherwise:
		say "There is no one here for you to attack."
		

Volume Status Line

Book Status Line Text

To say polly-state:
	if a musical scene is happening and music-harm? is true:
		say "Dying";
	otherwise if the player is wounded:
		say "Wounded";
	otherwise if the player is weak-wounded:
		say "Wounded";
	otherwise if the player is strong:
		say "Strong"; 
	otherwise if the player is stronger:
		say "Stronger";
	otherwise if the player is godly:
		say "[if Musical Found Phone has happened]Semi-divine[otherwise]Divine[end if]";
	otherwise if the player is dead:
		say "Dead";
	otherwise if the player is uncomfortable:
		say "Tortured";
	otherwise if the player is drained or the player is weak:
		say "Weak";
	otherwise:
		say "Healthy";
	
	
playing-music? is a truth state that varies.
	
Every turn:
	now playing-music? is true;

To say no-music:
	say "No music";

To say play-noplay:
	if the player is dead:
		say "Deep silence";
	otherwise if the player is in Breakroom or the player is on the chairs and playing-music? is false:
		say "[no-music]";
	otherwise if the player is deaf:
		do nothing;
	otherwise if a musical scene is happening or a semi-musical scene is happening or a person in the location is iphony or iphone-humming? is true:
		[say "Playing: ";]
		say "[unicode 9834] "; [musical note]
	otherwise if the player is godly:
		say "[no-music]"; 
	otherwise if Descent is happening:
		say "Howling wind";
	otherwise:
		say "[no-music]";
		now playing-music? is true;


Definition: A person is iphony if it encloses the iPhone.

To say musical-state:
	if the player is dead or playing-music? is false:
		do nothing;
	otherwise if is-torture? is true:
		say "Music from ceiling (soft)";
	otherwise if Musical Walkman is happening:
		say "Walkman Side A";
	otherwise if Margo's Music is happening:
		say "Walkman Side A (faint)";	
	otherwise if the player is deaf:
		say "Deaf";
	otherwise if the iPhone is in the location or a person in the location is iphony or iphone-humming? is true:
		say "iPhone ([if the player is wearing the cowl or iphone-humming? is true]faint[otherwise]loud[end if])";
	otherwise if Final Battle Drones is happening:
		say "Drones";


Book Standard Status Line

Rule for constructing the status line (this is the status-line rule):
	fill status bar with Table of Fancy Status;
	say ""; [returns our focus to the game window]
	
To redraw the status line: (- DrawStatusLine(); -)

Table of Fancy Status
left	central	right
"[play-noplay][musical-state]"	"[current-location]"	"[polly-state]"


To say current-location:
	if the player is dead:
		say "";
	otherwise:
		say "[location]";

Book Vorple Status Line

[Vorple requires us to construct its own status line.]

The left hand Vorple status line is "[play-noplay][musical-state]".
The middle Vorple status line is "[location]".
The right hand Vorple status line is "[polly-state]".


When play begins:
	if Vorple is supported:
		construct the Vorple status line with 3 columns;

Book Vorple Status Line (Mobile)

The mobile Vorple status line is "[play-noplay][musical-state] | [location] | [polly-state]";

Volume Locations

Book Going

[We don't much in the way of maps in most of this game, but we do have a lovely instead rules that are almost as good!]

Understand "get out of here" as exiting.


Instead of going or exiting:
	if the location is Staging Area:
		if Escape is happening:
			try silently attacking the magnet-door;
		otherwise:
			say "[unless Deadly iPhone is happening]You can't go anywhere with Dr. Steve in your way. And the door's magnetically sealed[else][one of]A steady rhythm claws deep into muscle and bone. The world is a torrent of burning sound.[paragraph break][or][stopping]The spasms won't let you leave[end unless].";
	otherwise:
		continue the action;
		
Instead of going south when the location is South Side:
	if Lobby is unvisited:
		say "You limp inside.";
		now the player is in Lobby;
	otherwise:
		continue the action;

Book Kinds

forbidden is a kind of backdrop. [A simple backdrop can still be touched, which isn't ideal when the backdrop (scenery in more than one room) is something like a sun.]

Instead of touching a forbidden:
	say "You can't touch [the noun]." 


Book Staging Area

Staging Area is a room. "Translucent plastic veils enclose what was once a basketball court. Hoops and bleachers are faint shadows. High above you, the scrubbers sterilize any intruding air. A door is magnetically sealed against any invisible danger outside.[paragraph break]Dozens of tables bear medical equipment. In front of them is a whiteboard.[one of][steve-directions][or][stopping][people-descriptions]" [steve-directions defined in Unmasked scene, even though it's not actually part of it.]

Part Staging Area - Stuff

The whiteboard is scenery in Staging Area. The description of the whiteboard is "It reads:[paragraph break][monospace font style][fixed letter spacing]Timeline:[line break]March 2, 11:31 p.m. - Power goes out - all devices, entire city - EMP device?[line break]March 2, approx. 1:00 p.m. - First signs of plague appear - business district[line break]March 3 - Plague firmly in residential areas[line break]March 4 - Quarantine in place[paragraph break]Terrorists? Bacterium, virus, fungus?[line break]Spread: Airborne?[line break]Known symptom: Sudden death, no external or internal signs of injury[variable letter spacing][end style]";

Understand "white/board/timeline" or "time line" as the whiteboard.

Understand "plastic/veils/veil/sheets/sheet/curtain/curtains" as the sheets.

The hoops are a forbidden in Staging Area. The hoops are plural-named. The description of the hoops is "The basketball hoops are circles of darkness at either end of the court."

Understand "nets" or "nets" or "basketball/hoop" or "basketball/hoops" or "shadow/circles" or "shadows" or "circles of darkness" or "darkness" or "basketball/court" as the hoops. The hoops are plural-named. 

The bleachers are a forbidden in Staging Area. The bleachers are plural-named. The description of the bleachers is "The bleachers are empty and silent."

Instead of entering the bleachers:
	say "You prefer to stand.";

Understand "benches" or "bench" as the bleachers.

The scrubbers are a forbidden in Staging Area. The scrubbers are plural-named. The description of the scrubbers is "Gray boxes are suspended on cables high above you, humming as they filter pathogens that aren't there."

Understand "box/boxes/scrubber/scrubbers/cables" as the scrubbers.

The tables are a supporter in Staging Area. The tables are scenery. The tables are plural-named. "The tables are the long, fold-out kind every high school has crammed in a closet. They bend under the weight of medical supplies."

Understand "table" as the tables.

The equipment is scenery on the tables. The description of the equipment is "Laptops, syringes, centrifuges, gauze, antibiotics -- everything an emergency response team might need to combat a typical epidemic."

Understand "medical/equipment/computers/computer/laptops/laptop/syringes/syringe/centrifuge/centrifuges/gauze/bandage/bandages/antibiotics/medicine/supplies" as the equipment.

Instead of taking the equipment:
	say "Useless. The crew might as well have brought doughnuts to feed the dead, for all the good this equipment will do.";
	
The sheets are scenery in Staging Area. The sheets are plural-named. "The plastic curtains around and above you -- extra protection against the boogey-germs that supposedly lurk outside -- give this place a netherworld feel."

Understand "translucent/veil/sheet" as the sheets.

the magnet-door is scenery in Staging Area. The printed name of the magnet-door is "the door". 

The description of the magnet-door is "A black, magnetically sealed door that's supposed to keep the plague outside. It does not.[if the player is strong or the player is stronger][paragraph break]You can easily break it now.[end if]"

Instead of closing the magnet-door, say "It is already closed."
 
The magnet-door can be shattered.

Understand "magnet/magnetic/sealed/door/doorway" as the magnet-door.

Instead of opening or pushing or pulling the magnet-door:
	unless the player is strong or the player is stronger:
		say "Here's the problem: Dr. Steve's in front of the door, it's magnetically sealed, you have no idea where the controls are, and it would take more strength than you have to open it. [paragraph break]More strength than you have now, that is.";
	otherwise:
		try silently attacking the noun;
	


Book City

City is a region. 

Street is a room in City. 

Farther Down Street is a room in City. The printed name of Farther Down Street is "Deeper in City".

Every turn when the player is in Farther Down Street for 4 turns:
	say "You sense the disquiet from other beat witch. She's so close.[paragraph break]It doesn't matter where you go -- your feet will take you to her.";

The piles are a backdrop. The piles are plural-named. The piles are in City.

The description of the piles is "[one of]Looking at the fires fills you with repulsive fascination. [or][stopping]The flames have almost finished consuming the blackened, twisted shapes that used to be people."

Instead of touching the piles: say "Not in a million years."

Instead of taking the piles: say "You wish you could place all the bodies in marked graves, but you have neither the time nor the strength."

Understand "remains/fire/fires/flames/embers/mound/mounds/blackened/twisted/shapes/piles/shapes/pile" as the piles.

Understand "corpses/dead/bodies/body" as the piles[ when the corpses are not in the location].[We're going to try removing the piles as soon as the player reaches South Side.]


The buildings are a backdrop. The buildings are in City. The buildings are plural-named.

Understand "apartment" or "apartments" or "apartment/building" or "apartment/buildings" as the buildings when the player is in Street.


The description of the buildings is "[if the location is Farther Down Street]Dark apartments where residents sleep forever[otherwise if the location is Falling]The city's countless buildings are visible in the early morning. Even the darker ones shine like burning bones[otherwise if Resurrection has happened]The high buildings have gleam in the early morning[otherwise]High office buildings line the street. The tallest has its lights on, mysteriously[end if]."

Understand "office/building" or "office/buildings" as the buildings. Understand "apartment" or "apartments" or "flat" or "flats" as the buildings when the location is Farther Down Street. Understand "skyline" or "skyscrapers" as the buildings when the location is Falling. Understand "city" as buildings when the location is Falling or the location is Roof.

The asphalt is a backdrop. The asphalt is in City. The description of the asphalt is "[asphalt-desc]."

Understand "street/road/night/maze/city/concrete/cement/sidewalk/sidewalks/gutter" as the asphalt. Understand "dent/crater/blood/hole" as the asphalt when the location is South Side and Resurrection has happened. Understand "gore/carnage" as the asphalt when Resolution has happened.

To say asphalt-desc:
	if the location is South Side and Resurrection has happened:
		if Resolution has happened:
			say "The asphalt is smashed, coated in blood, and covered in bodies and shrapnel";
		otherwise:
			say "The asphalt is broken in a shallow, body-length dent where you hit the ground. It's stained with your blood";
	otherwise:
		say "Asphalt and concrete [if Descent has happened]shimmer in the morning[otherwise]reflect the night[end if]";

Instead of entering the asphalt when the location is South Side and Resurrection has happened:
	say "You prefer not to stand in your own grave.";


The streetlights are a backdrop. The streetlights are in City. The streetlights are plural-named. The description of the streetlights is "The streetlights are dark."

Understand "street lights" or "streetlamps" or "streetlamp" or "street lamp" or "street lamps" or "lamp" or "lamps" or "street light" as the streetlights.

The moon is a backdrop. The moon is in City. The description of the moon is "The moonlight is sickly silver. It pulses arrhythmically in the fog."

Understand "silver/sliver/moon/moonlight" or "moon light" as the moon. Understand "light" as the moon when the location is Street.

Part Street

The description of Farther Down Street is "[street-description]"

To say street-description: 
	say "[one of]CRACK[period][or]It's quiet here -- except for your breathing, which is heavy and fast. You have to walk.[paragraph break]You are among the shadows of apartment buildings, all dark, all teeming with death. Somewhere in the distance, a dog howls -- you hate to think what it's been surviving on.[paragraph break]You pass reddish embers in the dark. It didn't take you long to become accustomed to piles of burning corpses -- but this one strikes you as unusual. A single body appears to have rolled off the pile before it could ignite.[paragraph break]You note with dismay that you have left a trail of blood behind you. The bullet must have hit an artery. So much for losing this mob.[or]Dying flames feast on human remains. An unburned corpse appears to have rolled off one of the mounds[period][stopping]"

the corpse is a person in Farther Down Street. The description of the corpse is "Slightly bloated, one of the corpses is a young man in his 20s wearing rollerblades.[one of][paragraph break]You wish you could GIVE LIFE to him, but you've tried this kind of thing before, and nothing.[or][stopping]"

Understand "unburned/corpse" or "dead/body" or "young/man" as the corpse.

When play begins:
	now the corpse is dead.

Understand "young/man" or "dead/body" as the corpse.

The rollerblades are a wearable thing. The rollerblades are plural-named. The corpse wears the rollerblades. The description of the rollerblades is "The rollerblades are well worn. This person probably spent a lot of time on them before his sudden demise."

Understand "roller/blades" or "roller/skates" as the rollerblades.

Instead of taking the rollerblades:
	say "With your leg the way it is, there's no way you could move in rollerblades.";
	
Before going when the location is Farther Down Street:
	say "You follow the uneasiness before you. Exact directions mean nothing at the moment.[paragraph break]You hear [if the corpse is examined]the [italic type]click clack[roman type] of rollerblades[otherwise]footsteps[end if] behind you. When you turn, you see only splotches of flame in the night.";

Instead of going when the location is Farther Down Street:
	now the player is in South Side.


Part Business District

Business District is a region. Business District is in City.

Chapter South Side

South Side is a room in Business District. The printed name of the South Side is "South Side of Skyscraper". 

The description of South Side is "[one of]The pain in your leg explodes. You stumble and black out for a few seconds.[paragraph break]When you awake, you find your fall knocked the helmet off. You manage to stand, but you leave the helmet where it is. You can't summon the strength to put it on.[paragraph break][or][stopping][if South Side is unvisited]You take in your surroundings in the moonlight. [end if]You're a little more lucid now and have a better sense of direction. You notice streets downtown are laid out and labeled in a grid, though a winding gravel path that goes northeast seems to be the exception. The entrance of this office building is to the north. It's the tallest skyscraper around[if the Lobby is unvisited] and also happens to be where she is lurking[end if].[if South Side is visited] The doors are open, and the lights are on[otherwise][paragraph break]Lights on some of the floors flicker to life, and the front doors appear to open on their own.[paragraph break]She is waiting[end if].[if the helmet is in South Side][paragraph break]Your helmet is here.[end if]";

the skyscraper is a backdrop. It is in Business District and Fleshy Bridge and Roof. The description of the skyscraper is "[if the player is in Roof]You are at the top of the skyscraper[otherwise if the player is in Fleshy Bridge]The skyscraper is a fuzzy outline in the fog[otherwise]The skyscraper is a gray shadow of stone and glass, towering above the other buildings. [glow-windows][end if]."

To say glow-windows:
	if Resolution has happened:
		say "Its windows are dark";
	otherwise:
		say "Some of its windows glow";

The double doors are north of South Side and south of Lobby. The double doors are a door. The double doors are plural-named. The double doors are open.

The description of the double doors is "The double doors are made of a sturdy, thick glass." 

Understand "glass/double/doors" or "glass/double/door" or "front/door" or "front/doors" or "entrance" or "frame" or "door frame" or "doorframe" or "something metallic" as the double doors.

Before opening the double doors:
	if the noun is open:
		say "The doors are already open." instead;
	otherwise if the noun is closed and the player is not godly and the location is Lobby:
		say "[one of]A bottomless sense of hopelessness swallows you. Why not get fate over with? [or][stopping]You try to open the doors, but they may as well be part of the wall." instead;
	otherwise if the player is godly:
		say "[one of][enter-skyscraper-godly][or]Getting past the music inside will be impossible. You'll have to figure out another way to the roof.[stopping]" instead;
	otherwise:
		say "You have no desire to enter that sky-high tomb." instead.

has-entered-skyscraper-godly? is a truth state that varies.

To say enter-skyscraper-godly:
	now has-entered-skyscraper-godly? is true;
	now the description of Lobby is "";
	say "You give the doors a superhuman yank. They don't visibly break, but something metallic pops in the inside of the frame. You nudge the doors, and they swing open.";
	now the player is in Lobby;
	say "You take one step into the Lobby. The lights are still on, but no one is here to greet you this time. Good. Now, you just have to bound up the stairs, stop Denise somehow, and then --[paragraph break]Notes from invisible speakers assault your ears and brain. [if the player has the iPhone].You can't even make out humming from the phone you carry. The additional music[otherwise]The music[end if] is devoid of lyrics, and the notes are slow, sad, and deafening loud[if the player wears the cowl] -- loud enough to penetrate the helmet[otherwise]. Even if you wore your helmet, you'd be overwhelmed, the music is so loud[end if].[paragraph break]The next moment is weakness, instinct, and panic. You collapse backward out of the lobby ...";
	now the description of South Side is "";
	now the player is in South Side;
	say "... and onto the sidewalk.[paragraph break]You jolt backward. With shaking feet, you kick both doors shut in a swift movement, as if you were pulling you hand out of a fire. The music immediately disappears.[paragraph break]You pant and take a moment to gather your strength. Your exposure to notes and rhythm only gave you pain and didn't harm you much, thanks to the helmet. But even though the music was more deterrent than weapon, there's no way you would survive fifty floors of it.[paragraph break]You're more concerned about the fact that you will not have surprise on your side. It makes sense -- just as the dread in the back of your mind tells you another beat witch is close, so she must know that you are no longer dead -- and you are an unwelcome invader[if the player does not have the iphone].[paragraph break]Like all good invaders, you'll need a weapon[end if].";
	now the description of South Side is "[south-side-desc-resurrection].";

Instead of attacking the double doors when Resurrection has happened:
	try opening the noun; 

Before closing the double doors:
	if the noun is closed:
		say "The doors are already closed." instead;

Understand "tallest building" or "tall building" or "taller building" or "tall/tallest/highest/high/big/biggest/skyscraper/gray/grey/shadow/building/stone" as the skyscraper. 

Does the player mean doing something to the skyscraper:
	it is likely;

Understand "outline" as the skyscraper when the location is Fleshy Bridge.

Understand "roof" as the skyscraper when the player is in Fleshy Bridge.

The windows are a thing. The windows are part of the skyscraper. The windows are plural-named. The description of the windows is "[if Resolution has happened]The skyscraper's windows are dark[otherwise]Some of the skyscraper's windows glow a pale yellow[end if]."

Before doing something to the windows: 
	if the location is in City:
		if the current action is examining:
			continue the action;
		otherwise:
			say "You can't reach the windows[if Resurrection is happening] -- yet[end if]." instead;

Instead of doing something to the windows when the location is Roof or the location is Fleshy Bridge:
	now the noun is the skyscraper. [Obviously, we can't see the skyscraper windows when we are on the roof.]

Does the player mean entering the skyscraper:
	it is very likely.

Before entering the skyscraper:
	try going north instead;
	
Does the player mean climbing the skyscraper:
	it is very likely;

Instead of climbing the skyscraper:
	try going up;

Rule for clarifying the parser's choice of the skyscraper when Resurrection has happened:
	do nothing instead;	

Before going a direction (called way) when the location is South Side:
	if way is north:
		continue the action;
	otherwise if way is up:
		if the player is not godly:
			say "If you want to go up, you're going to have to go inside the building." instead;
		otherwise if Musical Found Phone has ended: 
			say "You spread the fingers of your right hand onto the building's surface, like a normal person about to play the piano. You push.[paragraph break]The stone cracks and groans, and your fingers slide into newly created holes. You kick to the left, and a chunk of rock flies out of the facade. A foothold.[paragraph break]You reach up with your left hand and smash a new grip for your fingers. You hoist yourself up. With your free foot, you pound a new place to step.[paragraph break]It's laborious and slower than you'd like, but you can't risk falling -- you doubt you'd have enough excess life force remaining in you to cheat death again. All you can do is keep a steady pace as you dig into the stone and pull yourself up, over and over.";
			now the player is in Climbing-Up;
			say "You are focused on your climb and not looking down -- so much so, that you don't notice the shadows gathering at the nearby windows until rotting hands burst through glass.[paragraph break]";
			if the player has the iPhone:
				say "You let out a gasp of surprise. But the undead extensions of Denise shrink back immediately at the music you carry with you. They cover their ears.[paragraph break]You climb higher.";
				follow the scene changing rules; [Resurrection should end]
				now the player is in Still-Climbing-Up;
				say "Higher ...";
				now the printed name of Still-Climbing-Up is "Still Climbing";
				now the player is in Still-Climbing-Up;
				say "Even higher ...";
				now the player is in In-Clouds;
				press any key;
				say "The smoky fog veils everything and makes you doubt your sense of up and down. You reach upward, but instead of finding stone, you feel something cold and trembling.[paragraph break]You give it a couple experimental pulls. Despite the quaking, it is solid -- for now. You clamber onto the strange surface.";
				press any key;
				now the player is in Fleshy Bridge instead;
			otherwise:
				say "A hundred fingers grab you by the face and neck. You struggle, but your strength is no match for numbers. The undead fling you off the building.";
				now the description of Falling is "There is no return from this. Not this time. If only you had something with you that would ward off Denise's army ...";
				now the description of South Side is "You slam into the street, forming a second crater in a whoosh of pain and exploding pavement.[paragraph break]You do not arise.";
				now the player is in Falling;
				now the player is in South Side;
				[stop Sound of Steve Music;]
				die instead;
	otherwise:
		if Resurrection is happening:
			say "[if has-entered-skyscraper-godly? is true]You're convinced the way back to Denise is right in front of you[otherwise]You are not going to wander around and hope Denise stops herself[end if]." instead;
		otherwise if Lobby is unvisited: 
			say "You must face the beat witch. The doors are to the north." instead;
		otherwise:
			continue the action; [This should only activate during the final scenes of the story.]


Understand "pale/yellow/light/lights/window/glass" as the windows.

The path is a backdrop. The path is in South Side and Park and North Side. 

Understand "gravel/path" as the path. The description of the path is "The path [if the location is South Side]winds northeast[otherwise if the location is Park]angles northwest and southwest[otherwise]ends here. It can take you back to the park if you go southeast[end if]." 

Instead of taking the path:
	if the location is South Side:
		try going northeast; [This leads us to the park.]
	otherwise if the location is Park:
		say "You need to choose going NORTHWEST or SOUTHWEST.";
	otherwise: [location is North Side]
		try going southeast;

Does the player mean doing something to the path:
	it is likely;
	
Rule for clarifying the parser's choice of the path:
	do nothing instead;


The curl is a thing. 

The description of the curl is "A strand of golden hair is in the gutter next to the photo album."

Understand "strand/hair/hairs/curl/gold/golden/lock/locks" as the curl.

Instead of taking the curl:
	say "As soon as you pick up the curl, its gold pales to gray, then white. The hairs twist, wither, and burst into dust, which flies from your fingers on a breeze.";
	remove the curl from play.	

Chapter Climbing-Up

Climbing-Up is a room. The printed name of Climbing-Up is "Climbing". [Not sure what to call this.]

Still-Climbing-Up is a room. The printed name of Still-Climbing-Up is "More Climbing".

In-Clouds is a room. The printed name of In-Clouds is "Into the Mist".

Chapter Fleshy Bridge

Fleshy Bridge is a room.

Instead of entering the corpses when the location is Fleshy Bridge:
	say "You are standing on countless human bodies already."

The description of Fleshy Bridge is "[if unvisited]You are on a body.[paragraph break]It's shaking from side to side, as if in pain, but it has a limited range of movement. You can barely see it through the fog, and the head is twisting away from you, but it's one of the [company] engineers. You take a quick step to the side, and you almost slip. You're on yet another quivering body. They are everywhere.[paragraph break]It takes a moment to process what you're seeing.[paragraph break][end if]You are standing on a tight, narrow clump of corpses with limbs tangled with one another like a swarm of insects. The entire knotted mass is shaking in agony, and the ones immediately beneath you and around you -- where the iPhone is loudest -- are moving the most.[if unvisited][paragraph break]The mist thins. You can now see that the human bridge begins at the edge of the skyscraper roof and slopes downward across the street to another building to the south. More clouds part, and you make out other bridges in the distance, going from building to building,[end if][paragraph break]This is Denise's private highway of the dead and her ticket to leave town unseen.[if unvisited][paragraph break]The fog swallows everything again.[end if]";


Instead of going a direction (called way) when the location is Fleshy Bridge:
	if way is south:
		now is-prisoner-of-bridge? is true;
	otherwise if the way is north:
		say "Denise is no longer on the skyscraper roof. You sense she has used this awful bridge to go south.";
	otherwise if Final Battle Drones is happening:
		say "You're not any condition to go anywhere.";
	otherwise:
		say "You only want to find Denise. You can feel her presence in the south.";


[More clouds part, and you make out the shadows of other bridges in the distance, going from building to building,]


Chapter Flying

Flying is a room.


Section Areas Near Skyscraper Not Seen Till Resolution

Chapter Park

Park is a room in Business District. Park is northeast from South Side.

The description of Park is "This small park in the skyscraper's shadow features a dumpster, a swing set, and yellowed grass.[paragraph break]The winding gravel path goes southwest and northwest."

The grass is scenery in Park. The description of the grass is "The dying grass has not been watered for weeks."

The dumpster is scenery in Park. The description of the dumpster is "As rusted as the swing set and as yellow as the grass, the dumpster brings the elements of the park together perfectly."

Understand "trash/garbage/can/bin" as the dumpster.

Before doing something to the dumpster: 
	if the current action is examining:
		continue the action;
	otherwise:
		say "You don't dare go near the dumpster. You hate to imagine how long the trash has been there." instead;
	
Section Swing Set

The swing set is an enterable supporter in Park. The swing set is fixed in place. The description of the swing set is "The swing set is [if the swing set is not ridden]rusty, rickety, and inviting[otherwise]a rusty reminder of your life before[end if]." Understand "rust/rusty/swing/swings" as the swing set.

The swing set can be ridden.

Report entering the swing set:
	unless the swing set is ridden:
		say "You are so tired.[paragraph break]You sit on a swing, resting at first. Then your legs instinctively push back, then up -- over and over. You find yourself kicking into the sky before you realize what you're doing.[paragraph break]You are no longer Polly Miller, the world's most wanted beat witch. You are just Polly -- aspiring tuba player, student of the month at her school, beloved daughter of Devin and Anne Miller of 808 Pine Drive. [paragraph break]The park widens to include two slides, a jungle gym, and tree-lined green field that maybe goes forever. The laughter of children banishes silence.[paragraph break]'Higher, Mom!' you shout. A little higher, and you're sure you can tap those blue jays flying just beyond your feet.[paragraph break]Smooth, gentle hands nudge you farther into the sky, and you can't stop giggling in delight, even though you're too old for Mom to push you. But somehow, she can get you to soar higher than you can on your own.[paragraph break]You squint and just make out Dad and Benny in the distance. They are walking toward you and Mom -- holding two ice cream cones each! Benny sees your excitement and pretends to lick your ice cream -- it's yours because it's chocolate, of course.[paragraph break]This, the best Saturday of your life, is the final Saturday of everything. The next morning, you will wake up a beat witch.[paragraph break]The park constricts, and the grass yellows. The blue jays become carrion crows that disappear into the fog. Silence smothers the world.[paragraph break]Your feet drag on the ground, and you skid to a stop.";
		now the swing set is ridden instead;
	otherwise:
		say "You're done swinging. You sit instead, letting the city's silence tear you apart." instead;
		
Playground-swinging is an action applying to nothing. Understand "swing" as playground-swinging.

Instead of playground-swinging:
	if the player is in Park or the player is on the swing set:
		try entering the swing set;
	otherwise:
		say "There are no swing sets here.";

Instead of going up when the player is on the swing set:
	try entering the swing set;
	
[Instead of going up when the player is in Park:
	try entering the swing set;]

Understand "play on [swing set]" or "swing on [swing set]" or "ride [swing set]" or "ride on [swing set]" as entering.

[What will quiet my silence? Can you remember forgetting?]
[Note from future Patten: I have no idea why I wrote that.]

Chapter North Side

North Side is a room in Business District. The printed name of North Side is "Alley".

The description of North Side is "The gravel path coming from the southeast ends in an alley on the north side of the skyscraper. [north-side-body-count][paragraph break]Brown water trickles into a sewer grate near the far wall. Next to the grate is a bashed-in TV and your shattered Walkman[if the ribbon is not worn by the player], which partially obscures a long, fluttering ribbon[otherwise][end if].[if Steve is in the location]Dr. Steve [end if]" 

North Side is northwest from Park.

Definition: A room (called place) is hal-margo if Hal is in the place and Margo is in the place.

To say north-side-body-count:
	if Hal is in North Side or Margo is in North Side:
		say "[paragraph break]";
		if North Side is hal-margo:
			say "Hal and Margo's";
		otherwise if Margo is in North Side:
			say "Margo's";
		otherwise if Hal is in North Side:
			say "Hal's";
		say "[run paragraph on] remains are broken and still.";[*bob, make this into a paragraph]

Understand "remains/body/bodies" as a dead person when the location is North Side.

Section Water

the water is scenery in North Side. The description of the water is "The water is a thin sludge that inches its way into the sewer below."

Understand "mud/muddy/water/filth/stream/sludge" as the water.

Instead of drinking the water:
	say "[one of]You lap up the brown water like a dog and spew it out. You will never be thirsty enough to drink that[or]You will never drink that filth[stopping]."


[argh, i can't get this to work!]	
Rule for supplying a missing noun while drinking:
	now noun is the water;
	
Does the player mean drinking the water:
	it is very likely;
	
Rule for clarifying the parser's choice of an other person when the current action is drinking and the water is in the location:
	do nothing instead;
	
Section Sewer Grate

the grate is down from North Side and up from Sewer. the grate is a door.  The description of the grate is "The iron grate leads to the sewers below the city. It [if the grate is open]stands open[otherwise]is closed."

Understand "iron/hinge/sewer/gate/bars" as the grate. Understand "darkness/dark/abyss" as the grate when the noun is open.

Report opening the grate:
	say "You grab the bars and heave upward with all the energy you have. A hidden hinge groans, but the grate opens so it stands perpendicular to the ground.[paragraph break]Below you is darkness, where creatures like you are supposed to belong."; 
	follow the scene changing rules instead;
	
Before going down when the location is North Side and the grate is closed:
	try opening the grate instead; [Dr. Steve interrupts us from going down.]
	
Before going down when the grate is open and the location is North Side:
	if Steve is not in the location:
		do nothing instead; [We don't want the player leaving before Dr. Steve makes it!]
		
Report going down when Resolution Steve is happening:
	say "You roll into the darkness of the sewer.";
	now the player is in Sewer instead;
	
Instead of closing the grate:
	say "It took everything you had to open it. As much as you don't want to not leave any clues about your exit from the city, you leave the sewer grate open.";
	
Before opening the grate:
	if the player does not wear the ribbon:
		say "[one of]You reach down to open the grate, but you can't make yourself do it. Not without Benny[or]You're not leaving without Benny[stopping]." instead;
	
		
Section Wall

The wall is scenery in North Side.

The description of the wall is "The high wall is dark, rain-stained brick."

Understand "high/brick" as the wall.

Instead of climbing the wall:
	say "[one of]You try to climb the wall, but you are weak and don't get very far. You land in the sludge near the sewer grate[or]You don't have the strength to climb that wall[stopping]."

Section Ribbon

The ribbon is a wearable thing. Understand "tape/voice/Benny/strip" as the ribbon. Understand "wrist" as the ribbon when the ribbon is worn.

The description of the ribbon is "The shimmering ribbon [if the ribbon is worn]you wear [end if]is all that remains of your cassette tape -- and Benny."

Before taking the ribbon when the ribbon is not enclosed by the player:
	if the ribbon is not worn by the player:
		now the player has the ribbon;
		try wearing the ribbon instead;
		
Before wearing the ribbon:
	if the ribbon is worn by the player:
		continue the action;
	otherwise:
		say "[wearing-ribbon].";
		now the player wears the ribbon instead;
	
To say wearing-ribbon:
	say "You won't lose Benny, even if you can no longer hear him. You carefully wind the ribbon -- his voice -- around your wrist.[paragraph break]You know Benny didn't actually live in the cassette, but as you survived alone in the shadows, it started to seem that way ... [paragraph break]There is one way to hear him again, and it has nothing to do with Walkmans. [paragraph break]The thought excites and panics you -- not that you haven't imagined it countless times before, except now, it may break through the prison of your hopes";
	
Before taking off the ribbon:
	say "You would rather die than lose Benny forever." instead; 
	

[Before taking the ribbon when the ribbon is not worn:
	try wearing the noun;
	
Carry out wearing the ribbon:
	if the ribbon is worn:
		do nothing instead;]
	
[Before taking the ribbon:
	if the ribbon is worn:
		do nothing;
	otherwise if the current action is not wearing:
		if the noun is not worn by the player:
			try wearing the noun instead;]


[Instead of entering the grate:
	try going down;]

Chapter Sewer

Sewer is a room. The description of Sewer is "You land in more sludge and filth." [the player will have no agency here]

Chapter River

River is a room.

Chapter Traveling

Traveling is a room.

Book Beach

Part Beach

beach-region is a region. [We only have this to move the sun.]

Beach is a room in beach-region. The description of Beach is "[if Beach is unvisited]It took you weeks to get to this peaceful spot where blue ocean meets pale sand.[paragraph break]Now that the lighthouse is in view to the north, you realize you have no idea how you are going to explain all this to Benny.[paragraph break]Was that -- someone moved past one of the lighthouse windows![otherwise]You are standing on a beach of pale sand. To the north, a lighthouse overlooks the purring ocean.[end if]";


the sand is scenery in beach. The description of the sand is "Pale, beautiful sand." 

Understand "beach/dirt/ground" as the sand.

Understand "make [sand] castle" or "make castle" or "make [sand]castle" or "create [sand] castle" or "create castle" or "create [sand]castle" or "dig" or "dig in [sand]" or "dig [sand]" as a mistake ("[castle-make].") when the location is Beach.

To say castle-make:
	say "[one of]You haven't made a sand castle in years.[paragraph break]Your fingers shape the moist sand, and before long, you have a single tower. You are pleased with it until you find yourself poking dozens of holes in it for windows and imagining someone falling from the top.[paragraph break]Why couldn't you just build a regular castle like a regular person?[paragraph break]You stomp your depiction of the [company] skyscraper into oblivion[or]You find no joy in sand castles anymore[stopping]";


the ocean is scenery in beach. The description of the ocean is "Blue waves capped with foam murmur against the sand."

Instead of drinking the ocean:
	say "[one of]You get down on all fours and take a big slurp. You are instantly on your feet, gagging. Have you really been running so long that you have forgotten the ocean is salty?[or]You're not drinking [italic type]that[roman type] again.[stopping]"

Understand "water/sea/wave/waves/foam/spray" as the ocean.

Instead of listening to the ocean:
	say "The ocean hisses like silk against the sand."

Instead of entering the ocean:
	say "There will be plenty of time to swim with Benny later."
	
Instead of going west when the location is Beach:
	try entering the ocean;
	
Swimming is an action applying to nothing. Understand "go swim" or "go swimming" or "swim" as swimming.

Swimming in is an action applying to one thing. Understand "go swim in [something]" or "go swimming in [something]" or "swim in [something]" as swimming in.

To say swim-rejection:
	say "This is not a place for swimming";

Instead of swimming:
	if the location is Beach:
		try entering the ocean;
	otherwise:
		say "[swim-rejection].";
		
Instead of swimming in something:
	if the noun is the ocean:
		try entering the noun;
	otherwise:
		say "[swim-rejection].";

After deciding the scope of the player:
	if the location is Beach, place the lighthouse in scope.
	
Instead of going north when the location is Beach:
	say "You trudge through the sand toward the lighthouse.[paragraph break]The door opens. Someone has seen your approach.[paragraph break]Tears and ocean spray sting your eyes, and walking becomes running.[paragraph break]It's him.";
	if Vorple is supported:
		if music-on? is true:
			play music file "the heroic dark alt short.mp3"; [no looping here!]
	otherwise: 
		if music-on? is true:
			play Sound of End Music;
	end the story finally;
	

After printing the player's obituary:
	if the story has ended finally:
		say "[line break][bold type]Polly Miller will return.[roman type]";
	otherwise if Descent is happening:
		say "[line break]The crow lands on your face and treats itself to an eyeball.";


Part Final Destination

Final Destination is a room.

the lighthouse is scenery in Final Destination. The description of the lighthouse is "The red and gray lighthouse gives you chills. You, Benny, and your parents visited it the summer before everything went wrong.[paragraph break]No shapes move past the windows or door now."

Understand "light/house" or "lighthouse" or "lite/house" or "litehouse" or "red" or "gray" or "grey" or "window" or "windows" or "shadow" or "shapes" or "shape" or "door" as the lighthouse.


Book Oficina

[Inside the skyscraper]

Oficina is a region. Hall is a region. Hall is in Oficina. [In Hall, we have the ever-present stairs. We have a container called office later, so I'm resorting to Spanish since my imagination is full.]

The floor is a backdrop. It is in Oficina. The description of the floor is "Carpet in some places and polished tile in others, it's just the floor."

Understand "tile" or "tiles" or "carpet" or "ground" as the floor.

Part Lobby

[I can't decide on a name of the company, so I'm going to be able to change it in one place.]

To say company:
	say "Tau Labs"; 
	
Lobby is a room.  Lobby is in Oficina. The description of Lobby is "The only clue the white-marbled lobby does not belong to a 5-star hotel is the gigantic logo behind the desk[one of][or], behind which sits [ted-or-corpse][stopping].[paragraph break]On one side of the desk is a doorless opening that is marked as TO STAIRWELL. On the other side is an elevator.[one of][or][paragraph break]Double doors lead to the street. The mob outside [if Bloodthirsty Mob has happened for more than nine turns]would gladly tear you apart[otherwise]is trying to break through them[end if].[stopping]"

The printed name of Lobby is "Main Lobby".

The logo is scenery. The description of the logo is "A flat silver disc bears the blocky emblem of [company] in muted reds and blues." The logo is in Lobby.  Understand "silver/sign/flat/disc/disk/emblem" as the logo.

The marble is scenery in Lobby. "The blue-veined marble is polished and probably expensive."

The desk is a supporter in Lobby. The desk is fixed in place. Understand "shiny/black/table/desk" as the desk. The description of the desk is "A desk of shiny black wood that was probably imported from a place you can't pronounce."

Instead of looking under the desk:
	say "Why would you snoop under the desk to find the door opener to let your would-be killers inside?";

The opening is scenery in Lobby. Understand "stairs" or "stairwell" or "stair well" or "twilight/dimness" or "passage" as the opening. The description of the opening is "A passage leads into a twilight dimness, presumably to the stairs."

Instead of taking the opening:
	try silently entering the noun;

Instead of entering the opening:
	now Ted is in Base;
	say "You've lost all sense of direction again. You stagger toward the stairs. You trip, and Ted immediately catches you. As jarring as it is for you to touch another person, you have no choice but to lean on his stiff shoulder[if ted-zombie is familiar] and try to forget you're relying on a corpse[end if].";
	now the player is in Base; [As in Base of Stairs. Inform gets confused, so we work around this.]
	now ted-identity is familiar;
	
Instead of going a direction (called way) when the location is Lobby:
	if way is up or way is down:
		say "(using the elevator)";
		try entering the elevator;
	otherwise:
		say "(entering the stairwell)";
		try entering the opening;

An elevator-lift is a kind of thing. An elevator-lift is always fixed in place.

There is an elevator-lift called the elevator. the elevator is in Lobby. 

Understand "button" or "lift" or "elevator/lift button" or "elevator/lift doors" as an elevator-lift. Understand "face" or "frowny face" or "frown" or "writing" as the elevator when the player is in Lobby. 

Understand "use [elevator-lift]" as pushing.

Instead of pushing or taking an elevator-lift:
	try entering the noun;


Instead of entering or opening an elevator-lift:
	if the location is Lobby:
		say "You push the elevator button. Nothing happens[if the elevator is unexamined]. The writing on the elevator doors may have something to do with this[end if].";
	otherwise if the location is Sales:
		say "You give the elevator button [one of]a[or]another[or]yet another[stopping] push. Nothing happens.";
	otherwise:
		say "The elevator is unusable. Its doors were mangled shut in the fire."

The description of the elevator is "Someone wrote 'BROKE. USE STAIRS.' on the elevator. In purple crayon. With a heart over the 'I' in 'STAIRS.'"

After deciding the scope of the player when the location is the Lobby:
	place the South Side in scope;

Part Stairwell

There is a room called Base. The printed name of Base is "Bottom of Stairs". Base is in Hall.

The description of Base is "You are at the base of what appears to be endlessly zigzagging stairs.[paragraph break][if Denise is comatose]A girl lies motionless on the floor. She clutches a gray book -- a photo album -- in her arms, and a Polaroid camera hangs from her neck by a strap. You believe she's breathing.[one of] Ted points at you, then her.[or][stopping][paragraph break]You don't care how he knows that you aren't a force of destruction only, that you can make life flow two ways ... but you are so weak! You want to help, but you doubt you have much life to GIVE her -- it would likely mean your death.[paragraph break]On the other hand, taking what meager life must remain in the child is a possibility. It would give you the strength you need to at least limp up the stairs to face the beat witch. The girl would not be strong enough to survive you draining her, though[otherwise][end if].[if thinking-powers-broken is familiar][one of][paragraph break](None of this matters if your powers don't work.)[or][stopping][end if]";

The stairs are a backdrop. The stairs are in Hall. The stairs are plural-named. Understand "stairwell" or "stair well" or "stair" or "upper/depths" as the stairs.

The description of the stairs is "In contrast to the marble of the lobby, the stairwell is pure utility. Iron stairs lead into the skyscraper's upper depths."

Before climbing the stairs:
	try going up instead; [* We may have to make this more nuanced.]

the bullet is a thing. The description of the bullet is "The bullet glimmers with your blood."

Understand "blood/bloody/metal/bullet/shell/cartridge/casing" as the bullet.

the crayon is a thing. The description of the crayon is "The crayon is a purple stub." 

When play begins:
	now Denise has the crayon.

Understand "purple/crayon/stub" as the crayon.

the voice is scenery. "It's a girl's voice, and you can't tell where it's coming from."

Understand "girls/voice" as the voice.

Instead of doing something to the voice:
	say "[description of the voice]";


Part 32nd Floor

Hall is a region. 

the wires are a backdrop. The wires are in Hall. Understand "sparks/spark/sparking/sparkling/wire/wires/ceiling"as the wires. The description of the wires is "Sparking wires hiss from the ceiling."

the scorch marks are a backdrop. The scorch marks are in Hall. Understand "scorchmarks" or "scortchmarks" or "scortch marks" or "burn marks" or "burn mark" or "scorch mark" or "scortch marks" or "wall" or "walls" or "flame" or "flames" or "fire" as the scorch marks. The scorch marks are plural-named. The description of the scorch marks is "A wave of flame appears to have swept across this part of the office building, half-destroying the walls and ceiling."

the hallway is a backdrop. The hallway is in Hall. Understand "hall" or "corridor" or "passage" or "hall way" as the hallway. The description of the hallway is "The red lights aren't bright enough for you to make out [unless the location is Upper Lobby or the location is Breakroom]either end[otherwise]the other end[end unless] of the hallway."

the lights are a backdrop. The lights are in Hall. Understand "red/emergency/light/lights/shadow/shadows" as the lights. The lights are plural-named. The description of the lights is "The red emergency lights brighten and dim rhythmically."

Instead of taking or touching the lights:
	say "Your hand passes through the light in a blur of shadow, not affecting it at all."

Chapter Upper Lobby

Upper Lobby is a room in Hall. 

[This old version the introduction of Hal is kept as a curiosity for those who are amused by such things.]
[A man in a soiled shirt and ragged tie is supporting himself against the wall. He points to his what's left of his badge. 'Are you ... alive?' He shakes his head. 'Nope, nope, can't be. You're the only one, Hal. The living gone. Just Hal. And the witch.'[paragraph break]He tries to squint you out of existence[or]Hal pretends you don't exist[stopping].[paragraph break][one of]Something crackles above you, and organ music gasps from hidden speakers[or]Hidden speakers above you spew organ music.[stopping] It's so soft, it won't kill you, but it's loud enough to make your head burn."]


The description of Upper Lobby is "[if Upper Lobby is unvisited]You awaken to fingers grasping your wrist.[paragraph break]You leap to your feet. Your leg feels fine -- it's as if you were never shot.[paragraph break]In the undulating red light, you face a man in a soiled shirt and ragged tie. His smile is wide but strained.[paragraph break]'A pulse! I didn't think I'd meet another living person,' he says. He suffocates you in a hug. You can't remember the last time anyone showed you affection, and you're not sure what to do.[paragraph break]Why do you feel lighter?[paragraph break]You shove him away and pat your pockets in a frenzy. Your Walkman and notepad are gone.[paragraph break]The man doesn't seem to notice your sudden panic.[paragraph break]'I'm Hal, chief executive of this establishment,' he says while showing you his corporate badge, which is unreadable, chewed-off plastic dangling from a lanyard. 'Usually the witch gives me little notes when I ... wake up, but I think this one's for you.'[paragraph break]Hal points to the only wall that hasn't been gnawed by flame.[paragraph break]Scribbled in crayon are the words 'BENNY ABANDONED YOU' accompanied by a happy face.[paragraph break]You are enveloped in a boiling nausea. How dare she listen to side B of your tape![paragraph break]You look around as you try to relax -- or at least stop shaking.[paragraph break][end if][upper-lobby-description-generic][pipe-presence][one of][scroll-to-last-command][or][hal-room-desc][stopping]"; 

To say upper-lobby-description-generic:
	say "You are in a lobby labeled as '32 - Research and Development.' Everything is lit in pulsing red emergency lights. Scorch marks twist over the walls and furniture, and wires dangle from the ceiling.[paragraph break]The floor bears a charred decorative compass that tells you the stairway door behind you is to the west, and the hallway beyond the lobby goes east. The elevator looks busted[period]";
	
the pipe is a thing. The description of the pipe is "A steel pipe about the length of a yardstick that must have fallen from the ineffective fire suppression system." 

[the pipe is in Upper Lobby.]

the pipe is nowhere. [We're removing the pipe for now -- it's too much of a distraction and doesn't do anything for the story. Originally, we were going to give the player the opportunity to bash Margo's head in with it. But it wouldn't hurt her very much, for some odd reason.]

Understand "steel/pipe/tube/yardstick" as the pipe.

To say pipe-presence:
	say "[if the pipe is in the location][paragraph break]A steel pipe is on the floor[period][end if]";

the lift is an elevator-lift. The description of the lift is "The elevator's doors have twisted permanently shut."

the lift is in Upper Lobby. Understand "elevator" or "button" or "lift" or "elevator/lift button" or "elevator/lift doors" as the lift. the printed name of the lift is "the elevator".

the writing is scenery in Upper Lobby. Understand "words/writing/crayon/graffiti/note" or "happy/face" or "benny/abandoned you" or "message" as the writing. The description of the writing is "Written in crayon[if the elevator is examined], just like the message in the main floor lobby[end if], the words 'BENNY ABANDONED YOU' leave you feeling filthy, ashamed and violated over the fact that the other beat witch listened to something personal of yours."

the compass is scenery in Upper Lobby. "Once a golden decoration painted onto the marble floor, the half-burned compass now tells you [upper-lobby-directions]."

Understand "marble/decoration/decorative/compass/floor" as the compass.

To say upper-lobby-directions:
	say "the stairway door behind you is to the west, and the hallway beyond the lobby goes east".

the furniture is scenery in Upper Lobby. "Couches and desks are disfigured skeletons of ash." Understand "couch/couches/desk/desks/sofa/sofas/skeleton/skeletons/ash/ashen/wood" as the furniture.

Instead of entering the furniture:
	say "[one of]The weakened, blackened wood collapses under your weight[if Hal is in the location and Hal is alive].[paragraph break]'Careful there,' Hal says[end if][or]The furniture is too damaged for that[stopping]."

the stairs-door is an openable container. the stairs-door is in Upper Lobby. the stairs-door is closed. the stairs-door is fixed in place. The printed name of the stairs-door is "door to the stairs" 

Understand "door " or "door to the stairs" or "door to stairs" or "stair door" or "stairs" or "stairwell" or "stair well" as the stairs-door. The stairs-door is privately-named.

The description of the stairs-door is "This is a large, blackened metal door."

Instead of attacking the stairs-door:
	try opening the noun;

Instead of opening the stairs-door:
	try going west.
	
Before going west when the location is Upper Lobby:
	say "[one of]You try to open the door to the stairwell. It is jammed[if Hal is in the location and Hal is alive]. The CEO hardly seems to notice your frantic banging on the door[end if][or]The door won't budge[stopping].[if Prisoner is happening][line break][Speaker] [one of]chuckles at[or]guffaws[or]does an exaggerated impersonation of you trying to open the door but failing in[at random] your efforts." instead;

Chapter Stairwell

Upper Stairs is a room. Upper Stairs is west from Upper Lobby.

Chapter Corridor

Corridor is a room in Hall. "[corridor-description][hal-room-desc]";

To say corridor-description:
	say "The corridor leads east and west.[paragraph break]The northern wall is mostly crumbled and charred to reveal the remains of a lab. The southern wall didn't fare much better, though an office door is intact. [office-stirrings] [if the pipe is in the location][pipe-presence] [end if]A memo has been posted near the door[if Prisoner is happening].[otherwise][period][end if]"; [We'll need an extra line break for the Speaker's antics/monologuing.]

To say office-stirrings:
	if Prisoner is happening:
		say "[one of]Shadows stir beyond[or]You think you hear something stirring inside the office[or]A presence scratches on the other side[at random][period]";


Understand "shadows" or "something" or "presence" as the office when Prisoner is happening.

Corridor is east from Upper Lobby. 

the lab is a backdrop. The lab is in Corridor and End of Corridor. The description of the lab is "Among the smashed and burned remains of computers, tables, and schematics is a rectangular, metallic thing the size of a bathtub[if the memo is examined] -- this must be the battery[end if]."

Instead of entering the lab:
	say "The lab is a ruined mess of wires and equipment that leaves you no room for you.";
	
Instead of going north when the location is Corridor:
	try entering the lab;
	
Understand "tables/table/computer/computers/schematic/schematics/remains/smashed/wires/equipment" or "northern wall" or "north wall" as the lab.

the prototype is a forbidden. the prototype is in Corridor. 

Understand "rectangle/metal/metallic/bathtub/thing/battery" or "bath/tub" as the prototype. 

The prototype is privately-named. The printed name of the prototype is "metal thing".

Understand "semper/battery/prototype/doohickey" as the battery when the memo is examined.

After examining the memo:
	now the prototype is not privately-named;

The description of the prototype  is "It appears the fiery destruction emanated from [if the memo is examined]the battery[otherwise]the metal thing[end if]."

The memo is scenery. The memo is in Corridor. Understand "office memo" or "paper" as the memo.

The description of the memo is "Written on a clean piece of paper someone must have posted here after the fire are the words:

[italic type]To all valued engineers:

I am pleased to announce that last week's small-scale tests of the Semper battery were a success. Although we are years away from using it to power submarines and military bases, I am confident these preliminary test results represent a step forward for this company.

A few of you have expressed concerns the full-sized prototype would set off a reaction that would result in, and I quote, a 'localized fiery explosion as well as a massive electromagnetic pulse that would have catastrophic effects on electronic devices in a 20-mile radius.' 

My brother Ted was opposed to further testing for this reason and unfortunately did not hide that fact from lower-level employees. However, we had an extensive conversation yesterday, and he is now as confident as I am that full testing will be a success and will be harmless to ourselves and the surrounding area. 

To the naysayers among us, I say if a respected engineer like Ted can change his opinion, consider re-evaluating yours.

The first full-scale test will take place at 11 a.m. Join us in the 32nd floor breakroom at noon for a celebratory luncheon.

Regards,
[line break]Hal Tau
[line break]Chief Executive Officer
[line break][company][roman type][if Hal Drama is happening][one of][paragraph break]'I didn't leave that there,' Hal mutters. He avoids eye contact. 'I wrote it, sure, but I would never have put my ... my lowest moment on display.'[or][stopping][end if]";

Instead of taking the memo:
	say "[one of]You think about taking the memo with you, but what good would it do?[or]An office memo will not help you defeat the beat witch.[stopping]";

[Our door and office are fake.]

the office is an openable container. the office is in Corridor. the office is fixed in place. Understand "office/door" or "southern wall" or "south wall" as the office. Understand "shadow/shadows/presence" as the office when Prisoner is happening.

the office is closed.

Instead of examining the office: 
	say "[if the office is open][office-description][otherwise]A thick door recently cracked with heat stands between you and what's inside this office [office-stirrings][end if].";

Instead of going south when the location is Corridor:
	try opening the office;
	
Before going when the location is Corridor and Hal Drama is happening:
	unless the current action is going south:
		if the office is open:
			say "Hal closes the office before you leave.";
			now the office is closed;
		

Before entering the office:
	try going south instead;

has-opened-office-prisoner? is a truth state that varies.

has-opened-office-hal-drama? is a truth state that varies.


Before opening the office when Prisoner is happening:
	if has-opened-office-prisoner? is false and monologue-complete? is false: [We want the Speaker to reach the end of Denise's story before we let loose the dead.]
		say "[one of]You reach out to open the door. You stop yourself.[paragraph break]Everything in this building feels off, but this office feels the most warped of all. Something is ... [italic type]changing[roman type] behind that door.[paragraph break]'Do it,' [Speaker] whispers behind you.[paragraph break]You turn, but [he-she-speaker] looks away as if nothing were said[or]Whatever is happening on the other side of that door is .... not right. It's hard to explain, even to yourself.[paragraph break][Speaker] snorts at your hesitation[stopping]." instead;
	otherwise if has-opened-office-prisoner? is false:
		now has-opened-office-prisoner? is true ;
		
Before opening the office when Hal Drama is happening:
	if the office is open:
		say "The office is already open, but it's hardly inviting." instead;
	otherwise if has-opened-office-hal-drama? is false:
		say "You open the office door.[paragraph break][office-description].[paragraph break]Hal dry heaves behind you.[paragraph break]'There are offices stuffed like this all over the building,' he says between gasps. 'But that doesn't make it any easier.'";
		now has-opened-office-hal-drama? is true;
	otherwise:
		say "[one of]Hal blocks your attempt to open the office door.[paragraph break]'I never want to see that again,' he says[or]Hal won't let you[stopping]." instead;


Instead of listening to the office when Prisoner is happening:
	say "Things are shuffling and scratching on the other side of the door."


Report opening the office:
	if Hal Drama is happening:
		do nothing instead;
	otherwise if Prisoner is happening:
		say "You open the office door and instantly regret it[if has-opened-office-hal-drama? is true], just as you did last time[otherwise].[paragraph break][office-description].[paragraph break]One by one, they wiggle between one another, freeing themselves to move[end if].";
		follow the scene changing rules;
	otherwise:
		say "The office door creaks open."; [We shouldn't ever reach this, but I'm a worrywart.]
	do nothing instead;
	
The reveal any newly visible interior rule does nothing when the current action is opening the office.

[To say hal-whimpers:
	say "[one of]Hal whimpers in a corner[or]'Close it,' Hal whispers.[or]Hal is shaking[or]Hal [at random]";]

Report closing the office:
	say "You close the office door. Hal's breathing becomes more regular.[paragraph break]'Let's not do that again,' he says.[paragraph break]" instead;
		
To say office-description:
	say "What was once an office for middle management is now stuffed with corpses. On the bottom of the pile are those with blistered flesh and singed lab coats -- not from any purposeful cremation, but from how they died. The unburned are on the top. They are so tightly packed, you can't count them. That smell -- you're going to be sick";

the corpses are people. the corpses are plural-named. The description of the corpses is "[if the corpses are in office][office-description][otherwise if the corpses are in Fleshy Bridge and Final Battle Drones is not happening]The dead are packed tight, a snarl of arms, legs, and putrid flesh. They form a narrow bridge that stretches downward from the skyscraper to an unseen building on the other side of the street[otherwise if Final Battle Drones is happening][bridge-danger][otherwise if Resolution is happening]The dead are broken, mangled, but, hopefully, finally at peace. You can't bear to look at them long[otherwise]The dead stare open-mouthed into emptiness[end if]." 

Understand "pile" or "mound" or "snarl" as the corpses when corpses are in the office.

Understand "lab coats" or "coats" or "blackened/flesh" or "unburned" or "dead" or "bodies" or "body" or "corpse" as the corpses.

Understand "undead" as the corpses when the corpses are zombie.

Understand "escort" or "escorts" as the corpses when Big Reveal is happening.

Understand "puppet" or "puppets" as the corpses when Big Reveal has happened.

Understand "bridge" or "highway" or "clump" or "engineer" or "knot" or "knotted/mass" or "snarl" or "putrid/flesh" as the corpses when the location is Fleshy Bridge.

Understand "carnage" or "blood" or "gruesome/scene" as the corpses when Resolution is happening.

the corpses are in the office.

Rule for clarifying the parser's choice of the corpses:
	do nothing;

When play begins:
	now the corpses are dead;
	

Before going east when the location is Upper Lobby:
	now torture-trigger is true;
	follow the scene changing rules;
	say "[if hal-flashback-spoken is false]Hal cringes a little and follows you[period][paragraph break][hal-drama-action][otherwise][run paragraph on][end if]";
	 [This allows us to make sure hal-flashback is printed, where he mentions Polly must have become a beat witch when she hit puberty. Important exposition we would otherwise miss if the player moves through the hallway too fast.]

Carry out going east when the location is Upper Lobby and Torture is happening and Corridor is unvisited:
	follow the report-going-during-Hal-Drama rule;


Chapter End of Corridor

There is a room called End of Corridor. "[if Explore is happening or Little Fight is happening][one of]This is where it ends.[paragraph break]A tall figure emerges from reddish shadows. According to the company-issued name tag, the young woman is Margo Harris. She's wearing earplugs.[paragraph break]'You found me! [italic type]Speechless[roman type], Polly?' She erupts into hollow giggles. 'You're so confused and underpowered -- oooh, and angry too! Does little Polly Dolly get mad when someone listens to her tape?'[paragraph break]Hal is wailing. 'How can it be you, Margo? I weighed in on the hiring process of everyone -- even interns like you. You didn't seem like a beat witch at all! I mean, you -- you can talk!'[paragraph break]'Toys must not squeak,' Margo says with a click of the tongue.[paragraph break]She nods to an arched opening to the east.[or]The hallway ends at an arched openinfg, beyond which is the breakroom. And sandwiches, apparently.[paragraph break]Margo's arms are folded in impatience.[stopping][otherwise]This is the end of the corridor.[end if][hal-room-desc]" 

End of Corridor is east from Corridor. End of Corridor is in Hall.

The gap is an enterable container in End of Corridor. The gap is fixed in place.

The description of the gap is "A wide arched gap in the far wall leads to the breakroom."

Understand "break room" or "breakroom" or "gap" or "opening" or "arch"  as the gap.

Instead of entering the gap:
	try going east.

Chapter Breakroom

Breakroom is east from End of Corridor.

To say ted-breakroom:
	say "Ted [if ted is dead]lies below the counter[otherwise if Hal is on the chairs]keeps Hal in his seat[otherwise if False Climax Margo Dangling is happening]holds your Walkman above his head[otherwise]stares through you unblinkingly[end if][if Hal is in Breakroom or Margo is in Breakroom], and[otherwise][period][end if]";

To say hal-breakroom:
	if Hal is not in Breakroom or Hal is on the chairs:
		do nothing;
	otherwise:
		say " [if Hal is drained]Hal is limp on the floor[otherwise if Hal is dead]Hal lies dead here[otherwise if Hal is strong]Hal's slight glow casts the room in ethereal shadows[end if][unless Hal is on the chairs][period][end if]";

To say margo-breakroom:
	if Margo is not in Breakroom:
		do nothing;
	otherwise:
		say " [if False Climax First is happening]Margo has you by the arms and won't let you get up from the chair you're sitting in[otherwise if Margo is dangling]Margo is dangling from a ledge outside the window[otherwise if Margo is struggling]Margo struggles against Hal[']s grip and is close to the edge of the broken window[otherwise]Margo [margo-waiting-reactions][end if][period]";
		
To say margo-waiting-reactions:
	say "[one of]licks her lips in anticipation. She's ready for you[or]stifles a mocking giggle while trying to keep a straight face[or]wears an expression that's either a smile or a snarl[or]waits for your next move[at random]"

To say characters-breakroom:
	say "[one of][or][paragraph break][ted-breakroom][hal-breakroom][margo-breakroom][stopping]";



The description of Breakroom is "[breakroom-description]";

To say breakroom-description: 
	say "[if the player wears the earphones]The earphone cord partially blocks your vision. You shake your head to get it out of the way.[paragraph break][end if]The flames that ravaged the corridor to the west left the breakroom untouched. This place was once ready to party: balloons are wilted rainbows on the ceiling, and a counter next to a refrigerator [if Ted is ted]is strewn with boxes of sandwiches[otherwise]bears boxes filled with flies and sandwiches[end if].[paragraph break]Small, round tables and pale chairs are angled toward a [if the window is broken]shattered[otherwise]wide[end if] window that overlooks a gray twilight fog[if the TV is in the Breakroom].  Next to the window is a small but bulky TV set[one of] controlled by a black remote on a table[or][stopping][end if][period][characters-breakroom][no line break]".

The room description body text rule does nothing when the location is the Breakroom and False Climax is happening and the player is strong and the current action is not looking. [So we don't see the above description when we get out of the chair.]

the TV is scenery in Breakroom. The description of the TV is "[unless the TV is broken]This bulky old TV set probably came from a manager's office years ago. You haven't seen one like it since pogs were a thing[otherwise]The TV is now a heap of glass and metal[end unless]."

Instead of switching on or switching off the TV:
	say "[if the TV is broken]There is no way the TV will ever work again[otherwise]The television doesn't have any visible buttons. It must only be operated by remote[end if].";

the remote is a thing. Margo holds the remote. The description of the remote is "The remote is a large black rectangle with more buttons than a sane person should deal with."

Understand "button" or "buttons" or "remote/control" as the remote.

Instead of pushing the remote:
	try taking the noun;

To say gray:
	say "Gray, corporate, and plastic";
 
some chairs are an enterable supporter in Breakroom. They are plural-named and fixed in place. The description of the chairs are "[gray]."

The can't travel in what's not a vehicle rule does nothing when the player is on the chairs. 

Report exiting when the player is on the chairs and the current action is not attacking:
	say "You get off the chair." instead;

Report exiting when the player is on the chairs and the player is drained:
	say "You stumble out of the chair to the floor." instead;

Report entering the chairs when the player is drained:
	say "You collapse onto one of the chairs." instead;
	
Report entering the chairs:
	say "You get on a chair." instead;

[the printed name of some chairs is "a chair".]

[The chairs can be binding.] [That is, we can't get up from them.]

Before taking something when chair-binding? is true:
	unless the noun is enclosed by the player:
		say "You can't reach [the noun]." instead;

Rule for printing an enclosure description when the described enclosure is the chairs:
	if Breakroom is unvisited:
		say "";
	otherwise: 
		say " (on a chair)";
	
Before exiting when the player is on the chairs:
	if chair-binding? is true:
		rule fails instead;
	otherwise:
		say "You get off the chair[if the player has the shard], and the shard rolls off your lap and onto the floor among the other pieces of glass[end if].";
		if the player has the shard:
			remove the shard from play;
		now the player is in Breakroom instead;

Instead of going when chair-binding? is true:
	rule fails instead;

the mesas are a supporter in Breakroom. the mesas are plural-named. the mesas are fixed in place. The description of the mesas is "[gray]." Understand "table/tables" as the mesas.

the mesas are privately-named. the printed name of the mesas is "the tables".

the balloons are scenery in Breakroom. The description of the balloons is "The balloons are colorful, deflated dreams."

the balloons are plural-named.

Before doing something to the balloons:
	unless the current action is examining:
		say "You can't reach the useless balloons." instead;

Understand "useless/balloon/baloon/balloons/balloon/rainbow/rainbows" as the balloons.


Understand "corporate/plastic/chair/chairs/seat/seats" as the chairs.

the refrigerator is scenery in Breakroom. The description of the refrigerator is "You don't even want to know what's inside." Understand "fridge" or "frige" or "refrigerater" or "refridgerator" or "refridgerater" as the refrigerator.

Instead of opening the refrigerator:
	say "Dare you?[paragraph break]You don't.";

the counter is a supporter in Breakroom. The counter is fixed in place. The description of the counter is "A black counter bears what once was lunch." Understand "counters" as the counter.

the sandwiches are scenery in Breakroom. The description of the sandwiches is "Covered in flies and an oozing mold, these sandwiches were once ... ham and turkey?[if Ted is dead] They are scattered all over the floor.[end if]"; 

The sandwiches are plural-named. Understand "fly/flies/maggot/maggots/ooze/oozing/oozy/mold/moldy/sandwich/sandwiches/bread/lunch/box/boxes/ooze/luncheon/food/ham/turkey/meat/grub" or "boxes of sandwiches" or "sand wich" or "sand wiches" as the sandwiches.

Before eating the sandwiches:
	say "You can't make yourself get close to the 'food.'" instead;

Instead of taking or touching the sandwiches:
	say "You gag at the thought of touching the sandwiches.";

the window is scenery in Breakroom. 

The description of the window is "[unless the window is broken]A wide window that once offered a view of thousands of lights below now overlooks a dense twilight mist[otherwise]A gaping hole and a shattered mess of glass are all that's left of the window[end unless]."

Understand "glass/shards/hole/ledge/shard/mess" or "piece of glass" or "piece" or "glass piece" as the window when the window is broken.

The shard is a thing. The description of the shard is "The shard is a long, jagged piece of glass from the broken window. It looks sharp enough to cut something."

Rule for clarifying the parser's choice of the shard:
	do nothing;

Instead of taking the window when the window is broken:
	say "[one of]You reach to take a piece of glass. A sharp edge bites into your finger. You banish the pain by sucking the single drop of blood[if Margo is in Breakroom and Margo is not dangling]. [paragraph break]'Attacking me with glass would do you no good anyway,' Margo says[end if][or]You're not cutting yourself again[stopping].";

Understand "glass/shard" or "piece of glass" as the shard when the player has the shard.

Does the player mean doing something to the shard:
	it is very likely.

Instead of dropping the shard:
	say "You feel like you're going to need this. Like, right now.";


the ledge is scenery. 

The description of the ledge is "[if Margo is dangling]Margo dangles from a[otherwise]A[end if] thin band of concrete."

Understand "concrete/cement/ledge/band" as the ledge.


Every turn when the window is broken and the ledge is not in Breakroom:
		now the ledge is in Breakroom;

Book Stairway

Stairway is a region.

Landing is a room. The printed name of Landing is "32nd Floor Landing".

33rd Floor, 34th Floor, 35th Floor, 36th Floor, 37th Floor, 38th Floor, 39th Floor, 40th Floor, 41st Floor, 42nd Floor, 43rd Floor, 44th Floor, 45th Floor, 46th Floor, 47th Floor, 48th Floor, 49th Floor are rooms in Stairway.


Part Call Center

[This is where we land near the end once the second battery explodes.]

Sales is a room in Oficina. The description of Sales is "[if unvisited]You somersault into cubicles, and they topple into one another.[paragraph break]The banging of office equipment falling fades. The building is filled with a heavy but relieved silence.[otherwise]You are in what appears to be a call center in [company]. Thanks to your grand entrance through the now-shattered window, this single-room floor is a mess.[paragraph break]Many of the cubicles have toppled into one another, strewing desks, phones, computers, printers, and paperwork everywhere.[paragraph break]A sign above the door to the stairwell and elevator to the west reads '16 - Outbound Sales.'[end if]";

The mess is scenery in Sales. The description of the mess is "You were a one-woman tornado when you arrived. Now, office equipment, papers, and cubicles are scattered everywhere."

Understand "stuff/cubicle/cubicles/desk/desks/phone/phones/telephone/telephones/computer/computers/printer/printers/paper/papers" and "paper work" or "paperwork" or "office equipment" or "office supplies" as the mess.

Instead of doing something to the mess:
	if the current action is examining:
		continue the action;
	otherwise:
		say "You don't want anything to do with [company][if the current action is taking][one of], and you don't want to take any of its things as a memento[or][stopping][end if].";
	
The sign is a backdrop. The sign is in Sales and Upper Lobby. The description of the sign is "The silver sign tells you what floor you are on. You're on Floor [if the location is Upper Lobby]32, where research and development[else]16, where sales[end if] happened." 

The sales elevator is an elevator-lift. The sales elevator is in Sales. The description of the sales elevator is "The elevator doors are shut forever."

Understand "label/silver/sign" as the sign.

The printed name of Sales is "Sales Floor".

Instead of going down when the location is Sales:
	try going west;

Part Lower Landing and Lower Stairway 

[To differentiate between regular Stairway, which we traverse when the zombies take us to the roof.]

Lower Landing is a room. The printed name of Lower Landing is "16th Floor Landing".  The description of Lower Landing is " [run paragraph on][no line break]".

Lower Stairway is a region.

15th Floor, 14th Floor, 13th Floor, 12th Floor, 11th Floor, 10th Floor, 9th Floor, 8th Floor, 7th Floor, 6th Floor, 5th Floor, 4th Floor, 3rd Floor, 2nd Floor are rooms in Lower Stairway.

the lower-stairway-door is west of Sales and east of Lower Landing. The lower-stairway-door is an open door. The printed name of the lower-stairway-door is "door to the stairs". The description of lower-stairway-door is "It's a large metal door between the sales floor and the stairs."

The lower-stairway-door is privately-named.


Book Roof

Roof is a room. The description of Roof is "[roof-description]"

To say roof-description:
	if Roof is unvisited:
		say "You burst into night and haze. You choke and realize the fog you have seen from afar is a thick mix of smoke and early morning mist. It's a billowing wall here.[paragraph break]Stiff fingers release you, and you tumble to concrete. The swirling mass of dripping flesh opens.[paragraph break]You and a machine are at the center of the circle of corpses.[paragraph break]It's a cylinder-shaped metal device, similar to the smashed ruin you saw in the lab, only this one appears to be functional. Its indicator light is [battery-light-color].[paragraph break]Your undead escorts wait, unmoving[period]";
	otherwise if Imminent is happening:
		say "You are hoisted by the dead and can only see the fog[period]";
	otherwise:
		say "You are in a starless world of mist and concrete, surrounded by the dead. [battery-on-roof][if Denise is in the location]Denise and [Speaker] watch you[end if][if the location is margo-ted]. Ted stares into eternity[period][end if]";
		
To say battery-on-roof:
	if the battery is in the location:
		say "[paragraph break]Countless corpses surrounded [if the battery is examined]the battery[otherwise]a strange device[end if][period]";
		
The concrete is scenery in Roof. Understand "floor/ground/cement/concrete" as the concrete. The description of the concrete is "Unforgiving and hard."

Part Battery

the battery is a device in Roof. The battery is fixed in place. Understand "semper/battery/prototype/metal/device/object/cylinder/machine" as the battery.

Understand "wire" or "wires" or "metal" or "scrap" or "debris" or "exploded" or "shrapnel" as the battery when the battery is shrapnel.

The battery can be shrapnel.

the battery is switched off.

The description of the battery is "[if the lab is examined][one of]You recognize this as the unbroken version of the smashed metal thing you saw in the lab on the 32nd floor. [or][stopping][end if][unless the battery is shrapnel]The tan metal cylinder is about five feet long and is labeled 'SEMPER BATTERY by [company].' Its small displays are active, and a light glows a deep [battery-light-color]. Below the light is a dial[otherwise]Scattered wires and charred metal are all that remain of the battery[end unless].";

The displays are a plural-named thing. The displays are part of the battery. The description of the displays is "These displays show graphs of power output and other things you can't understand." Understand "display" or "monitor" or "monitors" or "power/output" or "graph" or "graphs" as the displays.

The indicator light is part of the battery. The description of the indicator light is "The battery's indicator light glows [battery-light-color]."

To say battery-light-color:
	say "[if the battery is switched on]green[otherwise]red[end if]";

Understand "indicator/light" as the indicator light.

Understand "red" as the indicator light when the battery is switched off.

Understand "green" as the indicator light when the battery is switched on.

[We can confuse skyscraper windows with the indicator light.]

Does the player mean doing something to the indicator light when the battery is in the location:
	it is very likely;

Rule for clarifying the parser's choice of the indicator light:
	do nothing;
	
[End of indicator light confusion]

The dial is part of the battery. The description of the dial is "[unless the battery is shrapnel]This simple black dial is unlabeled but appears to have two settings[otherwise]You can't even find the dial[end unless]."

Understand "knob" or "setting" or "settings" as the dial.

Understand the command "twist" as something new. Understand the command "turn" as something new.

Definition: A thing is devicey if it is the battery or it is the dial.

Twisting is an action applying to one thing. Understand "twist [something]" or "pull [something devicey]" or "push [something devicey]" or "wind [something devicey]" or "turn [something]" as twisting.

Before twisting the dial when Big Reveal is happening:
	say "A corpse slaps your hand away from the dial.[paragraph break]'Whatcha think of my doohickey?' [Speaker] asks from behind you. 'The deceased-yet-friendly folks at [company] built a second one at my humble request. But ... by miracle and accident, it's more bomb than battery, and it'll fry every gadget in town -- including those of the music-making variety! So yes to jealousy but no to touchy.'";
	now polly-attempt-battery? is true instead;

Carry out twisting:
	if the noun is the dial:
		if the battery is switched on:
			now the battery is switched off;
		otherwise if the battery is switched off:
			now the battery is switched on;
		say "You manage to nudge the dial with a flopping hand.[paragraph break]The battery's light turns [battery-light-color]. A display reads, 'Commencing Semper Battery start. Checking status of on-board systems.'"; [The player can only turn on the battery during Final Battle Drones.]
	otherwise:
		say "That is probably not a good idea." instead; [failsafe -- should not resort to this line]

Understand "turn on [something batteryish]" or "turn [something batteryish] on" or "switch on [something batteryish]" or "switch [something batteryish] on" or "turn [something batteryish] on" or "[something batteryish] on" or "on [battery]" as switching on.

Understand "turn off [something batteryish]" or "turn [something batteryish] off" or "switch off [something batteryish]" or "switch [something batteryish] off" or "turn [something batteryish] off" or "[something batteryish] off" or "off [something batteryish]" as switching off.


To say cant-switch-shrapnel:
	say "The battery no longer works.";

Instead of switching on the battery:
	unless the battery is shrapnel:
		try twisting the dial;
	otherwise:
		say cant-switch-shrapnel;
	
Instead of switching off the battery:
	unless the battery is shrapnel:
		try twisting the dial;
	otherwise:
		say cant-switch-shrapnel;

Instead of switching on the dial:
	try twisting the noun;
	
Instead of switching off the dial:
	try twisting the noun;
	
The examine devices rule does nothing when the current action is examining the battery. [We already indicate if the battery is on or off.]

[Understand "turn on [battery]" or "turn [battery] on" or "turn off [battery]" or "turn [battery]"]

Before taking the battery:
	if the noun is shrapnel:
		say "The battery is useless debris." instead;
	otherwise:
		say "[if Big Reveal is happening][one of]You try to lift the machine, but you can barely get it a couple of inches off the ground. One of the dead puts her hand on your shoulder and yanks you backward. It's as if this device were some sort of treasure[or][too-heavy][stopping][otherwise][too-heavy][end if]." instead;

To say too-heavy:
	say "It's too heavy for you to lift"
	
Before doing something to the battery:
	if the current action is examining:
		continue the action;
	otherwise:
		if the noun is unexamined:
			try examining the noun;

Definition: A thing is nonbattery if it is not the battery or it is not enclosed by the battery.

Definition: A thing is batteryish if it is the battery or it is enclosed by the battery.

Book Falling

Falling is a room in City.

The description of Falling is "You are plummeting toward the ground.";

Part Wind

The wind is a forbidden. The wind is in Falling.

Understand "scream" or "howl" or "screaming" or "howling" as the wind.

Instead of examining the wind:
	try listening;
	
Instead of listening to the wind:
	try listening;

Part Crow

The crow is an animal in Falling. The description of the crow is "The crow is your shadow in the sky, spiraling nearby as you fall. You must look delicious."

Understand "bird/raven/crow/beak/wing/wings/feather/feathers" as the crow. 

Instead of taking the crow:
	say "[one of]You reach out to take the crow. Maybe, by some miracle, it can at least slow your descent. But the bird isn't [italic type]that[roman type] big, and it snaps at you[or]The crow is out of your reach now[stopping]."
	
Instead of touching the crow:
	try taking the noun;
	
Instead of attacking the crow:
	say "[one of]You swing your arm wide and hit the crow on the side of the head. You will not be its next meal![paragraph break]Black feathers fly everywhere. The bird reels backward, and it resumes its descent with you, unbothered[or]You try to hit the bird again, but it veers out of the way[stopping]."



Volume People

A witch is a kind of person. A witch is always female.

Definition: A person is nonwitch if it is not a witch.

Book Player

The player is a witch called Polly. Understand "polly/miller" or "mistress of death" or "pestilence incarnate" or "angel of death" as Polly. Understand "comet" as Polly when Descent is happening.

The description of the player is "[if the player wears a helmet][features-hidden][otherwise][polly-description][end if]."

To say features-hidden:
	say "Your features are hidden under the hazmat helmet[if the player is strong or the player is stronger], but you are emitting a small glow[end if]";

the glow is scenery. Understand "light" or "slight/glow" or "aura" as the glow.

Instead of taking the glow:
	say "It's already yours.";

The description of the glow is "Your body has a small aura of white light."

Every turn:
	if the player is strong or the player is stronger:
		now glow is in the location;
	otherwise:
		now the glow is off-stage;
	


To say polly-description:
	if the player is alive:
		say "Despite your tangled hair and mud-streaked skin, your flawless face looks as if it belongs to a fairy tale princess ... or a handmaid of death";
	otherwise if the player is strong: 
		say "You are glowing slightly";
	otherwise if the player is stronger:
		say "You have more life than you need and are glowing slightly";
	otherwise if the player is godly:
		say "You glow like an angel";
	otherwise if the player is wounded:
		say "You are a cold shade of pale[if Running is happening], and your leg is bleeding[end if]";
	otherwise if the player is uncomfortable:
		say "The soft music is making you tremble. You breathe in shallow gasps";
	otherwise: [should only fire if the player is drained, which should never happen]
		say "You are a wreck";


A face is a kind of thing. A face is part of every person. 

[Polly's face is called polly-face.

Understand "your face" or "my face" or "features" or "your features" or "my features" as polly-face.]

Before examining a face (called the mug):
	if the mug is part of a person (called the mug-holder) and the description of the mug is "":
		say "[description of mug-holder][line break]" instead;
	otherwise:
		continue the action;

The leg is a thing. leg is part of the player.  The description of the leg is "[unless the player is wounded]Your leg's feeling fine[otherwise]Your leg has been shot and is bleeding terribly[end if]."

ears are a kind of plural-named thing. ears are part of every person.

Understand "my ears" or "your ears" as the ears enclosed by the player. 

Before examining ears (called the lobes):
	if the lobes are part of an other person:
		say "They're just ears." instead;
	otherwise if the lobes are part of the player:
		say "Your ears are [if the player wears the cowl]hidden under the helmet[otherwise]just ears[end if]." instead;
		
[the covering verb is implemented at the very end of the code as it wouldn't work anywhere else. There seems to be a conflict with the command "cover," but I can't find it.]

Instead of covering something:
	if the noun is ears enclosed by the player:
		if the player wears the cowl:
			say "You can't. You're wearing the helmet.";
		otherwise:
			say "[if music-harm? is true]Plugging your ears slightly soothes the pain but not the harm[otherwise]Sadly, you cannot block out the world[end if].";
	if the noun is the leg and the player is wounded:
		say "You can't stop the bleeding.";
	otherwise:
		say "Covering [the noun] seems unnecessary.";
		
Instead of taking off ears:
	say "They appear to be firmly attached."


Instead of taking life from the leg:
	say "You can't drain your body parts."

Instead of touching the leg when the player is wounded:
	say "[one of]You touch your leg and instantly regret it. Even a light press with your finger feels like driving glass into your flesh. Your mouth opens in a silent howl[or]It is too painful to touch your leg[stopping]."
	
Instead of doing something to the bullet:
	say "The bullet is too deep in your leg for you to do anything to it."

hair is part of the player. The description of the hair is "[if the player wears a helmet][features-hidden][otherwise]Knotted, greasy, and wild[end if]."

Understand "my hair" or "your hair" as the hair.

skin is part of the player. The description of the skin is "[if the player wears a helmet][features-hidden][otherwise]Your skin is covered in grime[end if]."

Understand "my skin" or "your skin" as the skin.

Understand "wound" as the leg when Street is visited.

Understand "legs" as the leg.

Chapter Polly's Alignment

[Although the optimal ending is for Polly to be good, we want to give the player the ability to make her embrace the beat witch everyone thinks she is.]

Alignment is a kind of value. The player has alignment. the alignments are good, gray, and evil. [We already used "neutral" for Denise.]

When play begins:
	now the player is good.

 
Part Clothes

Before dropping something worn:
	say "(first taking off [the noun])";
	try taking off the noun instead;

Chapter Hazmat Suit

A hazmat-suit is a kind of thing. A hazmat-suit is wearable. 

The player wears a hazmat-suit called the uniform. The printed name of the uniform is "hazmat suit". The indefinite article of the uniform is "your".

Understand "tatters" or "tatter" or "rag" or "rags" as the uniform when Resurrection has happened.

pockets are a thing. pockets are plural-named. pockets are part of the uniform. The indefinite article of pockets is "your".

Understand "pocket" or "my pocket" or "your pocket" as pockets. Understand "lap" or "my lap" or "your lap" as  pockets when chair-binding? is true.

Understand "look in [something]" as examining.

Instead of examining the pockets:
	try taking inventory.

The description of hazmat-suits is "Bulky, yellow, and a useless means of keeping people safe from this 'plague.'"

Understand "protective/yellow/hazmat/suit/pants" as hazmat-suits.

Does the player mean doing something to the uniform:
	if the current action is not attacking or talking to:
		it is likely;
		
Rule for clarifying the parser's choice of the uniform:
	if the current action is examining:
		continue the action;
	otherwise:
		do nothing instead;

To say hazmat-helmet-desc:
	say "The helmet is a massive cowl that protects the head, face, and neck from whatever microbes emergency crews [if Bloodthirsty Mob has happened]once believed had[otherwise]believe have[end if] rained upon this city";
	

A helmet is a kind of thing. A helmet is wearable.

When play begins:
	repeat with H running through helmets:
		now the description of H is "[hazmat-helmet-desc].[run paragraph on]"

The player wears a helmet called cowl. The printed name of the cowl is "your helmet".

After examining the cowl: 
	say "[if the cowl is worn by the player][line break]It muffles sounds other than your own breathing, and its tinted visor makes everything slightly blurry. Wearing it makes you feel like a far-removed observer.[otherwise if the player carries the cowl][line break]It is cumbersome and heavy.[end if]";

Before wearing the cowl:
	if the player is wearing the earphones:
		say "The helmet is normally a snug fit. You can't wear it with the earphones on." instead;

Rule for clarifying the parser's choice of the cowl:
	do nothing;

Understand "bulky/big/large/cumbersome/heavy/helmet/headgear/mask" or "hazmat helmet" as the cowl.

the visor is part of the cowl. Understand "dark/strip/plastic" as the visor. The description of the visor is "[if the cowl is worn by the player]It obscures your vision a little, but the visor also hides your face from the outside world[otherwise]The visor is a dark strip of plastic in that constrasts with the yellow of the rest of the helmet[end if].";

Chapter Street Clothes

[Polly only wears these on the beach.]

street clothes are a wearable thing. street clothes are plural-named.

The description of street clothes is "You wear faded jeans and a stained shirt you scrounged during your travels here. You hope never to see another hazmat suit."

Understand "jeans" or "pants" or "shirt" or "outfit" or "t shirt" or "tshirt" as street clothes.

Instead of taking off the street clothes:
	say "Now is not the time for skinny dipping.";

Book Hazmat Crew

Part Crew Themselves

The responders are people in Staging Area. The responders are plural-named.

Rule for clarifying the parser's choice of the responders:
	do nothing;

Understand "emergency/crews/responder/Jessica/Dave/scientist/scientists" or "hazmat/emergency/crews" or "hazmat/emergency/crew/team/crowd" or "everyone" or "every one" or "everybody" or "every body" or "people" or "persons" or "human" or "humans" as the responders.

The description of the responders is "[responder-description]."

To say responder-description:
	if the location is Staging Area:
		unless iPhone Deadly has happened:
			say "Like you, the responders are wearing hazmat suits. Now that they are uncowled, they look less otherworldly and more world-weary. Their faces are lined with concern and frustration";
		otherwise:
			say "The responders [if Unmasked is happening]look suspicious and angry[otherwise]edge away from you. To them, you are pestilence incarnate[end if]";

The responders wear hazmat-suits called responder suits. 

The responders carry helmets called headgear. The headgear are plural-named.

Understand "cowls" or "responders helmets" or "responders cowls" or "helmets" or "helmets of responders" or "cowls of responders" as the headgear. The printed name of the headgear is "responders['] helmets".


Part Dr Steve

Steve is a man in Staging Area. The printed name of Steve is "Dr. Steve". 

Understand "Dr Steve" or "Doctor Steve" or "Doctor" or "Dr" as Steve.

The description of Steve is "[if the Steve is alive]Dr. Steve looks even more worn out than the others. His bald head drips with sweat, although the gym is a comfortable temperature[otherwise if Steve is drained]Dr. Steve sleeps peacefully[otherwise if Steve is half-drained]Dr. Steve can barely keep himself upright. Bubbling saliva drips from his chin[otherwise]Dr. Steve is quite dead[end if].[if iPhone Deaf is happening and Steve is not drained][paragraph break]He holds that phone in front of him to ward off the abomination that is you, but you both know music can do nothing to you at the moment[otherwise] He still holds that phone, but his only protection no longer works against you[end if]."

Book Ted

Ted is a man. Understand "man/guard/Ted/Tau/Teddy" or "pale/man" as Ted. Understand "VP" or "vice president" or "veep" or "president" as Ted when ted-identity is familiar. 

When play begins:
	now Ted is zombie;
	now Ted is in Lobby;

ted-identity is a subject.

ted-zombie is a subject.

To say ted-zombie-familiar:
	now ted-zombie is familiar;

To say ted-or-corpse:
	if ted-zombie is unfamiliar:
		say "Ted";
	otherwise:
		say "the living corpse";
	
The description of Ted is "[if Ted is Speaker and Final Battle Drones is happening]Ted is flopping around the bridge, a convulsing extension of Denise[otherwise if Ted is Speaker and Prisoner has happened]Ted no longer wears the expression of a frozen fish -- he now looks at you directly, mockingly. But he seems detached at the same time -- nothing like the grinning, living version of Ted on his ID badge[otherwise if Ted is zombie]Ted is expressionless and pale, in contrast to his picture on the badge dangling from his neck. He also wears a blazer, tie, and khakis, which don't seem out of place in this office, regardless of the plague outside.[paragraph break]He looks through you instead of at you. He appears to blink only when he remembers to do so[otherwise]Ted is motionless[end if].[if False Climax Margo Dangling is happening][paragraph break]He is ready to throw your Walkman.[end if]";

A getup is a kind of wearable thing.

Ted wears a getup called the blazer. 

Instead of taking the blazer when the player is wounded:
	say "Using Ted's clothes as a bandage seems like a good idea, but you doubt he would take kindly to you stripping him."

When play begins:
	repeat with g running through getups:
		now the description of g is "This outfit is more than a boring fashion choice -- it's a corporate standard[if g is Hal's outfit]. Hal's button-up shirt is greased and spotted, and his tie is ragged red[end if]." [All workers wear corporate outfits -- we don't want to spend a lot of effort on them.]

Understand "tie" or "blazer" or "jacket" or "khaki/pants" or "tie" or "outfit" or "khakis" or "khaki" as the blazer.

Before examining Ted's badge:
	now ted-identity is familiar;

Ted wears Ted's badge. The description of Ted's badge is "The badge shows a picture of a grinning, rosy-cheeked man with a caption that reads, 'Ted Tau, Vice President - Product Development, [company].'"

Understand "picture" or "photo" or "nametag" or "name tag" or "tag" or "caption" or "name badge" or "teds badge" as Ted's badge.

Book Margo

Margo is woman. Margo is in End of Corridor.

Margo can be hurt. Margo can be dangling. Margo can be struggling.


The description of Margo is "[if Margo is hurt]Margo's head is dented where you bashed it in. She hardly bleeds. [otherwise if Margo is dangling]Margo hangs from a ledge and is trying to pull herself up[otherwise if Margo is struggling]Margo is frantically trying to tear the earphones from her head[otherwise if Margo is dead]Margo is a mess of dried blood and twisted limbs, but she looks to be finally at peace[otherwise if False Climax Drain is happening]Margo gives you a mocking grin. She's waiting for your attack[otherwise]According to the corporate badge she wears, this tall young woman in torn slacks and a stained blouse is marketing intern Margo Harris[end if].[margo-seizure][margo-grasp]";

To say margo-grasp:
	if the player is on the chairs:
		say "[paragraph break]Her grasp on your arms is strong[unless chair-binding? is true] -- but you're sure you are stronger[end unless][period]";
		
To say margo-seizure:
	if Final Battle Drones is happening:
		say "[paragraph break]Like the other corpses, Margo is convulsing in Denise's agony[period]"

Understand "blood" or "limbs" as Margo when Margo is dead.

Understand "dent" as Margo when Margo is hurt.

Margo wears earplugs. The description of the earplugs is "Earplugs are jammed into Margo's ears." Understand "ears" or "ear plugs" or "earplug" or "ear plug" as the earplugs.

Before taking something held by Margo:
	say "[one of]You try to swipe the [noun], but Margo keeps it out of your reach.[paragraph break]'Nice try, Polly Dearest.'[or]There's no way Margo will let you.[stopping]" instead;

Understand "swipe" as taking.	

Understand "margo/harris" or "marketing/intern" or "margot" as Margo. 

When play begins:
	now Margo is zombie;
	
Margo wears Margo's badge. The description of Margo's badge is "Margo Harris' title is marketing intern. The unspoken message of her wide-eyed photo was that her first day of work was terrifying."

Understand "picture" or "photo" or "nametag" or "name tag" or "tag" or "caption" or "name badge" or "margos badge" as Margo's badge.

Margo wears a getup called Margo's outfit.

Understand "blouse" or "slacks" as Margo's outfit.

Book Hal

Hal is a man. Hal is in Upper Lobby.

Understand "Hal/Tau" or "man" or "ceo" or "chief executive officer" or "manager" as Hal.

The description of Hal is "[if Hal is dead][hal-dead-description][otherwise if Hal is drained][hal-drained-description][otherwise if hal is zombie][hal-zombie-description][otherwise if Hal is strong][hal-strong-description][otherwise][hal-regular-description][end if]."

To say hal-regular-description:
	say "[if False Climax First is happening]Hal holds your Walkman in shaking hands, unsure of what to do[otherwise if Musical Walkman is happening]Hal averts his eyes due to your suffering or his shame[otherwise]Hal is pale and seems to peer at you from the other side of a shadow.[paragraph break]Judging from how loose his button-up shirt and slacks are, he recently lost some weight. He wears a badge that has been chewed beyond readability[end if]";

To say hal-drained-description:
	say "Hal gazes back at you with half-lidded eyes[one of][period] He tries to stand, but he can only lift and drop his head. Impressive -- you've never seen anyone this strong so soon after being drained. You suppose he's had plenty of practice[or][stopping]";

To say hal-dead-description:
	say "Hal is almost peaceful and rather dead";
	
To say hal-zombie-description:
	say "Hal is devoid of any semblance of his old self[if Final Battle Drones is happening][paragraph break]Like the other corpses, Hal is convulsing in Denise's agony[end if]";
	

To say hal-strong-description:
	say "A faint glow radiates from below Hal's tense muscles";

Understand "muscles" or "hand" or "hands" or "glow" or "expression" or "face" as Hal when Hal is strong.

Hal wears a getup called Hal's outfit.

Understand "shirt" or "tie" or "sleeve" as Hal's outfit.

Hal wears Hal's badge. The description of Hal's badge is "Hal's badge is a chunk of half-chewed plastic dangling from a lanyard."

Understand "nametag" or "name tag" or "tag" or "name badge" or "plastic" or "lanyard" or "hals badge" as Hal's badge.


[To be used in room descriptions.]
To say hal-room-desc:
	if Hal is in the location:
		unless Margo is in the location:
			say "[paragraph break][one of]As you study the [printed name of the location in lower case], Hal studies you back[or]Hal can't seem to decide if you are a friend or an unspeakable terror made flesh[or]Hal avoids your gaze[or]Hal looks away from you[or]In the scarlet lights, Hal could be half-demon[or]Hal has the wild-eyed look of a desperate man[or]Although music is playing and you clearly can't drain him, Hal appears fearful of your presence[in random order][period]";
		otherwise:
			say "[paragraph break][one of]Hal can't bring himself to look at Margo, who beckons you onward[or]Hal keeps his eyes averted but his fist clenched[or]Hal appears to be on the verge of fainting[or]Hal's eyes are empty of every emotion but hatred[or]Hal silently begs you to do something[in random order][period]";
	otherwise:
		do nothing;


has-attempted-kill-hal? is truth state that varies.

Instead of attacking Hal when the player has the pipe:
	say "[one of]You lift the pipe above your head[period][if Steve is dead][paragraph break]How can you unsee Dr. Steve's lifeless face[question][end if][if denise-drain-attempt? is true][paragraph break]Maybe you are the stuff of nightmares, the giver of death. How can your forget your attempt to drain the half-dead girl on the stairs[question][end if][paragraph break]'Do it!' Hal whispers. 'Show me quick mercy, witch.' [paragraph break]You aren't ... this isn't who you are. Benny knew this.[paragraph break]Hal sighs at your loss of resolve, and he only looks a little relieved[if Margo is in the location]. Margo snickers at both of you[period] [end if][or]You can't bring yourself to do it[stopping].";
	now has-attempted-kill-hal? is true;


Book Denise

Denise is a witch. Denise is in Base.

Denise is privately-named.  [At first, we don't know Denise is the girl. We will fix this when we know Denise's identity (in Part Big Reveal).]

denise-name is a subject.

Every turn:
	if denise-name is unfamiliar:
		now the printed name of Denise is "the girl";
	otherwise:
		now the printed name of Denise is "Denise";

Understand "Denise" or "beat/witch" as Denise when denise-name is familiar.

Understand "little/child/girl/kid" as Denise.

Denise can be comatose.

When play begins:
	now Denise is comatose;

The description of Denise is "The girl can't be more than 12. She wears a torn plaid skirt and stained blouse, but her golden curls are immaculate[if Denise is comatose]. Her perfectly symmetrical lips are pressed together in a pout[end if].";

Denise can be mad, glad, or neutral.

To say make-denise-glad:
	now Denise is glad;

To say make-denise-mad:
	now Denise is mad;

To say make-denise-neutral:
	now Denise is neutral;

When play begins:
	now Denise is neutral.
	
Instead of attacking Denise when Denise is comatose:
	try waking the noun;

The curls are a thing. The curls are plural-named. They are part of Denise. The description of the curls is "Golden ringlets that highlight the perfection of the face." Understand "hair" or "ringlets" or "rings" or "golden/gold/curls" or "curl" or "strand of hair" or "strand" as the curls.

Understand "face" or "girls face" or "girl face" or "lips"  or "features" or "smile" or "grin" or "pout" as Denise's face. The description of Denise's face is "Each of the [Denise]'s features is the ideal size and distance from the others."

Denise wears the skirt. The description of the skirt is "The blouse and plaid skirt [Denise] wears could have come from an old-fashioned boarding school."

Understand "plaid/outfit/skirt/blouse/clothes" as the skirt.

Denise holds the album. Understand "gray/grey/photo/album/photoalbum/photo/book/scrapbook/pictures/photographs/photos/photograph/photo" or "scrap book" as the album.

Does the player mean doing something to the album:
	it is likely. 
	
Rule for clarifying the parser's choice of the album:
	do nothing instead;

The description of the album is "[if Denise is comatose][one of]You reach down to the ragged photo album, but Ted slaps your hand away[or]Ted doesn't want you reading the ragged gray photo album[stopping].[otherwise if Denise is alive]Now's not the time to be perusing the photo albums of your enemies.[otherwise][one of][full-photo-album-description][or]You don't dare look at the photo album again. The pictures of [Denise]'s victims will haunt you for many nights to come[stopping]." 

Before taking the album when Denise is dead or touching the album when Denise is dead:
	try examining the noun instead;
	[say "It feels dirty. You wouldn't want to take it with you." instead;]


Instead of opening the album:
	try examining the noun;
	

To say full-photo-album-description:
	say "Somehow, the photo album landed undamaged on a bloodless patch of the street. You pick up the book and open it.

	The pictures glued to the first pages are yellowed and faded. They depict what appears to be a happy, well-to-do group in formal poses. 

	You're guessing the photographs must have been taken in the late 1800s or just before World War I. The father and three sons wear ties that are probably fancy enough to be called cravats, and the mother and only daughter have lacy dresses that predict the era of the parachute.

	At the bottom of the pictures are the words 'FAM DAMILY' in purple crayon.

	You immediately recognize the daughter, who can't be older than 12: Denise with the same curls. She's smiling -- genuinely smiling -- with no malice in her eyes.

	You turn the page. The happy poses are gone.

	Instead, the pictures are taken at strange angles and overexposed -- not the work of the original photographer but an inexperienced amateur. Still, the subject is clear enough.

	These photos are of one person -- a mustachioed man holding a fiddle in lifeless fingers, lying on a lawn.

	Below, also scrawled in purple crayon, are the words, 'THE FIDDLER THEY HIRED THOUGHT I WAS DEAD. HE STOPPED PLAYING TOO EARLY!'

	The next page has more corpses in what appears to be the same front yard. You recognize them as her family. Their eyes are wide, and their mouths are open in eternal screams.

	Then words written so hard, they ripped part of the page: 'THEY TRIED TO KILL ME SO I GOT THEM.'

	You feel sick as you realize there are more pages. Many more. You flip through these quickly.

	The photographs improve in quality as Denise and the technology get better. But it doesn't change the fact that you're looking at bloodless slaughter. Her victims['] clothing changes with the decades, and they are always a random assortment of the terrified.

	Worse than the deceased are the captions. 'SURPRISE!' 'GOTCHA!' 'HOW'S THAT FOR A CHRISTMAS CAROL?' 'ME GUSTA WHEN THEY BEG.' 'HAPPINESS IS A COLD HAND.'
	
	You drop the book before vomit erupts from your throat";


the camera is a thing worn by Denise. 

the strap is a thing. It is part of the camera. Understand "belt" or "band" or "camera strap" or "flower" or "flowers" or "daisy" or "daisies" as the strap.

The description of the strap is "It's decorated in faded daises."

The description of the camera is "A purple Polaroid camera hangs from [Denise]'s neck by a strap decorated in flowers."

Instead of touching or taking the camera:
	if Denise is comatose:
		say "[one of]You move closer to the camera, but Ted's gaze suddenly shifts from expressionless to cold. You withdraw your hands[or]Touching the camera would make Ted angry, and you have more than enough enemies[stopping].";
	otherwise if Denise is dead:
		try examining the noun;
	otherwise:
		say "You freeze at Denise's glare. This Polaroid camera is just as important to her as the Walkman was to you.";



the photo is a thing. The description of the photo is "The picture is fading into being. You shake it.[paragraph break]Denise apparently took this on her way down.[paragraph break] It's a selfie taken slightly took close to her face. The skyscraper is a blur behind her, and her eyes are wide in terror. But her tongue sticks out of a snarling mouth. A raspberry from the grave. You shiver."

Understand "photo/photograph/picture/selfie" as the photo.

Does the player mean doing something to the photo:
	it is very likely.

After examining the photo:
	say "A stray wind yanks the photo from your hand. The still-developing picture of Denise scowls down at you as it swirls upward. It soars farther down the street until it is unseen.[paragraph break]Your first instinct is to chase after it, but you tell yourself it's better than the world forgets her -- including you.";
	remove photo from play;
	

	

Volume All The Things

Book Preliminary 

A thing can be examined.

Before examining something:
	now the noun is examined.

Instead of dropping something enclosed by the player:
	if the noun is the notepad:
		say "You decide to keep the notepad. It's how you communicate." instead;
	otherwise if the noun is the Walkman:
		say "You cannot. The Walkman is your only weapon." instead;
	otherwise if the noun is a helmet enclosed by the player:
		say "You decide to hold onto the helmet. It may prove a useful disguise later, though it hasn't done you much good so far." instead;
	if the noun is the pipe:
		continue the action; [We won't have the pipe for long, so this not a big deal.]
	if the noun is the iPhone:
		say "Having the music-spewing device fills you with revulsion and dread, but it's your only weapon. You will keep it.";
	otherwise:
		say "You may need [the noun]." instead;

Instead of taking off the uniform:
	say "You don't have time to undress.";

Book Broken Things

[These things will fall from the skyscraper: the Walkman, the cowl, the iPhone. When they hit, they will be broken, so their descriptions and behaviors will change.]

A thing can be broken. 

A thing can be broken-taken-attempted.

Instead of taking a broken thing:
	follow the broken-thing rule;

Instead of touching a broken thing:
	follow the broken-thing rule;
	
This is the broken-thing rule:
	if the noun is the window:
		continue the action;
	if the noun is the drones:
		say "The drones are crumpled, and their inner circuits are fried. They cannot harm you.[paragraph break]You still don't want one.";
	otherwise if the noun is the TV:
		say "You have no need for a broken [noun].";


To say hold-variations:
	say "[one of]pick up[or]hold[or]raise [the noun] to eye level[at random]"
	

Book Environmental

the fog is a forbidden. the fog is in Breakroom and Roof and Business District and Falling and Fleshy Bridge and Farther Down Street. The description of the fog is "A drifting [silver-golden] fog hides [if the location is South Side]the top of the skyscraper[otherwise if Imminent is happening or the location is Farther in City]the stars[otherwise if the location is Fleshy Bridge]nearly everything[otherwise]the darkness of the city below[end if]."

To say silver-golden:
	if the sun is in City:
		say "golden";
	otherwise:
		say "silver";
	

Understand "mist/sky/cloud/clouds/shroud/veil/smoke/haze" as the fog. 

Understand "nothingness/abyss/darkness/dark/shadow/shadows/twilight" as the fog when Descent has not happened.

the sun is a forbidden. The description of the sun is "The sun [if the location is Beach]shines white and hot[otherwise]is a sickly orange fire[end if]."

Understand "light/sky/morning" as the sun. Understand "fire" as the sun when the location is not Beach. Understand "sky" as the sun when the location is Beach. [Because sky is the fog elsewhere.]

Does the player mean doing something to the sun:
	it is likely; [So we don't confuse the fog and sun]


Book iPhone

The iPhone is a thing. The description of the iPhone is "[unless the iPhone is broken]This crepe-thin iPhone packs a strong speaker for its size[otherwise]What used to be a phone is now a lump of wires, glass, and plastic[end unless]."; [As of now, we're not going to show the broken iPhone.]

Understand "phone" or "speaker" or "lockscreen" or "lock screen" or "screen" or "iphone" or "i phone" or "gadget" or "device"as the iPhone.

Before taking the iPhone:
	if iPhone Deadly is happening:
		say "To reach the phone, you'd have to be standing up. There's no way you can do that when you don't have full control of your limbs." instead;
	otherwise if iPhone Deaf is happening:
		if Steve is drained:
			say "[one of]You take the phone, but only for a moment to consider the possibility.[paragraph break]You don't understand touchscreens, and it's strange to hold a device with one. What was the matter with buttons and dials? You'd never be able to turn this gadget on or off, and there's no place to connect earphones. Since it would always be playing music, the iPhone would give away your location if you took it with you. No, your Walkman's the tool for the job.[paragraph break]You give the useless phone back to the unconscious Dr. Steve, who has no comment[or]A music-emitting device you don't know how to operate would be more of a hindrance than a help at this point[stopping]." instead;
		otherwise:
			say "[one of]Dr. Steve moves the phone out of your reach and waves it like a talisman against evil[or]Dr. Steve is too quick. There's no way you're getting the phone from him[stopping]." instead;


Book Notepad


Understand "write" or "write [text]" or "write in [notepad]" or "write [text] in [notepad]" as a mistake ("You lost your pen on your way here. You're lucky you still have your life.")[ when the player carries the notepad].

The notepad is a thing. The player carries the notepad. 

Understand "note pad" or "notebook" or "note book" or "book" or "pad" or "paper" or "page" or "statements" or "statement" or "words" or "conversational" as the notepad.

Before showing the notepad to someone (called the looker):
	try talking to the looker instead;

Instead of talking to the player:
	say "You have no need to hold a committee meeting of one.";

Instead of opening the notepad:
	say "The notepad contains your prepared statements.[paragraph break]You should SHOW the notepad to someone for it to be of any use.";

The description of the notepad is "It's a pocket-sized notepad, and it's your only way to speak. To use it in conversation, try to SHOW it to someone."


Book Walkman

The Walkman is an openable transparent container. The Walkman is closed. 

The basic accessibility rule does nothing when the noun is the tape.

The examine containers rule does nothing when the noun is the Walkman.

The player carries the Walkman. Understand "recorder" or "stereo" or "player" or "cassette recorder" or "cassette player" as the Walkman. Understand "tape recorder" or "tape player" as the Walkman when the Walkman is broken.

Understand "jumble" or "circuit/boards/board/wires" or "gear" or "gears" or "button" or "buttons" as the Walkman when Walkman is broken.

Instead of taking the Walkman when the noun is broken, say "[one of]You let your fingers run through the plastic and wires. You'll miss the Walkman, but it can't do you any good now. You will leave it here[or]The Walkman is useless now. You leave it[stopping]."

Instead of doing something to the Walkman when the location is North Side:
	if the current action is examining or taking:
		say "The Walkman is shattered and useless."; [We don't want to have it rewind, play stuff. Shame on us for making the Walkman so complicated in the beginning, and I didn't use much of its functionality!]
	otherwise:
		continue the action;

The description of the Walkman is "[unless the Walkman is broken]It isn't actually a Walkman -- it's an off-brand portable tape player with 'Walkman' scrawled in white-out in your brother's handwriting. The player is [walkman-open-closed], and the tape inside is set to [tape-side-description][otherwise]What was once your beloved Walkman is a useless jumble of circuit boards, gears, buttons, and plastic[end unless]." 

To say walkman-open-closed:
	say "[if the Walkman is open]open[otherwise]closed[end if]";
	

The earphones are a wearable thing. The earphones are plural-named. The earphones can be snapped.

Instead of tying the earphones to the Walkman:
	say "The earphones are already attached to the Walkman.";

Instead of taking off the earphones when the player is not wearing the noun:
	say "You aren't wearing the earphones."
	
Understand "unplug [earphones]" or "unplug [earphones] from [Walkman]" or "detatch [earphones]" or "detatch [earphones] from [Walkman]" or "remove [earphones] from [Walkman]" as a mistake ("The earphones have rusted into the Walkman.") when the earphones are visible or the earphones are not shattered.

The earphones are part of the Walkman. The description of the earphones is "These are the kind of earphones that go over the top of the head. They are discolored and have lost their fuzzy padding. They're linked to the tape player by a long cord that has rusted into the audio jack[if the player wears the earphones]. You are wearing them[end if]."

Understand "ear phones" or "earphone" or "head phones" or "headphones" or "phones" or "cord" or "audio/jack" or "earphone cord" or "headphone cord" or "ear phone cord" or "head phone cord" or "wire" as the earphones. Understand "property" or "my property" or "your property" as the earphones when Musical Walkman is happening.

The tape is a thing. The description of the tape is "An ancient tape cassette whose label has been written on and crossed out many times. It is on [tape-side-description]."

To say tape-side-description:
	say "side [if tape-side of the tape is A-side]A, which you labeled [side-a-name][otherwise]B, which you labeled [side-b-name][end if]";

To say side-a-name:
	say "'Straitjacket Tuba'";

To say side-b-name:
	say "'Benny'";


Understand "tape/cassette" as the tape.

When play begins:
	now the tape is in the Walkman.

Rule for deciding whether all includes the tape: it does not.

	
Before opening or closing the Walkman:
	if the player does not carry the noun:
		say "[walkman-error]" instead;
		
Before flipping the tape:
	if the player does not carry the Walkman:
		say "[walkman-error]" instead;

To say walkman-error:
	say "You aren't holding the Walkman.";

Understand "eject [something]" as opening.

Instead of opening the tape:
	try opening the Walkman.

Report opening the Walkman:
	say "The Walkman springs open." instead;


Report closing the Walkman:
	say "You click the Walkman shut." instead;


Part Playing Functionality


Understand the command "switch" as something new.


Understand "listen to [walkman]" or "listen to [tape]" as switching on.

Instead of switching on something (called the playable):
	if the playable is the tape or the playable is the Walkman:
		try silently playing tunes;
	otherwise:
		continue the action;

Instead of switching off something (called the playable):
	if the playable is the tape or the playable is the Walkman:
		try silently stopping tunes;
	otherwise:
		continue the action;
		
Playing tunes is an action applying to nothing.

Understand "play" or "push play" as playing tunes.

currently-playing? is a truth state that varies.

Instead of playing tunes:
	if the player has the Walkman:[we don't want to be able to play the Walkman until further in the game]
		say "Don't forget your purpose here. The music in that Walkman is for one person only." instead;
	otherwise:
		say "[if Hal holds the Walkman]You can't play the tape when Hal is holding the player[otherwise if the Walkman is broken]The Walkman will not play anything again[otherwise]Nothing to play[end if]."; 


Playing is an action applying to one thing.

Understand "play [something]" or "listen to [something]" or "listen to [something]" or "switch on [something nonbattery]" or "turn on [something nonbattery]" or "switch [something nonbattery] on" or "turn [something nonbattery] on" as playing.


Instead of playing something (called the playable):
	if the noun is batteryish:
		try switching on the noun;
	otherwise if the playable is not the Walkman and the playable is not the tape:
		say "[if the noun is the iphone]Already playing[otherwise]Unplayable[end if].";
	otherwise:
		try silently playing tunes.


Stopping tunes is an action applying to nothing. Understand "stop" as stopping tunes.

Definition: A room is iphone-steve if it encloses Steve and it encloses the iPhone.

Instead of stopping tunes:
	if currently-playing? is true and False Climax Unaction is happening:
		say "The Walkman's out of your reach.";
	otherwise if the location is iphone-steve:
		say "[if Steve is drained or Steve is dead]There's no way you'd be able to get close enough without being shot[end if].";
	otherwise if the iPhone is in the location:
		say "The phone appears to be locked.";
	otherwise:
		say "You wish everything would stop, and yet you insist on living.";

Understand the command "lock" as something new.

Understand the command "unlock" as something new.

leashing is an action applying to one thing. Understand "lock [something]" as leashing.

unleashing is an action applying to one thing. Understand "unlock [something]" as unleashing.
 

Before unleashing something:
	if the noun is the iPhone:
		say "You lack the passcode or fingerprints to do that." instead;
	otherwise:
		say "[if the player is in South Side and Polly is godly]You don't need to go inside the building anymore[otherwise if the player is in South Side]The doors are already unlocked[otherwise if the player is in Lobby]You don't control the unlocking mechanism[otherwise if the noun is the office]The office is already unlocked[otherwise]That would be a waste of time[end if].";

	
Before leashing something:
	if the noun is the iPhone:
		say "It's already on a lockscreen.";
	otherwise:
		say "[if the player is in South Side and Polly is godly]It's already locked[otherwise if the player is in South Side]You doubt you can lock the building from the outside[otherwise if the player is in Lobby]The doors are already locked[otherwise if the noun is the office]This office can't be locked[otherwise]That would be a waste of time[end if].";


Stopping is an action applying to one thing.

Understand "stop [something]" or "stop [something]" or "switch off [something]" or "turn off [something]" or "switch [something] off" or "turn [something] off" as stopping.

Understand "switch [Walkman]" as stopping [when currently-playing? is true].

Understand "switch [Walkman]" as playing [when currently-playing? is false].

Instead of stopping the tape:
	try silently stopping tunes;

Instead of stopping the Walkman:
	try silently stopping tunes;

Instead of stopping something:
	if the noun is batteryish:
		try switching on the noun;
	otherwise if the noun is the iPhone and the noun is carried by the player:
		say "You actually don't know how to work a smart phone. They came out after you became a fugitive. All you can do is hold this torture device and hope it keeps working.";
	otherwise if the noun is the music:
		if the iPhone is carried by the player:
			try stopping the iPhone;
	otherwise:
		say "Everything will eventually stop.";

tape-side is a kind of value. The tape-sides are A-side and B-side.

The tape has a tape-side. The tape-side of the tape is A-side.

Flipping is an action applying to one thing. Understand "flip [something]" or "turn [something] over" or "turn over [something]" or "turn [something]" or "switch [tape]" as flipping.

flipping to A is an action applying to one thing. 

Understand  "flip [something] to side A" or "turn [something] over to side A" or "turn over [something] to side A" or "turn [something] to side A" or "switch [tape] to side A" or "flip [something] to A" or "turn [something] to side A" or "turn over [something] to A" or "turn [something] to A" or "switch [tape] to A" as flipping to A.

flipping to B is an action applying to one thing. 

Understand  "flip [something] to side B" or "turn [something] over to side B" or "turn over [something] to side B" or "turn [something] to side B" or "switch [tape] to side B" or "flip [something] to B" or "turn [something] to side B" or "turn over [something] to B" or "turn [something] to B" or "switch [tape] to B" as flipping to B.

Before flipping to A:
	if the tape-side of the tape is A-side:
		say "The tape is already on side A." instead;
	otherwise:
		try flipping the tape;
		
Before flipping to B:
	if the tape-side of the tape is B-side:
		say "The tape is already on side B." instead;
	otherwise:
		try flipping the tape;
	


Before flipping the tape:
	if the Walkman is closed:
		now the Walkman is open;
		say "(opening Walkman)";

Instead of flipping something (called the flipper):
	if the flipper is the tape:
		if the tape-side of the tape is A-side:
			now the tape-side of the tape is B-side;
		otherwise:
			now the tape-side of the tape is A-side;
		say "You switch the tape to the [tape-side of the tape].";
	otherwise:
		say "You decide it's best not to treat [the noun] like a cassette tape.";

Instead of taking the tape:
	say "You should leave it in the Walkman. Losing it would be a disaster.";


Before taking the tape when the tape is in the Walkman:
	if the Walkman is closed:
		say "(opening the Walkman)";
		now the Walkman is open;
	
Part Earphone Rules


The can't take component parts rule does nothing when wearing the earphones.

Before wearing the earphones:
	if the player wears a helmet:
		say "You can't wear the earphones while wearing the helmet." instead;
	if the location is Breakroom:
		say "Now's not the time to be playing with the earphones." instead;
	say "[if the player wears the earphones]You are already wearing the earphones[otherwise]You slip on the earphones[end if][if a musical scene is happening]. They do nothing to block out the music[end if].";
	now the player wears the earphones instead;


Before taking the earphones (this is the earphone-taking rule):
	if the earphones are worn by an other person (called character) and False Climax is happening:
		say "[one of]'What are you doing?' Hal says, panting. Trying to push a struggling woman out of a window is hard work for the normally sedentary CEO. '[if hal-yes? is true]You told me you were here to kill her[otherwise]I don't care what you told me back there -- I know you're here to kill her -- now do it[end if]!'[or]Hal's right -- Margo wearing the earphones is part of your plan.[stopping]" instead;
	otherwise:
		say "The earphones have rusted to the Walkman." instead;


Before putting the earphones on a person (called the character):
	if the character is Margo and False Climax is happening:
		if Margo is wearing the earphones:
			say "[Character] is already wearing the earphones.";
		otherwise:
			now dont-give-room-description? is true;
			try exiting;
			follow the eliminate-room-description rule;
			now dont-give-room-description? is false;
			now the character wears the earphones;
			say "You leap from your chair and put the earphones on Margo. Hal presses play.[paragraph break]She claws at your hands as you press the earphones tight against her head.";
			now Margo wears the earphones instead;


Understand "fast forward" or "ff" or "fastforward" or "rewind" as a mistake ("Only the play and stop buttons work. The Walkman will automatically rewind and start over when it reaches the end of the tape.");

The batteries are part of the Walkman. Instead of doing something to the batteries, say "You managed to find fresh batteries for the Walkman before you arrived. You don't need to worry about them today."

Understand "battery" as the batteries.

Part Benny's Message
	
To say benny-intro:
	say "[italic type]Polly, I'm not forgiving you for what you did today. But Dad giving you up to your executioners -- I can't stand it, and it's not fair.[roman type]";

To say benny-full:
	say "[italic type]Polly, I'm not forgiving you for what you did today. Your tears, your written protests that it was an accident, that you had no idea you were a beat witch when you woke up -- Mom's still dead.

	And Dad is ... he's still angry, but he can't bring himself to turn the record player up enough to kill you himself. So he's giving you up to the police -- to your executioners -- and it's not right.
	
	He's still on the phone, and he'll be screaming into that thing for a while about his demon daughter. 

	As soon as I finish recording this, I'm going down to the basement. I'm going to shatter Dad's vinyl and stop your pain. I'm going to let you go.
	
	I don't know how long you can run, Polly, but run. Stay away from people. It's only safe in the quiet. 
	
	I hope one day you can come home. 
		
	You know I can't go with you. I'd like to say that's because it's easier for one to disappear than two together, but we both know it's dangerous for me to be nearby, at least until you figure out the draining thing.

	But I'm not going home either. How can I live with the man who calls himself Dad but condemns you to death? 
	
	Don't forget the times we had. I know you can't listen to us perform 'Straitjacket Tuba' anymore, but don't ever record over the other side of this tape. A bit of us is on there.

	Find me when you can prove you're not a monster. 

	Remember the abandoned lighthouse we explored on our vacation last summer? That's where I'll be, as long as it takes you.

	It may take you a long, long time, and it may require you to do something magnificent.
	
	Bye, Polly.[roman type]";

Book Drones

the drones are a plural-named thing. the description of the drones is "[unless the drones are broken]The drones are sleek white with black propellers blurring. They are each equipped with a small camera and single speaker[otherwise]These weapons of beat witch destruction have been reduced to smashed metal[end if].";

Understand "camera/cameras/drones/propellers/propeller/propellor/robot/robots/speakers/speaker/metal/machines" or "flying machines" as the drones.

Instead taking the drones:
	if the noun is broken:
		continue the action; [We have a special rule for all broken things.]
	otherwise:
		say "The drones out of your reach."; [This is just in case -- the scene rules should cover us from doing anything to them.]

Volume Inventory Display	


Instead of taking inventory:
	say "[if the player has the notepad or the player has the walkman or the player has the iPhone]Your arsenal is limited[otherwise if Resolution is happening]You don't have much[otherwise]Your inventory is pitiful[end if].[paragraph break][have-notepad][have-walkman][have-pipe][have-earphones-without-walkman][have-shard][have-iphone][have-ribbon]• [if Resurrection has happened and the player is wearing the uniform]You wear bloody rags that used to be[otherwise if the player is wearing the uniform]You are sweating under[end if][if the player is wearing the uniform] a yellow hazmat suit[helmet-wearing][otherwise if the player is wearing street clothes]You are wearing jeans and a T-shirt that have seen better days[end if].";

To say have-earphones-without-walkman:
	if the earphones are worn by the player and the player does not carry the Walkman:
		say "• You are wearing the earphones but don't hold the Walkman.[line break]";

To say have-shard:
	if the player has the shard:
		now has-shard is familiar;
		say "• A jagged shard from when Margo broke the window is in your lap.[line break]"

To say have-notepad:
	if the player has the notepad:
		say "• You have your conversational notepad.[line break]";

To say have-walkman:
	if the player has the walkman:
		say "• Your most prized possession is [if the Walkman is examined]an imitation[otherwise]a[end if] Walkman ([if the Walkman is open]open[otherwise]closed[end if] and [if currently-playing? is true]playing[otherwise]silent[end if]), which is attached to earphones[if the earphones are worn by a person][earphone-wearing-person][otherwise][end if].[line break]";
		
To say have-ribbon:
	if the player wears the ribbon:
		say "• The ribbon around your wrist is what used to be your cassette tape.[line break]";


To say have-pipe:
	if the player has the pipe:
		say "• You clench a steel pipe.[line break]";

Definition: A person is earphoned if it is wearing the earphones.


To say helmet-wearing:
	if the player has the cowl:
		say " and ";
		if the player is wearing the cowl:
			say "are wearing a ";
		otherwise:
			say "are carrying a ";
		say "bulky helmet";
		

To say earphone-wearing-person:
	if a person (called the character) is wearing the earphones:
		if the character is the player:
			say " you are wearing";
		otherwise:
			say "  worn by [character]";
	
To say have-iphone:
	if the player has the iPhone:
		say "• In your pocket is Dr. Steve's iPhone, which is playing that painful viola music on a loop.[line break]";

Volume Conversation

[Vorple does not hide its prompt when we have a menu. This should fix it.]

[vorple.prompt.unhide() and vorple.prompt.hide()

or hide the prompt and unhide the prompt

Never mind -- I didn't figure this out in time for the comp.

]


Book Verbs

Part Talking

Talking to is an action applying to one visible thing.

Understand "talk to [something]" as talking to.

Understand "talk to [something]" or "t to [something]" or "t [something]" or "speak to [something]" or "speak with [something]" or "communicate with [something]" or "say to [something]" or "converse with [something]" or "hello [something]" or "[something] hello" or "hi [something]" or "[something] hi" or "hey [something]" or "[something] hey" or "greet [something]" as talking to.


Definition: A thing is nonperson if it is not a person.

Instead of talking to a nonperson thing:
	say "Trying to communicate with [the noun] would accomplish nothing.";

talker is a person that varies.

Before talking to someone:
	now talker is the noun;

Definition: A person is other if it is not the player.

Carry out talking to someone:
	if talker is other:
		if the player carries the notepad:
			show notebook;
		otherwise:
			say "With the notepad gone, you no longer have a voice." instead;
Every turn:
	now talker is the player;

Understand the command "say" or "tell" as something new.
	
Understand "say [text]" or "speak [text]" or "ask [text]" or "yell" or "yell [text]" or "tell" or "tell [text]" or "scream" or "scream [text]" as a mistake("[cant-speak].")

To say cant-speak:
	say "You cannot speak. [if the player has the notepad]The best you can do is show your notepad to people[otherwise]And you have no notepad and therefore no voice[end if]";
	
Instead of answering someone that something:
	say "[cant-speak].";
	
Rule for clarifying the parser's choice of the noun when the current action is answering someone that:
	do nothing instead;
	
Part Taking

Understand "grab [something]" or "swipe [something]" as taking.
	
Book Specific Conversations

When play begins:
	forbid exiting on zero;

Part Polly's Unaltered Notebook

show-notebook, introduce-self, mission-explanation, stop-music, and have-compassion, and close-notepad are chat nodes.

denise-talk-one? is a truth state that varies. [At one point, Denise (through the Speaker) can carry a conversation with the player twice using the same menu. We need to track if we're on part 1 or part 2 of the conversation.]

denise-talk-two? is a truth state that varies. [Ends Denise Convo scene.]


Report giving link to a chat node (called c):
	if talker is Hal or Denise Convo is happening:
		if c is a menu listed in the Table of Altered Chat Links:
			say the message corresponding to a menu of c in the Table of Altered Chat Links instead;
	otherwise if c is a menu listed in the Table of Chat Links:
		say the message corresponding to a menu of c in the Table of Chat Links instead;

Table of Chat Links
Menu	Message
introduce-self	"Hello. My name is Polly."
mission-explanation	"If you do not cooperate, more will die."
stop-music	"Stop the music, please. It hurts me."
have-compassion	"You must end this suffering. Have mercy."
close-notepad	"(close notepad)"


showing-notebook? is a truth state that varies;

To show notebook:
	if a musical scene is happening:
		say "You can't focus on your notepad right now." instead;
	if Meeting is happening or Entire Game is happening for 1 turn:
		say "Attempting to communicate with others would give you away.";
	otherwise if iPhone Deadly is happening:
		say "[no-one-cares]";
	otherwise if the talker is Speaker and Prisoner is happening:
		say "[one of]'Boring,' [he-she-speaker] says before you can even choose a page[or][He-she-speaker-caps] has no interest in a two-way conversation[stopping].";
	otherwise if Unmasked is happening:
		if the talker is the responders:
			say "Not only is Dr. Steve the one in charge, he's also blocking your exit. You decide to talk to him instead.";
			now the talker is Steve;
			now the noun is Steve;
		now showing-notebook? is true;
		follow the scene changing rules;
		run a conversation from show-notebook;
		now showing-notebook? is false;
	otherwise if the noun is Ted:
		now talker is Ted;
		if False Climax is happening:
			if chair-binding? is true:
				say "[one of]You manage to twist your body to face Ted and start to open the notepad.[paragraph break]'No, no,' Margo says. Her grip on your arms gets even tighter, and you nearly pass out. 'The dead don't respond to notes, silly.'[or]Use that notepad on the living.[stopping]";
			otherwise:
				say "[ted-wont-talk].";
		otherwise if False Climax has ended:
			say "[ted-wont-talk].";
		otherwise:
			run a conversation from show-notebook;
	otherwise if the noun is Hal:
		if Hal is alive and currently-playing? is false:
			now talker is Hal;
			run a conversation from show-notebook-alt; [Denise changed the answers.]
		otherwise if Hal is drained:
			if Transition has happened:
				say "[one of]'Let's just go,' Hal says[or]Hal doesn't feel like a conversation right now[stopping].";
			otherwise:
				say "The notepad doesn't mean anything to Hal right now. Nor does anything else.";
		otherwise: 
			say "[action-talk].";
	otherwise if the noun is Margo:
		if False Climax is happening:
			if chair-binding? is true:
				say "[one of]'Hal's the one you should show the notepad to, not me, [polly-name],' Margo says[or]Margo's not the one you should be talking to[stopping].";
			otherwise:
				say "[one of]'I suddenly find myself illiterate,' Margo says as you glance at your notepad. 'Action! Drama! You could at least hit something.'[or]Margo doesn't care what you have to say.[stopping]";
		otherwise:
			say "[one of]'Put that notepad away. You're such a blabbermouth.' Margo rolls her eyes.[or]Margo isn't interested in your notepad at the moment.[stopping]";
[	otherwise if the noun is Denise:
		if Denise Convo is happening:
			run a conversation from denise-convo;]
	otherwise if Bloodthirsty Mob is happening and the talker is the responders:
		say "[no-one-cares]";
	otherwise if Denise Convo is happening:
		now talker is Denise;
		run a conversation from denise-convo;
	otherwise if the noun is Steve:
		say "Dr. Steve will not listen[if Steve is alive]. You have never seen so much hatred and panic in someone's face[otherwise if Steve is drained]. He can't[end if].";
	otherwise:
		say "You have nothing to say to [the talker]."; [We should never reach this point.]


To say ted-wont-talk:
	say "[one of]Ted shakes his head as you reach for your notepad[or]Talking to Ted is useless[stopping]";

To say no-one-cares:
	say "None of them cares about your conversational notepad. They see only the monster before them.";

notepad-exist is a subject.
	
Before taking inventory:
	now notepad-exist is familiar;	


Report giving text for show-notebook:
	say "[one of]You prepared [if notepad-exist is familiar]the[otherwise]a[end if] notepad to be your voice for any number of situations you might encounter here. [or][stopping]Which page do you show [if the talker is Denise]the girl[otherwise][the talker][end if]?" instead;

Carry out finding responses to show-notebook:
	link to introduce-self;
	link to mission-explanation;
	link to stop-music;
	link to have-compassion;
	link to close-notepad;

Report giving text for a chat node (called N):
	if talker is Steve:
		if N is a chat listed in the Table of Steve Talk:
			say "[message corresponding to a chat of N in the Table of Steve Talk][if a paragraph break is pending][line break][end if]"; 
			follow the scene changing rules instead;
	otherwise if talker is Ted:
		say "Ted [one of]gives you a deeply empty stare[or]nods and goes back to gazing into nothingness[or]doesn[']t see the notepad -- or you, for that matter[or]doesn[']t seem to care -- about anything[if Witch Intro is happening] except the girl[otherwise], in fact[end if][in random order]." instead;
	otherwise if talker is Margo:
		say "[one of]'Talking by notepad?' Margo says. 'What are you, a toddler playing spy? Cute, but I'm cuter.'[or]Margo refuses to even look at your notepad.[stopping]";
	otherwise if talker is Hal:
		if False Climax First is happening:
			if N is a chat listed in the Table of Hal Talk			:
				say "[message corresponding to a chat of N in the Table of Hal Talk][if a paragraph break is pending][line break][end if]" instead;
	otherwise if talker is Denise and Denise Convo is not happening:
		if Denise is comatose:
			say "Her eyes are closed, so she misses out on the conversation." instead;	
		otherwise if Big Reveal has ended: [Not sure we'll need this]
			say "[if Denise is mad]'That game is over, stink face[otherwise]'Stop interrupting[end if].'" instead;
	otherwise if Denise Convo is happening:
		if denise-talk-one? is false:
			if N is a chat listed in the Table of Denise Talk One:
				say "[message corresponding to a chat of N in the Table of Denise Talk One][if a paragraph break is pending][line break][end if]";
				now denise-talk-one? is true instead;
		otherwise:
			if N is a chat listed in the Table of Denise Talk Two:
				now denise-talk-two? is true; [This ends Denise Convo]
				say "[message corresponding to a chat of N in the Table of Denise Talk Two][if a paragraph break is pending][line break][end if]" instead;

To say action-talk:
	say "Now's the time for action, not talk";

Table of Steve Talk
chat	message
introduce-self	"'People here call me Dr. Steve. I'm afraid you're in quite a bit of trouble, young lady. This is a quarantined area, and --'"
mission-explanation	"Dr. Steve scowls.[paragraph break]'Was that a threat?'"
stop-music	"'What music?' Dr. Steve asks. 'The only kind of person music can harm is --'"
have-compassion	"'Suffering? It's nothing personal,' Dr. Steve says, unaware that page was not meant for him. 'You are unauthorized and in a quarantined area. We have to report you.'"
close-notepad	"You close the notepad. They won't listen anyway."

	
Part Polly's Altered Notebook

show-notebook-alt, introduce-self-alt, mission-explanation-alt, stop-music-alt, have-compassion-alt, and close-notepad-alt are chat nodes.

Table of Altered Chat Links
Menu	Message
introduce-self-alt	"Hello. My name is Poophead."
mission-explanation-alt	"I want to die. Will you cooperate?"
stop-music-alt	"Start the music, please. I crave pain."
have-compassion-alt	"Your suffering is deserved, and your death will be a mercy." 
close-notepad-alt	"(close notepad -- you're not playing this stupid game[if Denise convo is happening] [one of][or]yet [stopping]again[end if])" [*look at this]

is-poophead? is a truth state that varies.

To say set poophead:
	now is-poophead? is true;

To say polly-name:
	if is-poophead? is true:
		say "Poophead";
	otherwise:
		say "Polly";


Carry out finding responses to show-notebook-alt:
	link to introduce-self-alt;
	link to mission-explanation-alt;
	link to stop-music-alt;
	link to have-compassion-alt;
	link to close-notepad-alt;


Report giving text for show-notebook-alt:
	say "[notepad-altered]." instead;
	
To say notepad-altered:
	say "[one of]Your words in the notepad have been altered in purple crayon. [if False Climax is happening]Margo[otherwise][Speaker][end if] snickers[or]None of the heavily edited choices in your notepad look useful[stopping]";

To say start-music:
	say "Click. The tape whirs to a start[period][line break]";
	now currently-playing? is true;
	follow the scene changing rules;

To say hal-start-music:
	say "'I don't want to do this. I really don't,' Hal says[period] '";


Table of Hal Talk
chat	message
introduce-self-alt	"[one of][set poophead]'I'm afraid I don't understand, Polly,' Hal says.[paragraph break]'That's [polly-name] to you, sweetheart,' Margo says[or]Hal shakes his head. Even for a beat witch, you are strange[stopping]."
mission-explanation-alt	"[hal-start-music]But if you insist ...'[paragraph break][start-music]"
stop-music-alt	"[hal-start-music]I'll tell you this much: Pain is overrated.'[paragraph break][start-music]"
have-compassion-alt	"Hal reddens. His voice is soft and sharp. 'I lead a multi-million dollar company. I have been featured on dozens of trade magazine covers and have three honorary doctorates. What have you accomplished besides hiding? You have no right to talk to me like that, witch.'[paragraph break][start-music]"
close-notepad-alt	"You close the notepad.[paragraph break][one of]'Oh, come on, [polly-name],' Margo says. 'You're such a soggy-diaper spoilsport.' [or]Margo sighs in disappointment.[stopping]" 

Part Denise Convo

denise-convo is a chat node. tester-node is a chat node.

Carry out finding responses to denise-convo:
	link to introduce-self-alt;
	link to mission-explanation-alt;
	link to stop-music-alt;
	link to have-compassion-alt;
	link to close-notepad-alt;

Report giving text for denise-convo:
	if denise-talk-one? is false:
		say "With unnatural speed, Denise swipes the notepad from your pocket, opens it, and returns it to you. 

		'I'm willing to entertain any questions you may have before your regrettable end,' [Speaker] says as Denise gives another mock curtsy. 'This operator is standing by!'[paragraph break][notepad-altered]." instead;
	otherwise:
		say "[denise-problemos][paragraph break]'Anyway, you can plead for your life now,' [Speaker] says." instead;

To say denise-problemos:
	say "The girl squints into the darkness.[paragraph break]'You know,' [Speaker] says, 'you coming here has created gerbils of problemos for me.'[paragraph break]Denise gestures to the night.[paragraph break]'My rotting eyes and ears are everywhere. I let the emergency idiots come with their equipment -- let them keep the world occupied with silliness about germs and radiation and plagues while my army built the new battery! But now, everyone knows a beat witch is here,' [Speaker] says. 'You know the powers-that-abide are sending drones. They're going to fill the sky and turn this town into a jukebox.'[paragraph break][Speaker], Denise, and all the corpses let out a simultaneous sigh[period]";

is-introduce-self-alt-denise-said?,  is-mission-explanation-alt-denise-said?,  is-stop-music-alt-denise-said?, and is-have-compassion-alt-said? are truth states that vary.

To say set-introduce-self-alt:
	now is-introduce-self-alt-denise-said? is true;

To say set-mission-explanation-alt:
	now is-mission-explanation-alt-denise-said? is true;

To say set-stop-music-alt:
	now is-stop-music-alt-denise-said? is true;

To say set-have-compassion-alt:
	now is-have-compassion-alt-said? is true;

[To mark (T - a truth state) as truth:
	now T is true;]

is-quit-denise-game? is a truth state that varies.
	
To say quit-denise-game:
	say "You don't say much, even for a mute. Don't be embarrassed. Your silence does the world a great service";
	now is-quit-denise-game? is true;
	now denise-talk-two? is true; [should this be here?]

Table of Denise Talk One
chat	message
tester-node	"Testing 123"
introduce-self-alt	"At first, you think Denise has started to shiver -- but no, she's just shaking with unheard laughter[if is-poophead? is true].[paragraph break]'But you're already [polly-name], [polly-name]!' [Speaker] says.[otherwise].[paragraph break][set poophead]'Brilliant last words, [polly-name]! You amaze me with my wit.'[end if][paragraph break]Many pale hands wipe away Denise's tears of mirth. 'Meeting you is almost worth the trouble you've caused me,' [Speaker] says for Denise. 'Almost.'[set-introduce-self-alt]" 
mission-explanation-alt	"'Huh,' [Speaker] says for Denise. 'You could have fooled me, [polly-name][if Margo is dead]. The way you got rid of my favorite corpse -- pushing her out the window? Seemed like you wanted to live, but figuring out why would give my brain leprosy[end if].'[set-mission-explanation-alt]"
stop-music-alt 	"Denise's eyes narrow, and [Speaker]'s voice lowers. 'I can give you that, [polly-name].'[set-stop-music-alt]"
have-compassion-alt	"Denise rolls her eyes, and [Speaker] speaks on her behalf. 'My death? Do [italic type]you[roman type] have an army of stiffs? Do [italic type]you[roman type] have a doohickey of mayhem?'[set-have-compassion-alt]"
close-notepad-alt	"'[quit-denise-game].'[paragraph break][denise-problemos]"


Table of Denise Talk Two
chat	message
introduce-self-alt	"'[if is-poophead? is true]You must be the most redundant beat witch I have ever met -- and that's not counting the other beat witches I have ever met, which are zero.' [Speaker] holds up a fist of nothing, perhaps to show off Denise's mathematical skills.[otherwise][set poophead]Ha! I knew you'd give in eventually. I win ... [polly-name]!' Denise raises clasped fists in triumph, and a dozen corpses clap her on the back in self-congratulations.[end if]"
mission-explanation-alt	"'I thought you'd never ask[if is-mission-explanation-alt-denise-said? is true], and you did twice! Well, I can take a hint[end if]!' [Speaker]'s giggle is bubbly and grating."
stop-music-alt	"'I can do better than that, [polly-name]. I can [italic type]stop[roman type] all music. I can drain your universe of all note and rhythm. Let me show you.'[paragraph break]Was it your imagination, or did Denise brighten while the shadows around her increased? "
have-compassion-alt	"'Ah,' [Speaker] says. 'I have a teensy confession about that page. It's a little note to you! A pocket prophecy, if you will.'[paragraph break][Speaker] clears [his-her-speaker] throat, a low-pitch, moist gargle only the dead can make."
close-notepad-alt	"'[quit-denise-game].'"




Volume Magic


Book Living States


[This block is an embarrassment. I believe I have a few extra attributes here from when I went from absolutely having no idea what I was doing to just sort of clueless. I should clean this up.]
A thing can be nonliving, alive, dead, dying, zombie, wounded, weak, weak-wounded, drained, half-drained, uncomfortable, strong, stronger, demi-godly, or godly. A thing is usually nonliving. A person is usually alive. 

Definition: A person is buff if it is strong or it is stronger or it is godly or it is demi-godly.


Instead of the player doing something to a dead person:
	if the current action is examining or giving life to or taking life from:
		continue the action;
	otherwise if the current action is smelling the noun:
		say "[one of]You dare yourself to take a whiff. You nearly pass out[or]You would rather not[stopping].";
	otherwise:
		if the current action is drinking and the water is in the location:
			try drinking the water instead;
		otherwise:
			say "You can do nothing for the dead.";
		

Instead of taking something enclosed by a dead person:
	say "[one of]You move to take [the noun] but stop when your conscience and self-disgust get too much for you[or]You refuse to disrespect the dead[stopping].";
			

Part Wounded

blood is scenery. The description of the blood is "Blood flows freely from your leg. [if the location is in City]It leaves a splattered trail that glistens maroon in the light of the body fires behind you. There's no way your pursuers will miss it.[end if]"

Understand "path/trail of blood" or "path/trail" as the blood when the location is in City.

Every turn when the player is wounded:
	if the blood is not in the location:
		now the blood is in the location;
		
Instead of drinking blood:
	say "[one of]You can practically feel the sour iron taste in your mouth just thinking about it[or]The thought sickens you[stopping]."
	
Instead of smelling blood:
	say "The smell of your blood is overwhelmed by the city's own stench: that of burning rot."
	
Instead of taking blood:
	say "You can't take back what has already bled out."
	
Rule for clarifying the parser's choice of blood:
	do nothing instead;

	
Volume Scenes

Book Musical Harm Setup

Part Basic Musical Scenes

Understand "eat music" as a mistake ("That's just an expression.").

countdown-clock is a number that varies. 

When a musical scene begins:
	now countdown-clock is 0;
	follow the status-line-color rule;


A scene can be musical or semi-musical or silent. A scene is usually silent.

A scene has some text called playing-text.

music-harm? is a truth state that varies. music-harm? is usually true.

When a musical scene ends:
	now music-harm? is false;
	follow the status-line-color rule;

Every turn when a musical scene is happening:	
	if the music is not in the location:
		now the music is in the location;
	if music-harm? is true:
		increase countdown-clock by 1;


Part Music Description

Twilight Zone is a room.


the music is scenery in Twilight Zone.

Understand "beat" or "elevator music" or "notes" or "melody" or "harmony" or "rhythm" as the music.


[Current musical scenes: Bloodthirsty Mob, Explore, Musical Walkman, and Deadly iPhone. Not sure if going to keep Musical Walkman.]

To say steve-tunes:
	say "The iPhone spews a lethal viola[if the player is wearing the cowl]. You can barely hear it while you wear the helmet, fortunately[end if]";

To say doesnt-affect:
	say "It doesn't affect you at all";
	
To say final-tune:
	say "The [one of]machines[or]drones[stopping] are blasting a lively dance tune featuring synths and a harpsichord -- a perfect blend of poison for a beat witch"; [We include this in the Final Battle Drones beginning as well, and we were just talking about drones, but we will refer to them as drones whenever this is repeated.]


[lively dance tune featuring a harpsichord]

Table of Music Descriptions
Scene	Description
iPhone Deaf	"You can barely hear the beat of the music. [doesnt-affect]."
Deadly iPhone	"[steve-tunes]."
Bloodthirsty Mob	"The music is a harmless whisper. [doesnt-affect]."
Torture	"The elevator music is just loud enough to crucify your mind but not enough to kill you."
Musical Walkman	"You and Benny created this song and spent two weeks putting all the tracks together in the corner of the garage you turned into a recording studio." 
Margo's Music	"You can barely hear the tuba and harp playing."
Musical Found Phone	"[steve-tunes]."
Ante-Lugging Phone	"[steve-tunes]."
Lugging Phone	"[steve-tunes]."
Final Battle Drones	"[final-tune]."

Definition: A scene is song if it is not silent. [That is, if it's musical (harmful) or semi-musical (music faint enough not to harm or weaken). ]

When a song scene begins:
	set musical descriptions;

Every turn when a song scene is happening:
	set musical descriptions;

To set musical descriptions:
	if a song scene (called song-scene) is happening:
		repeat through the Table of Music Descriptions:
			if song-scene is the scene entry:
				now the description of the music is the description entry; 

Instead of doing something to the music:
	if the current action is touching:
		say "Unfortunately, music tends to touch you.";
	otherwise if the current action is listening to or examining:
		continue the action;
	otherwise:
		say "[if the player carries the iPhone]As much as you want the music to stop, you need it[otherwise]You can't[end if].";

Before listening to the music:
	try examining the noun instead;

To say deaf-listening:
	say "You can't hear anything";
	
Before listening: [intransitive listening]
	if the player is deaf:
		say "[deaf-listening]." instead;
	if the noun is the location:
		if music is in the location:
			try listening to music instead;

This is the music-follows-you rule:
	if the music is not in the location:
		now the music is in the location; 

When a song scene begins:
	follow the music-follows-you rule;
	
 Every turn when a song scene is happening or iPhone Deaf is happening:
	follow the music-follows-you rule;


When a song scene ends:
	now the music is in Twilight Zone;



a thing can be groovy.

The Walkman is groovy. The iPhone is groovy. The earphones are groovy.

Before listening to a groovy thing when a musical scene is happening or a semi-musical scene is happening:
	try listening to the music instead;

Book Story

Part First

When play begins:
	say "The emergency responders move like yellow ghosts through the smoke.[paragraph break]The group banded together before you could get away. Now you find yourself in the middle, an unwilling participant in a silent parade that marches past cars that won't start and shops that are eternally closed.[paragraph break]In the darkness, you seem like the others. You even adopt their attitude of ignoring the piles of smoldering dead.[paragraph break]The group stops near a high school gymnasium. One by one, you move past the electric generators, through plastic sheets, and into the light of the staging area.[paragraph break]When the last of you has stepped through the final veil, the door seals, and the scrubbers whir. [paragraph break]The one in charge -- Dr. Steve, everyone affectionately calls him -- takes off his hazmat helmet and motions everyone to do the same.[paragraph break]You're done for.";


Part Meeting

dave-subject is a subject.

take-off-headgear-subject is a subject.

headgear-attempts is a number that varies. headgear-attempts is 0.

To say comatose-dead:
	say "despite Dr. Steve's comatose state";
		
Instead of taking off the cowl:
	if the player is not wearing the cowl:
		say "But you're not wearing it!";
	otherwise if the location is Staging Area:
		if iPhone Deadly has happened:
			say "The iPhone is still playing the melody that hurts so much[if Steve is drained or Steve is dead], [comatose-dead][end if]. You would rather put your head in a fire than expose yourself to music again." instead;
		increase headgear-attempts by 1;
		if headgear-attempts is 1:
			say "You reach up to your helmet and hesitate. Maybe you can get away with looking comfortable with the helmet on.";
		otherwise:
			if the player is wearing the cowl:
				say "No sense in postponing the inevitable.";
			continue the action;
	otherwise if Resurrection has not happened:
		say "As much as you'd like to breathe fresh air, the helmet is the only thing between you and death by melody if the emergency crew finds you. It stays on for as long as possible.";
	otherwise:
		say "What? The helmet stands between you and certain death from the iPhone[if the player holds the iPhone] you carry[end if].";

Report taking off the helmet when Meeting is happening:
	say "[if headgear-attempts is at most 0]You have no choice. [end if]You sigh and remove the helmet." instead;

To say steve-directions:
	say "[paragraph break]Dr. Steve wipes his brow, gestures to the tables, and clears his throat.[paragraph break]You can only half-hear with this bulky helmet on your head.[paragraph break]' ... pathology team ... not found ... source ... disease,' he says.[paragraph break]The news is a surprise to no one, but shoulders slump.[paragraph break]You're feeling despair for a different reason -- Dr. Steve is standing between you and the door.[run paragraph on]";
	
To say people-descriptions:
	if iPhone Deadly is happening:
		say "[paragraph break]Dr. Steve and the other emergency responders cheer at your sufferings[period]";
	otherwise if iPhone Deaf is happening:
		say "[paragraph break][if Steve is not drained]Dr. Steve and his crew wait in frozen terror. Death is among them[otherwise]Dr. Steve lies as if dead on the floor.[paragraph break]You are a fatal train wreck in slow motion, and the first responders can't help but watch you in terrified fascination[end if][period]"

Meeting is a scene. Meeting begins when Entire Game is happening for two turns.	

[I wrote out the dialog here and kept it in comments. For the actual game, I cut out some of the words since Polly can't hear them all through the helmet.]

Every turn when Entire Game is happening for one turn:
	[say "'We have a few more tests to run.' Dr. Steve tries to sound encouraging but fails. 'What about your crew, Jessica?'[paragraph break]'We're disposing of the bodies as directed,' Jessica says. Her voice is quivering, but she forces the report from her lips. 'Still ... I don't think anyone at home knew the scale. I need a bigger crew -- hundreds more. We can only focus on the streets and parks. We're leaving anything indoors alone for now.'[paragraph break]'I don't think anyone understood the numbers. I'll place the personnel order when the meeting's over. Dave?'";]
	say "'... few more tests ...' Dr. Steve is trying to sound encouraging. '... Jessica?'[paragraph break]'... disposing of the bodies with fire ...' Jessica says. Her voice is quivering, but she forces the report from her lips. '... didn't know the scale. With all ... need ... bigger crew ... can only focus ... streets ... parks ... can't ... anything indoors ...'[paragraph break]Dr. Steve nods.[paragraph break]'No one understood ... sheer numbers of deceased ... will radio ... more personnel ... Dave?'";
	now dave-subject is familiar;
	
Every turn when Meeting is happening for one turn:
	[say "Dave mutters something incoherent.[paragraph break]'Dave?'[paragraph break]He doesn't look up. 'No riots, no looting.'[paragraph break]'And ...?'[paragraph break]'No criminals. No people. No parents. No children. Just ... silence.'[paragraph break]He looks down again.";]
	say "Dave mutters something you probably wouldn't have been able to hear, even if your helmet were off.[paragraph break]'Dave?'[paragraph break]He doesn't look up. '... riots ... looting.'[paragraph break]'None?'[paragraph break]Dave's voice rises and cracks.[paragraph break]'No panic ... people ... parents ... children. Just ...' He trails off into what could be swearing or a prayer. '... silence. No one.'[paragraph break]He looks down again.";
	
Every turn when Meeting is happening for two turns:
	[say "'Well, I'm seeing the same thing as you all, and -- Alisha, it's safe to remove your headgear,' Dr. Steve says.[paragraph break]You jolt. He's looking at you.";]
	say "'I'm seeing the same ...  and Alisha ... safe ... can take off ...'[paragraph break]At first you think Dr. Steve's pretending to pop off his head, but he's actually demonstrating how to remove the headgear.[paragraph break]You jolt. He's looking at you.[paragraph break][italic type]Everyone[roman type] is.";
	now take-off-headgear-subject is familiar;


Meeting ends when the player carries the cowl. [isn't wearing it]

Every turn when Meeting is happening for three turns:
	say "'What's ... matter with ... Alisha?' Dr. Steve asks. 'Alisha?'[paragraph break]'Let me,' Dave says. He's right behind you.[paragraph break]He yanks the helmet off your head.[paragraph break]You grab the helmet back, but it's too late.";
	now the player carries the cowl;

Part Unmasked

Unmasked is a scene. Unmasked begins when Meeting ends.

The pistol is a thing. The description of the pistol is "The hazmat crew apparently brought a few weapons in case they ran into trouble. They found it."

Understand "gun/weapon/handgun" as the pistol.

When Unmasked begins:
	say "More than one person gives a startled yell. [if dave-subject is familiar]Dave[otherwise]One of them[end if] draws a pistol.[paragraph break]'Who are you, and what did you do with Alisha?' Dr. Steve demands. 'TALK TO me!'";
	now the responders hold the pistol;

Instead of wearing the cowl during Unmasked:
	say "[one of]You try to put the helmet back on your head, but someone behind you yanks your arms down. You're not getting out of this that easily[or]There's no sense in putting your disguise back on -- they already know you're not Alisha[stopping].";

Unmasked ends when showing-notebook? is true. 

Unmasked ends passively when Unmasked is happening for three turns.

Part iPhone Deadly

iPhone Deadly is a scene. iPhone Deadly begins when Unmasked has ended and the current action is not talking to.

iphone-deadly? is a truth state that varies.

When iPhone Deadly begins:
	say "The color leaves Dr. Steve's cheeks, and his eyes narrow. He diagnosed the situation faster than you expected. Woman with a perfectly proportioned face, can't speak, appears unexpectedly amid death ... it makes sense.[paragraph break]'Beat witch!' he shouts.[paragraph break]The others cry out in fear and press against the walls, as though you were a bomb. The now-trembling gun is still aimed at you, though Dave seems to have forgotten it in his panic.[paragraph break]Dr. Steve fumbles in his pockets and produces an iPhone. He can't swipe fast enough.[paragraph break]'This is for [steve-family]. Eat music, witch!'[paragraph break]And it starts.[paragraph break]";
	press any key;
	say "It happens to be a lively instrumental tune featuring a viola, it's on full blast, and it has no lyrics to soften the musical blow.[paragraph break]You collapse. Your entire body shakes in painful spasms.";
	now Steve carries the iPhone;
	

To say steve-family:
	say "Ruby, Faith, and Ivy"; [So we can change the names in one spot -- still not sold on them.]


Every turn during iPhone Deadly:
	if countdown-clock is 1:
		say "The melody burrows into your mind in fiery needles. Your shrieks are soundless.[paragraph break]'You are all safe now,' Dr. Steve tells his colleagues. 'Observe the subject's loss of balance, the dry-heaving, the drooping gaze. Yes, we are witnessing the beginning of a beautiful aneurysm.'[paragraph break]You barely overhear a couple of scientists muttering about how they have never heard of a beat witch killing so many, so suddenly, but here you are. You being the cause of the plague seems obvious in retrospect.";
	otherwise if countdown-clock is 2:
		say "The world crashes into itself like a whirlpool.[paragraph break]Every note you hear brings you one beat closer to your brain bursting. You cradle the helmet against your chest.";
	otherwise if countdown-clock is 3:
		say "Your head is a pain-spewing fountain. If you can't find a way to block out the sound, you're not going to last any longer.";
	otherwise if countdown-clock is 4:
		say "Fluid dribbles from your ears, and you have a hallucination of musical notes ripping flesh from your bones.[paragraph break]The helmet drops from your unfeeling fingers. The last thing you hear is applause.[paragraph break]A monster is dead.";


Every turn:
	if Steve carries the iPhone and the cowl is not worn by the player and the location is Staging Area:
		now iphone-deadly? is true;
	otherwise:
		now iphone-deadly? is false;


iPhone Deadly ends when the player is wearing the cowl.

Part Escape

Escape is a scene.

Escape begins when the player is strong and the player is in Staging Area.

When Escape begins:
	say "You are strong enough to deal with the door.";

The bullet is a thing.
	
Instead of attacking the magnet-door when the player is strong or the player is stronger:
	say "You give the magnetically sealed door a superhuman punch. It squeals and shoots into the street. You run outside.";
	now the player is in Street;
	follow the scene changing rules; [or Escape never ends]
	say "You bound over cars and burn piles like an impossible gazelle.[paragraph break]Although you're still wearing the helmet, you can make out the panicked shouts behind you.[paragraph break]'Stop staring! [italic type]Shoot her![roman type]'[paragraph break]";
	scroll to last command;
	now the player is in Farther Down Street;
	say "A sudden numbness engulfs your leg.[paragraph break]'Bring Dr. Steve's phone! Don't worry about him right now -- she's getting away!'[paragraph break]You careen into a school-crossing sign and barely catch yourself from falling. You gulp air and force yourself to move.[paragraph break]Your augmented strength wears off faster than usual to deal with your bullet wound, which only half-heals. Running slows to limping, strength to weakness. You are a delirious rat in an asphalt maze.[paragraph break]You've never been in this city before, and you have lost your sense of direction. But you feel an itching, a howling in your mind that crescendos as you get closer to the other beat witch.[paragraph break][street-description]";
	now the player is wounded;
	now the bullet is part of the leg;

Escape ends when the player is in Street.

Part Running

Running is a scene. Running begins when Escape ends.

When Running begins:
	now the player is wounded;

Running ends when the player is in Lobby.


Part Threshold

Threshold is a scene. Threshold begins when the location is South Side.


When Threshold begins:
	now the cowl is in South Side;

Instead of taking the cowl during Threshold:
	say "[one of]You try to take it, if only not to leave another clue for those who now hunt you. But it's[or]It's[stopping] too heavy for you to lift now. You can barely walk.";
	
doors-closed-attempted? is a truth state that varies.
	
Instead of closing the double doors when Threshold is happening:
	if doors-closed-attempted? is false:
		say "You have a moment of insanity. Close the doors to your only escape, and let your pursuers find you?[paragraph break]You shake your head. You will not die here.";
		now doors-closed-attempted? is true;
	otherwise:
		say "It takes all your effort to close the doors, but you're so tired of runnning.[paragraph break]You wait for the responders to catch up. They don't take long.[paragraph break]'It's her!'[paragraph break]'Is the monster waiting for us?'[paragraph break]'Put her out of her misery, Dave!'[paragraph break]You're not sure what kills you first -- the bullets or the music.[paragraph break]Silence at last.";
		die;



Threshold ends when Running ends.

Part Bloodthirsty Mob

Bloodthirsty Mob is a scene. Bloodthirsty Mob begins when the location is Lobby.

iphone-humming? is a truth state that varies.	

When Bloodthirsty Mob begins:
	say "A pale man in a blue blazer and bright red tie sits at the desk. His name is Ted Tau, if his badge is to be trusted. He motions you farther in.[paragraph break]As soon as you clear the doorway, he pushes something under the desk, and the doors slam shut behind you.[paragraph break]Just in time too -- the first responders have found you.";
	now the responders are in South Side;
	now the responders carry the iPhone;
	now the description of the responders is "Although none of the responders wear their headgear, you can't help but see them as faceless nightmares.[if the responders are drained][paragraph break]They are drained but not dead. They should be awake and able to stand in a few hours -- long after you've put this city behind you.[end if]";
	now the double doors are closed;


Understand "faceless/nightmares/mob" as the responders when Bloodthirsty Mob has happened.

Understand "woman" as the responders when Bloodthirsty Mob is happening and Bloodthirsty Mob has happened for three turns.

Understand "man" as the responders when Bloodthirsty Mob is happening and Bloodthirsty Mob has happened for six turns.

Does the player mean doing something to the responders:
	it is likely; 

Every turn when Bloodthirsty Mob is happening:
	if Bloodthirsty Mob is happening for one turn:
		say "They rattle the double doors. Fists pound on the thick glass, but the doors hold.[paragraph break]Booted feet kick your helmet down the sidewalk, as though being a plague on humanity were contagious.[paragraph break]One of the responders waves Dr. Steve's phone at you. From the other side of the glass, it is weak and harmless.";
		now iphone-humming? is true;
	if Bloodthirsty Mob is happening for three turns:
		say "A woman outside presses the iPhone against the glass, but the music is still too faint to affect you.";
	if Bloodthirsty Mob is happening for five turns:
		say "The woman shakes her head and puts the phone in her pocket. On this side of the glass, you can't even hear its humming anymore.";
		now iphone-humming? is false;
	if Bloodthirsty Mob is happening for six turns:
		say "Dave motions the others to step back from the building.";
	if Bloodthirsty Mob is happening for seven turns:
		say "Dave aims the pistol at the doors. Three faint pops rattle the lobby.";
	if Bloodthirsty Mob is happening for eight turns:
		say "The others inspect the doors, but the bullets didn't even dent them.";
	if Bloodthirsty Mob is happening for nine turns:
		say "The first responders content themselves with waiting for you to come out. The hunt is now a siege.";	

Understand "booted/feet" or "booted/foot" as the responders when Bloodthirsty Mob is happening.

Bloodthirsty Mob ends when the location is Base.

When Bloodthirsty Mob ends:
	now iphone-humming? is false;


Part Witch Intro

Witch Intro is a scene. Witch Intro begins when the location is Base.

denise-drain-attempt? is a truth state that varies. denise-heal-attempt? is a truth state that varies.
	
Witch Intro ends sacrificing when denise-heal-attempt? is true and Denise is not comatose.

Witch Intro ends selfishly when denise-drain-attempt? is true and Denise is not comatose.

Instead of going when Witch Intro is happening:
	say "Ted blocks your way and [one of]motions to the girl again[or]nods in the girl's direction[or]gestures toward the girl[in random order]. He's [one of][or][italic type]really [roman type][stopping]insistent on you giving life to her.";

Instead of exiting when Witch Intro is happening:
	try going north; [any direction will do]
	

Part Explore

[If we follow the static version of this story, we're going to wake up and talk to Denise (see Part Denise First commented out below) ... but after trying to shoehorn that in, I feel I need to play more to interactive fiction's strengths: exploration of a space. Not a ton of exploration here, but it's better than nothing.]

Explore is a scene. Explore begins when Witch Intro ends.

When Explore begins:
	now the player is in Upper Lobby;
	remove the Walkman from play;
	remove the notepad from play;
	remove the bullet from play;
	now the player is alive; [as in healthy]

Explore ends when the location is End of Corridor.

Part Torture

torture-trigger is a truth state that varies.

Torture is a musical scene. Torture begins when Explore is happening for three turns or torture-trigger is true. Torture ends when False Climax begins.

is-torture? is a truth state that varies. [I would rather work through scenes to turn off the torture music display on the status line, but unfortunately, Inform won't update things until after the keypress, so kludge it is]

When Torture begins:
	now is-torture? is true;
	say "Speakers hidden somewhere in the ceiling crackle and spew easy-listening instrumental music. You claw your face in a mute wail.[paragraph break]The music's volume has been set at precisely the right level -- the notes are soft enough that their notes won't immediately kill you, but they're loud enough to make your nerve endings burn.[paragraph break]'Why are you --' Recognition clouds Hal's face. 'Oh.'";


When Torture begins:
	now playing-music? is true;
	now the player is uncomfortable;

	
Part Hal Drama

Hal Drama is a scene. Hal Drama begins when Torture is happening for two turns or the location is Corridor and the current action is going.

hal-yes? is a truth state that varies.
hal-no? is a truth state that varies.

Instead of going east when the location is Upper Lobby and hal-yes? is false and hal-no? is false and Torture is happening for more than one turn:
	say "Hal grabs your arm.";
	follow the scene changing rules;
	
To say walkman-plan:
	say "to somehow put the earphones on her, press play on your Walkman, and let the tuba music boom until she is just as dead as her victims";

When Hal Drama begins:
	redraw the status line;
	if Vorple is supported:
		follow the refresh Vorple status line rule;
	say "'I've lost count of how many times the beat witch has drained me,' Hal says. The words that must have been pent up in him during his isolation rise in a rapid babble. 'Sometimes I wake up feeling like she's given me more life, more energy, than I had before, and others, I can barely stand. Each time, I'm on a different floor with more crayon graffiti taunting me or inviting me to worship her, and no way to get out. I've never seen her. Even sunlight doesn't stop the night. I don't know how long it's been since ... since the others were alive.' He gives his name tag a nibble. 'But this time, I wake up to a woman in a protective suit who looks and behaves like a beat witch. But ... you can't be her, can you? Why would you torture yourself?'[paragraph break]Hal's voice quivers beneath its steel. 'I need to know, witch. Are you here to kill the other one?'[paragraph break]You can indicate YES or NO>";
	if the player consents:
		say "You nod. Your original plan of begging her to stop is laughable now. Your Plan B is [walkman-plan]. That too is a childish hope. But what else is there?[paragraph break]'Then lead on, witch!'";
		now hal-yes? is true;
	otherwise:
		say "You shake your head. How can you explain? You're here to stop her, but you never wanted to kill anyone[if Steve is dead] -- even Dr. Steve[end if]. At least, that's what you tell yourself.[paragraph break]It's a lie, and the tape player you had until recently is proof. The truth is ... you are planning [walkman-plan] -- but Side A was Plan B, right? You were going to make the beat witch see reason first, right?[paragraph break]'Then are you here to kill me?' Hal asks. 'No -- don't answer.'[paragraph break]A single teardrop drips down his cheek and soaks into what's left of the floor.[paragraph break]'I don't doubt a beat witch will give me death eventually[if has-attempted-kill-hal? is true] -- even if you couldn't do it with the pipe[end if]. But I suppose I have to take a chance with the devil I just met if I ever want to get out of here.' His smile is more cringeworthy than before.";
		now hal-no? is true;

Report going when Hal Drama is happening:
	follow the report-going-during-Hal-Drama rule;

This is the report-going-during-Hal-Drama rule:
	say "[one of]Hal tries to help you, but you wave him away. Despite the music, you can walk on your own, and you've spent so many years without physical human contact that the idea of touching someone else fills you with shivers. He stays with you anyway[or][hal-going][stopping].";

Every turn when Hal Drama is happening:
	now Hal is in the location;	
	
To say hal-going:
	say "[one of]Hal follows you[or]Hal is the shadow you didn't know you had[or]Hal slips behind you noiselessly[or]Where you go, Hal goes -- for now[then at random]";

Every turn when Hal Drama is happening:
	if Hal Drama is happening for more than two turns and the office is not open and the current action is not examining the memo and Margo is not in the location:
		say "[hal-drama-action]";

To say hal-drama-action:
	say "[one of][hal-monster][or][hal-other][stopping]";


To say hal-monster:
	say "'So you're a [italic type]good[roman type] monster -- [if hal-yes? is true]and you're only here to kill the other witch?' Hal does not try to hide his expression of disbelief[otherwise]but you're not here to kill the other witch? What [italic type]are[roman type] you here for?'[paragraph break]You get the uncomfortable feeling that despite the fact that Hal's business empire is a tomb, he is starting to see you as a bad job interview[end if].[paragraph break][hal-flashback]";
	

hal-flashback-spoken is a truth state that varies.

To say hal-flashback:
	if hal-flashback-spoken is false:
		say "'I know I can come off as harsh,' Hal says. 'It's just irritatingly unprofessional when my employees don't tell me everything -- or can't, I guess in your case. Do you even have human motivations?' He coughs uncomfortably. His face relaxes with a sympathy that could be genuine. 'I didn't mean it like ... that is, I suppose ... it must have been ... I can't imagine what it would have been like, being an adolescent girl, waking up one morning to find you can't speak, and you have powers so fearsome that -- did I say something wrong?'[paragraph break]You shrug for him to forget it. It's been decades, and you wish you could.";
		now hal-flashback-spoken is true;	

To say hal-other:
	if a random chance of 1 in 3 succeeds: 
		say "[one of]Hal bites his mangled name tag -- he must be starving[or]Hal mutters something about [hal-muttering][or]Hal looks as though he wants to ask you more questions -- but, of course, all he'll hear from you is silence[or]Hal glances at the ceiling, probably wondering if you'll drain him if the music ever stops[then at random].";
	otherwise:
		say "[run paragraph on]";

To say hal-muttering:
	say "[one of]not knowing if he's awake[or]being sure he saw a walking corpse when he looked out a window recently[or]how hungry he is[at random]";

Hal Drama ends when the location is Breakroom.

Part Little Fight

Little Fight is a scene. Little Fight begins when Explore ends.

Little Fight ends hurtfully when Margo is hurt.

Little Fight ends timefully when Little Fight is happening for three turns.

Little Fight ends when the location is Breakroom.

Before going east when Little Fight is happening:
	now the player is in the Breakroom instead;

attack-with-fists? is a truth state that varies.

Little Fight ends fistly when attack-with-fists? is true;

Little Fight ends willingly when the attack-with-fists? is false and Margo is not hurt and Little Fight is not happening for three turns.

When Little Fight begins:
	say "'Come to the breakroom, Polly Dolly. I have sandwiches. And you can come too, Hal, if you kindly shut up.'";

Definition: A thing is possessed if it is carried by the player.	

Shattering it with is an action applying to two things. 

Understand "attack [something] with [something possessed]"  or "kill [something] with [something possessed]" or "break [something] with [something possessed]" or "fight [something] with [something possessed]" as shattering it with. Understand "stab [something] with [something possessed]" or "use [shard] to cut [Walkman]" or "use [shard] on [Walkman]" or "use [shard] to cut [earphones]" or "use [shard] on [earphones]" as shattering it with when the player carries the shard.

Before shattering the shard with the Walkman:
	try shattering the earphones with the shard instead; [Inform reverses some of our nouns/second nouns]
	
Before shattering the shard with the earphones:
	try shattering the earphones with the shard instead; 

Instead of shattering something with something:
	try attacking the noun;

Instead of attacking Margo when Little Fight is happening:
	if Polly carries the pipe:
		say "You swing the pipe wide, and it thuds into Margo's skull. She crumples. Hal claps.[paragraph break][if Steve is dead]The scary part about killing is it gets easier every time.[otherwise]The pipe trembles in your hands. You have never killed anyone on purpose. What have you done?[end if][line break]Margo stirs,[if Steve is dead] and without thinking, you bring the pipe down again. Crunch.[otherwise] and you step back in astonishment. Her skull is dented, though oddly, she isn't bleeding. No way anyone could shake that off.[end if][line break]'Rude!'[paragraph break]Margo grabs you by the ankles and yanks. You smack into the floor. You lie there, gasping air into your empty lungs as Hal groans.[paragraph break]'Come along, Polly Dolly.'[paragraph break]She drags you through the opening.[paragraph break]Hal whispers despair into his chest as he follows.";
		now Margo is hurt;
	otherwise:
		say "Your fist meets Margo's jaw. You gasp. It's like punching a wall of ice.[paragraph break]She snickers and grabs you and Hal by the wrist. Her grip is steel.[paragraph break]'Come along, sillies.'";
		now attack-with-fists? is true;
	now the player is in the Breakroom;

To say margo-drags-you:
	say "Margo's hand grips your wrist so hard, your fingers go numb. She pulls you toward the breakroom[period][paragraph break]'There is no way back, darling. Remember? Sandwiches!'";

To say maybe-quote:
	unless Little Fight is happening:
		say "'";
	otherwise:
		say " ";

Before going west when the location is End of Corridor and Little Fight is happening:
	say "[margo-drags-you]";
	try going east instead;
	
When Little Fight ends timefully:
	say "[margo-drags-you]";

Part Big Surprise

Big Surprise is a scene. Big Surprise begins when Little Fight ends. Big Surprise ends when Big Surprise is happening for 3 turns.

Instead of going west when Big Surprise is happening:
	say "[one of]'But the game isn't over, Polly Dolly,' Margo says.[paragraph break][or][stopping]Ted blocks your way.";


chair-binding? is a truth state that varies.

When Big Surprise begins:
	if Polly carries the pipe:
		say "Margo snatches the pipe from your hands.[paragraph break][if Margo is hurt]'It's poor taste to give someone a migraine, dearie[period]'[otherwise]'What were you going to do with that -- smash my good looks[question]'[end if][paragraph break]She tosses the pipe behind her, and it crashes beyond the doorway and rolls into the unseen corners of the lab.[paragraph break]You are totally defenseless now.[paragraph break]";
		remove the pipe from play;
	if the location is not Breakroom:
		now the player is in Breakroom;	
	now Margo is in Breakroom;
	now Ted is in Breakroom;
	now Hal is in Breakroom;
	say "[last-test-intro]Did you miss him, Hal?'
	
	In the room's darkest corner, Ted stands at one of the tables, staring through you as he did in the first-floor lobby. This time, his hands are over his ears. 
	
	Hal bounds to him and gives him a hug tighter than he gave you. Ted stays rigid.
	
	'It's me! Hal!' No reaction. Hal resorts to blubbering. 'Remember on the stairwell after the explosion? We were so lucky to be that far from the battery and -- we were running to get help, and you just ... fell down after we passed the girl. Everyone else started dropping dead after that, and I've been so ... don't you --' Hal steps back in disgust and horror. 'Ted ... you're, you're ...'
	
	'I am a goddess of miracles, the giver of life.' Margo takes the remote. She points it at Ted in a grand flourish. 'And your brother's my second-favorite corpse. I am in him and through him. Anything Dead Ted sees and hears, I see and hear.'";


To say last-test-intro:
	if Little Fight ended hurtfully:
		say "Margo yanks you to your feet. '";
	otherwise if Little Fight ended timefully:
		say "'You don't seem to be in any rush.' Margo says. 'Why don't you relax? ";
	otherwise if Little Fight ended fistly:	
		say "'Your lack of manners is going to get you killed, Polly,' Margo says. 'Of course, that will happen anyway. ";
	otherwise:
		say "'";
		
Part False Climax

[False Climax's a mother scene -- that is, it has various scenes that happen under it.]

Chapter False Climax Subscenes

A scene can be climax-child. 

climax-child-reached-limit? is a truth state that varies.

Every turn when a climax-child scene is happening for 5 turns:
	now climax-child-reached-limit? is true;
	
When a climax-child scene begins:
	now climax-child-reached-limit? is false;

To say maggot-text:
	say "Out of the corner of your eye, you see a maggot dangling from her lips. She swallows it"; [We'll be putting this in various climax-child scenes.]

Chapter False Climax Scene (the parent)

False Climax is a scene. False Climax begins when Big Surprise ends.

False Climax ends musically when Musical Walkman ends safely.

False Climax ends margo-dead when False Climax Margo Dangling ends victorious.

False Climax ends margo-alive when False Climax Margo Dangling ends timely.

False Climax ends when the Walkman is in North Side.
		

To set speakers:
	if Margo is in Breakroom:
		now speaker is Margo;
	otherwise if Hal is drained:
		now speaker is Hal;
	otherwise:
		now speaker is Ted;
	set speaker pronouns;


To set speaker location:
	now Speaker is in location;
	
Definition: A person (called character) is suddenly-dead-corridor if speaker is the character and it is in the location and it is dead.

Definition: A room (called place) is margo-ted if Speaker is Margo and Ted is in the place.

ted-awakened is a subject.

To say prisoner-speaker-description:
	if Prisoner is happening for at least 2 turns :
		say "[line break]";
		if Hal is suddenly-dead-corridor:
			say "Hal lies quiet on the floor, suddenly dead[period] [one of]You fight the urge to throw up[period][or][stopping]";
		otherwise if Speaker is zombie:
			[entrance of zombie speaker goes here for non-hal speakers]
			say "[Speaker] [one of]giggles at you[or]gives you an overfriendly wave[or]blows you a kiss[or]sticks [his-her-speaker] bloated tongue at you and pops it back in [his-her-speaker] mouth when [he-she-speaker] notices you looking[or]stands on [his-her-speaker] head for a moment[or]leaps in the air and clicks [his-her-speaker] heels[at random][period]";
		if the location is margo-ted:
			say "[paragraph break]Ted just stares. [one of]At least one thing is constant around here[or]You wonder if the beat witch leaves him in a sort of stasis when she doesn't need him to do much[or]Maybe deep inside, the formerly living Ted Tau is screaming[or]The dead are never bored[or]The death of his brother doesn't affect the dead man's moodless mood[or]He is not at peace -- just still[at random][period]";
	otherwise:
		do nothing;
			

To set new hallway descriptions:
	now the description of End of Corridor is "The reddish darkness of the corridor seems deeper now. It continues to the west, and the breakroom is to the east.[pipe-presence][one of][or][line break][stopping][prisoner-speaker-description]";
	[now the description of Corridor is "[corridor-description][line break][pipe-presence][prisoner-speaker-description]";]
	now the description of Corridor is "[corridor-description][pipe-presence][prisoner-speaker-description]";
	now the description of Upper Lobby is "[upper-lobby-description-generic][line break][pipe-presence][prisoner-speaker-description]";
		
[Ah, the text that could have been ... :) ]
	[if Margo is speaker:
		now the description of End of Corridor is "Margo's grin contorts the loose skin on her face.[paragraph break]'[polly-name], there's someone I want you to meet!'[paragraph break]You try to break out of Ted's grip, but his rigor mortis-ed fingers dig into your skin.";
		now the description of Corridor is "'You'll never guess!' Margo says. 'Who knew Christmas could come so early, and -- ooh, if I'm Santa, these must be my elves!'[paragraph break]Ted pauses next to the office door. It opens.[paragraph break]You gag on the stench and stop struggling for a moment.[paragraph break][office-undead].[paragraph break]'Ho, ho, ho, it's off to the North Pole!' Margo says, and you and your undead escorts press forward.[paragraph break][you-fool].";
		now the description of Upper Lobby is "Ted no longer holds you, but it doesn't matter. [corpse-torrent]";
	otherwise if Hal is speaker:
		now the description of End of Corridor is "As soon as you step into the corridor, you know something's wrong.[if Hal is in the location][paragraph break]Hal's eyes grow wide.[paragraph break]'Polly, I don't think I --'[paragraph break]He flops to the ground. He stares past the ceiling into final emptiness.[paragraph break]Your breath hisses and spasms through your teeth -- your version of a scream.[paragraph break]And Hal's dead lips curl into a grin.[keypress][paragraph break]You bolt.[end if]";
		now the description of Corridor is "Your legs can't move fast enough.[paragraph break]'But [polly-name], the party isn't over!'[paragraph break][if Hal is speaker]Hal's voice.[paragraph break][end if][you-fool].[paragraph break]The office door opens. [office-undead].[paragraph break]They block your way. You glance over your shoulder, but there's no escape that way -- Hal is skipping toward you, and Ted is lumbering out of the breakroom. You are an island of life in an ocean of the undead. The current swallows you and presses you forward.";
		now the description of Upper Lobby is "[corpse-torrent]";
	otherwise:
		now the description of End of Corridor is "You defeated the beat witch -- so why is nagging feeling inside you worse than before?[paragraph break]Enough of that. Focus. This isn't the first time you've escaped a building surrounded by people trying to kill you. The parking garage -- yes, if there is one, the mob likely isn't watching that.[paragraph break]You freeze at the footsteps behind you. You don't dare look back.[paragraph break]'That hurt, [polly-name]!' It's a man's voice you haven't heard before, but you know it's Ted's. 'Didn't your mommy tell you it's rude to make people splatter?'[paragraph break]You bolt.";
		now the description of Corridor is "Your legs can't move fast enough.[paragraph break][italic type]Stupid, stupid ...[roman type][you-fool].[paragraph break]The office door opens, and you gag at the stench. [office-undead].[paragraph break]They block your way. You glance over your shoulder, but Ted's there, blowing you a kiss. No escape, no escape.";
		now the description of Upper Lobby is "[corpse-torrent]";	]

dont-give-room-description? is a truth state that varies.

Instead of going when False Climax is happening and chair-binding? is false:
	say "[if the player is on the chairs]You'll have to fight your way out of this chair first[otherwise]You're a little busy to leave right now. This is why you came[end if]." instead;

When False Climax begins:
	now Hal is on the chairs;
	now the player is alive;
	now is-torture? is false;
	now playing-music? is false;
	redraw the status line;
	if Vorple is supported:
		follow the refresh Vorple status line rule;
		place a block level element called "turn";
	[The status line should change automatically with the scene change, but keypress messes this up, so we had to go manual.]
	say "Hal lunges at Margo, but Ted grabs him by the shoulders and plunks him down in a chair. Ted's hands go immediately back to his ears. Is that pain?
	
	Hal is scarlet with grief and anger. 'My brother is no one's plaything -- let him rest in peace, witch!'
	
	'But Hal, dear, I wouldn't have been able to figure out a lot of things without the knowledge rotting inside of Teddy's brain -- like how your company's adorable battery only fried electronics [italic type]outside[roman type] the building. And I wouldn't have been able to get the power generator running in a bazillion years without the helpful dead. Besides, even if I wanted to, it takes a little time for me to release my hold on a stiff -- time you don't have.' 

	She aims the remote upward and clicks a button. The music stops. 

	Ted's hands rest at his sides. You no longer burn.
	
	'Have some wax candy, Teddy.' Margo takes out her earplugs and tosses them to Ted, who swallows them.
	
	'Ted, what ...?'
	
	Hal's reaction makes Margo snort. 
	
	She aims the remote at the TV and turns on the news. Then she tosses the remote to Ted. 

	He puts it in his mouth and crunches hard on the plastic. Teeth fly everywhere. Hal winces. Margo giggles. Apparently, corpses eating random things has a punchline only she can see.

	'Don't be such a drippy-doodle, Hal. I've got a bunch of these remotes on the 46th floor,' Margo says. 'And, Polly, guess what! You're famous!'
	
	[if the player is not on the chairs]She shoves you onto one of the chairs[otherwise]'Stay seated,' she says[end if].";
	[Inform 7 won't pay attention that Torture is over, and we need to change the status bar color and turn off music, so we have to do this manually.]
	let color be "202020"; [black]
	execute JavaScript command "let statusBar = document.querySelector('.status-line-container'); statusBar.style.background = '#[escaped color]';";
	stop all; 
	now dont-give-room-description? is true;
	now chair-binding? is true;	
	if the player is not on the chairs:
		now the player is on the chairs; 
	follow the eliminate-room-description rule;
	remove the remote from play;
	remove the earplugs from play;
	say "[polly-news][line break]";
	scroll to last command;
	press any key;
	say "The commercial is one for toothpaste. It's an upbeat jingle sung by children. Both you and Margo tremble in a wave of agony, though the presence of lyrics protects you from a full-on seizure.
	
	[italic type]
	Pearly Bite toothpaste, O how clean![line break]
	My teeth are the whitest I've ever seen.[line break]
	Sparkle, sparkle, like a diamond mine.[line break]
	Having no cavities is oh so divine![line break]
	La-la-laaaaaahdy-la-la--
	[roman type]
	
	'My remote!' Margo shouts. 

	But Ted has just swallowed the last of it. He stares through both of you, his hands over his ears again.
	
	She rips the TV from the wall. The device goes silent and dark. Ted stops covering his ears. 

	But Margo wants revenge on the appliance. She hurls the TV out the window in a burst of glass that sends shards everywhere, including some that tear your face.
	
	Margo giggles some more. She pokes her head out of the massive, ragged hole and waits a moment. 'Dag nabbit -- too far to hear it land. I hope it hit one of the yokels down there. Then when someone asks, [']Hey, what's on TV?['], the other person will say, 'You mean, [']What's on Alfred?['] Hahaha.' 
	
	She reaches into her pockets and pulls out your Walkman and notepad. She hands you the notepad but gives the tape player to Hal. Margo manages to keep you seated, pin your arms to your side, and force the earphones -- still attached to the Walkman by a long cord -- onto your head as you struggle. Her grip on your upper arms is nearly tight enough to draw blood.
	
	'Final game for both,' she says. 'That tape is set to side A -- not dear Benny's voice, alas, but a tuba and a harp! Will you kill her with her own music first, Hal? Or will you drain him first, Polly? Think of it, girl -- you could get strong and kill me like you've always wanted! Just be quicker than him.' Giggle. 'Or maybe you'll use your notepad to beg for your life. It's like a cowboy movie! Isn't this delightful? Aaand ... go!'
	
	Your gaze locks with Hal's. You've never been more aware of someone else's life-rhythm -- or of your own. So much to give, so much to take ...";
	now the window is broken;
	now the TV is in North Side;
	now the TV is broken;
	now the player has the notepad;
	now the Walkman is closed; [in case we opened it before]
	now Hal has the Walkman;
	now the tape-side of the tape is A-side;
	now the player wears the earphones;
	now dont-give-room-description? is false;
	scroll to last command;


This is the eliminate-room-description rule:
	do nothing instead;

The eliminate-room-description rule substitutes for the room description body text rule when dont-give-room-description? is true. [We don't want a needless room description when Polly sits down, especially during our unavoidable (I think unavoidable) text dump!]

To say polly-news:
	say "'-- whom authorities are now identifying as Polly Miller based on descriptions from the emergency response team,' a reporter says.
	
	Images of you slide across the screen in quick succession. 
	
	'... killed half a million people in the city. But her murder spree started years ago with her mother and brother ...'
		
	 A picture of you and Benny in tuxedos before the Sibling Youth Music Festival. He leans against a harp, and you heft a tuba twice your size.
	
	'... highly dangerous ...'
	
	Your first wanted poster, which bears your sixth-grade student photo and instructions for the public to set music to lethal levels on sight. 
	
	'... eluding ... running ...  decades ...'
	
	You emerging from hiding in a national forest, you starving and breaking into a grocery store after hours, you running from a crowd with boomboxes. 
	
	'... monster ...'
	
	The latest surveillance footage: You dragging 'noted epidemiologist Alisha Brown' into a shed outside the quarantine area after you drained her and borrowed her hazmat suit. The fact that you didn't kill Dr. Brown is not mentioned.

	'More after the break.'"; [* paragraph break was here]
	[scroll to last command;]
	place a block level element called "turn";

[Here's an alternate version of the Great Beat Witch Text Dump:]
[say "The newscast shows a familiar porch with a creaky second step. Your dad is shouting at the cameras to leave him alone and that Polly is dead.
	
	The reporter presses further. Has he heard that authorities have identified his daughter as the beat witch responsible for the deaths of millions?
	
	Your dad goes off about how the creature that wears your face isn't you. A demon took the place of his little Polly overnight. That demon killed Polly's mother with a thought.
	
	Of course, the demon wrote over and over that it was an accident, but you dad says he could see through the tears. Still, he couldn't be the one to kill a monster that looked like his daughter. He locked you in the basement with some Enya playing on low and got the police.   
	
	But you escaped, and your older brother was gone -- your second victim. 
	
	Then a montage of photos and pain:
	
	• You and Benny in tuxedos: you with a tuba and him with a harp, both grinning after winning the Young Sibling Music Festival. 
	
	• Your first wanted poster. It bears your sixth-grade photo and the usual instructions for the public to blast music and show you no mercy for safety's sake. 
	
	• Dozens of images of you over the years, including you stealing food from a hot dog stand, disappearing into a national forest, running from people waving boomboxes.
	
	• Surveillance footage of you in an alley near the quarantine area, draining an epidemiologist named Alisha Bridges and taking her hazmat suit and helmet. She ended up surviving -- barely[if Steve is dead]. The same could not be said for the latest victim, one Dr. Steve Patel[end if].    
	
	'We'll keep you updated with the latest from the emergency team inside the city,' the anchor says. 'We'll also take a look back at centuries of beat witch cults. All after the break.'";]
	[press any key;]
	[Now the news shows a faded painting on yellowed parchment. In the center is a woman standing on a platform with her hands above her hand. On one side of her is a crowd of medieval peasants, kings, knights, and ladies raising their arms in supplication. On the other side, those not worshipping the woman are dead.]
	[
	'All after the break.'";]
	

Chapter False Climax First


False Climax First is a climax-child scene. False Climax First begins when False Climax begins.

False Climax First ends timely when climax-child-reached-limit? is true.

False Climax First ends drainingly when Hal is drained.

False Climax First ends lively when Hal is strong. [We gave him life.]

False Climax First ends notepadingly when showing-notebook? is true.

Before doing something to the earphones when False Climax is happening:
	if the current action is examining or talking to or showing or attacking or shattering:
		continue the action;
	otherwise if the chair-binding? is true:
		say "Margo's grip on your upper arms is icy iron. You can reach the notebook[if has-shard is familiar] and shard[end if] in your lap, but you can't touch the earphones on your head." instead;
		

This is the cant-exit rule:
	if chair-binding? is true:
		say "[exit-forbidden]" instead;
	otherwise:
		continue the action;

To say exit-forbidden:
	say "[one of]'Stay seated, [polly-name],' Margo says. She tightens her grip on your upper arms[or]Margo won't let you out of the chair[stopping]." instead;


[Every turn:
	follow the cant-exit rule;]
	

Before going when chair-binding? is true:
	try exiting;
				
Instead of getting off the chairs when chair-binding? is true:
	try exiting;

Before exiting (this is the stay-seated rule):	
	follow the cant-exit rule;
	
Before attacking when chair-binding? is true:
	follow the cant-attack rule;

This is the cant-attack rule:
	if the noun is the earphones and the earphones are not snapped and the player has the shard:
		say "You grab the shard and slice through the cord in a single motion. The tape is still whirring, but the music has stopped. The shard falls from your numb fingers, and you catch your breath.[paragraph break]'Well, that's a shame,' Margo says. 'Dear Hal, I'm sorry, but you're a useless worshiper. Do give my regards to that good night.'[paragraph break]Before Hal can cry out for mercy, Ted releases him, and Hal slides out of his chair, lifeless.[paragraph break]Margo rips what remains of the earphones from your head, grabs the Walkman from Hal's limp grip, and tosses both things out the window. You grow a chilly kind of numb as you realize what you've lost.";
		stop all;
		now the earphones are snapped;
		remove the earphones from play;
		remove the shard from play;
		now the Walkman is in North Side;
		now the Walkman is broken;
		now Hal is dead;
		now Hal is in Breakroom; [no longer on the chairs]
		follow the scene changing rules instead;
	otherwise if Musical Walkman is happening for more than 0 turns and the noun is Margo and has-shard is familiar:
		say "Margo grips your upper arms so tightly that there's no way you can reach her with the shard." instead;
	otherwise:
		say "[exit-forbidden]" instead;

	
Before attacking (this is the shard-attack rule):
	if chair-binding? is true:
		follow the cant-attack rule instead;

Every turn when the player is strong and the player is on the chairs:
	now chair-binding? is false;			

The stay-seated rule and the shard-attack rule are listed first in the before rules.	


Chapter False Climax Drain

False Climax Drain is a climax-child scene. False Climax Drain begins when False Climax First ends drainingly.
		
False Climax Drain ends when False Climax Margo Earphones begins. [This interrupts our scene.]

Before taking the Walkman when the Walkman is enclosed by Hal and False Climax Drain is happening:
	say "Hal clutches the Walkman tightly against his chest, as though it's a sacred relic. But you don't need the Walkman to deal with Margo." instead;

When False Climax Drain begins:	
	now chair-binding? is false;
	say "Hal's eyes widen when he realizes what you're doing, but he doesn't play the tape.[paragraph break]Ted lets him fall to the ground. Hal twitches. He clutches the Walkman.[paragraph break]Your muscles shiver with energy, and your body has a slight glow.[paragraph break]'That's more like it! Let's have some fun!' Margo says. Her grip loosens a little. [maggot-text].[paragraph break]Physical violence isn't normally your thing, but Margo is begging to be the exception.";
	now Hal is in Breakroom; [no longer in his seat]
	[remove the earphones from play;
	remove the Walkman from play;]
	
Every turn when False Climax Drain is happening and the current action is not attacking and Hal is drained:
	if a random chance of 1 in 5 succeeds:
		say "[one of]Margo's fists are raised. She's looking forward to a brawl[or]You have a strong urge to punch the marketing intern in the face[or]Margo beckons for you to just try to attack her[in random order]."

Understand "punch [Margo] in the face" or "punch [Margo] in face" as attacking.
	
Before exiting when the player is on the chairs and False Climax Drain is happening:
	say "[one of]With superhuman strength, you break free of Margo's grip.[or][stopping]";
	scroll to last command;

margo-dangling? is a truth state that varies.

shut-up-about-earphones? is a truth state that varies.

To clean-up earphones:
	if the player is wearing the earphones:
		remove earphones from play;
		now the earphones are part of the Walkman;
	

Instead of attacking Margo when False Climax Drain is happening:
	if the player is on the chairs:
		try exiting;
	say "You launch yourself at the marketing intern[if the player wears the earphones], and your earphones go flying[end if]. Your bodies crunch into the bits of glass on the floor.[paragraph break]Your punches fly[if Margo is hurt], and the dent in her skull deepens[end if].[paragraph break]Margo giggles between your blows.[paragraph break]'I don't think dear sweet Benny would want you doing this,' she says.[paragraph break]You voicelessly snarl, grab her by the collar, and throw her into dangling glass of the window. She catches herself -- barely.";
	clean-up earphones;
	now margo is dangling;
	follow the scene changing rules;
	
Instead of attacking Hal when False Climax Drain is happening:
	say "What? Hal is the closest thing to an ally you have.";

Instead of attacking Ted when False Climax is happening:
	if Ted is zombie:
		if the player is on the chairs:
			try exiting;
		say "You [one of]roundhouse kick Ted in the jaw[or]send your fist flying into Ted's stomach[at random][if the player wears the earphones]. The movement flings the earphones off your head[end if][if Ted carries the Walkman]. The Walkman goes flying out of Ted's hands and into the darkness beyond the window.[paragraph break]H[otherwise], and h[end if]e crashes into the sandwiches. He slides to the floor, unmoving[one of][or] ... again[stopping].";
		clean-up earphones;
		now Ted is dead;
		if Margo is dangling:
			say "[line break]Margo gives you a mocking snort as she finally hoists herself through the window. The loose glass slicing her skin doesn't bother her.[paragraph break]'Well, that failed miserably, [polly-name]. In fact, your day is about to get worse. Oh, so much worse.'";
			undangle Margo; [which causes the Walkman to be in North Side and Margo to not be dangling]
	otherwise: [ted is "dead" -- that is, inert (not zombie)]
		say "You kick Ted while he's down. You get no response.";

False Climax Drain ends margo-dangling when Margo is dangling.


Chapter False Climax Margo Dangling

False Climax Margo Dangling is a climax-child scene. False Climax Margo Dangling begins when Margo is dangling.

False Climax Margo Dangling ends victorious when Margo is dead. 

False Climax Margo Dangling ends failingly when Ted is dead.

False Climax Margo Dangling ends timely when False Climax Margo Dangling is happening for 4 turns.

False Climax Margo Dangling ends helpful when Polly is helpful.

False Climax Margo Dangling ends margo-winningly when the location is End of Corridor.


Aiding is an action applying to one thing. Understand "help [someone]" or "aid [someone]" as aiding. Understand "pull [someone] up" or "pull up [someone]" or "help up [someone]" or "help [someone] up" as aiding when Margo is dangling.

Polly can be helpful.

To say margo-dance:
	say "Margo grasps your hands. You try to break free, but she twirls the both of you at a sickening speed.[paragraph break]'It's happy-dance time, [polly-name]!'[paragraph break]Spinning, spinning, spinning.[paragraph break]'I have one last surprise. I guess today's like Christmas, except it ends in death!'[paragraph break]She lets you go, and you are sent tumbling out of the breakroom[if Hal is drained].[paragraph break]Hal cries out behind you -- and you know Margo has finished the job of draining him, for good this time. You sniff back tears[end if].";
	press any key;
	if Hal is drained:
		now Hal is dead;

Instead of aiding someone:
	if the noun is Margo and Margo is dangling:
		say "You will not gamble with your Walkman.[paragraph break]You reach down and pull Margo up.[paragraph break]'You are a wonderful human being.' Margo rises to her feet. 'That was an insult, by the way.'[paragraph break]She backs away from the window. 'Imagine -- this beautiful body could have gone over the edge! Speaking of which ...'[paragraph break]Ted hurls the Walkman over your head, and your beloved tape player vanishes into fog and darkness.[paragraph break]Her smile is too big for her face. 'Oh, no need to lose your temper.'[paragraph break][margo-dance]";
		now Polly is helpful; [Polly was helpful to Margo in pulling her out of the window.]
		now Margo is not dangling;
		now the Walkman is in North Side;
		now the Walkman is broken;
	otherwise:
		say "[if the noun is Denise and Witch Intro is happening]You want to help ... maybe you can give your life to her[otherwise]No one wants your help[end if].";

When False Climax Margo Dangling begins:
	say "Margo's fingers dig into the concrete of the narrow ledge. Her legs swing over nothingness, and you can only see her fingers and [if Margo is hurt]bashed-in [end if]head.[paragraph break]'I've had gerbils of fun, Polly Dolly, but the game is over,' she says.[paragraph break]You get closer. One push ought to do it.[paragraph break]Margo grins as she makes a vain attempt to wiggle up.[paragraph break]'If I go over, Benny does too.'[paragraph break][if the player has the Walkman]Cold hands tear the Walkman from your grasp[period] [end if]You whirl to find Ted with the tape player above his head, ready to toss it into the abyss.[paragraph break]'Be a cranberry sweet tart and help me up, will you, [polly-name]?' Margo says.";
	now Ted is zombie;
	now Ted carries the Walkman;
	if the player wears the earphones:
		try silently taking off the earphones;

Before taking the Walkman when the Walkman is enclosed by Ted:
	say "As fast as you are, Ted is faster. He lobs it over your head, and your Walkman is gone.[paragraph break]You exhale sharply with your mouth so far open it hurts. It's the closest you can come to a primal shriek. Without thinking, you rush at him.[line break]";
	now the Walkman is in North Side;
	now the Walkman is broken;
	try attacking Ted instead;
	
Understand the command "push" as something new.

Understand "push [something]" or "kick [something]" or "destroy [something]" as attacking. Understand "stab [something]" as attacking when the player carries the shard.

To say ted-dies:
	say "Ted crumples into a motionless heap.";

Instead of attacking Margo when False Climax Margo Dangling is happening:
	say "Your foot slams into Margo's[if Margo is hurt] battered[end if] face. She flails and disappears.[paragraph break][if Ted has the Walkman]As she falls, unseen and shrieking, Ted lobs the Walkman over your head, and it also vanishes into the fog.[paragraph break][end if]You suppose Margo meets the ground when you can no longer hear the screams[period][if Ted has the Walkman] And you never hear the Walkman hit, but you imagine it and the precious tape inside bursting into bits of metal and plastic[period][end if][if Ted is zombie][paragraph break][ted-dies][end if]";
	now the Walkman is in North Side;
	now the Walkman is broken;
	now Margo is not dangling;
	now Margo is in North Side;
	now Margo is dead;
	now Ted is dead;

When False Climax Margo Dangling ends timely:
	say "Ted grabs Margo by the arm and yanks her back into the breakroom.[paragraph break]'It's nice to see you're doing nothing useful like a good girl,' she says. [paragraph break]Ted lobs the Walkman over your head. It vanishes into the fog.[paragraph break]'Now, now,' she says. 'If you must lose your temper, at least be cheerful about it.'[paragraph break][margo-dance]";
	undangle Margo;
	if the player is not in End of Corridor:
		now the player is in End of Corridor;



To undangle Margo:
	now Margo is not dangling;
	now the Walkman is in North Side;
	now the Walkman is broken;

	
Chapter False Climax Margo Earphones

False Climax Margo Earphones is a climax-child scene. 

False Climax Margo Earphones begins when False Climax First ends lively. [We drained ourselves and gave Hal most of our lifeforce.]

False Climax Margo Earphones begins when Margo is wearing the earphones and False Climax is happening.

False Climax Margo Earphones ends struggled when Margo is struggling.

False Climax Margo Earphones ends timely when climax-child-reached-limit? is true.

When False Climax Margo Earphones begins:
	say "[if Hal is strong]He breaks Ted's grip.[paragraph break]'Sorry,' he tells Ted. Still holding the Walkman, Hal takes his brother by the neck, lifts him with one hand, and flings him at Margo. Ted and Margo crash in a burst of sandwiches.[paragraph break]Hal leaps over your head and grabs the earphones from you in a single motion.[paragraph break]Margo is on her feet just as Hal puts the earphones on her head and presses play.[paragraph break][end if]She screams and claws at the wire, but [if Hal is strong]Hal presses[otherwise]you press[end if] the earphones harder against her skull.[paragraph break][if Hal is strong]Hal drags[otherwise]You drag[end if] her toward the broken window by the head. Her feet kick every which way[period][if Hal is strong][paragraph break]'Try draining anyone now, witch[exclamation]'[end if][paragraph break]'Teddy!' Margo whispers.[paragraph break]Ted starts to get up, but he trembles, collapses back into the sandwiches like a masterless marionette and is still.[paragraph break]Margo braces herself against the wall near the window, teetering inches from the edge. Despite the music[if Hal is strong] and Hal's strength[otherwise if the player is buff] and your strength[end if], she's barely managing to stay where she is.[if the player is buff][line break]Her face twists in pain, but she manages to snicker at you. She can tell Hal's strength is already dimming from you. She twists your fingers. Your grip loosens on the earphones.[paragraph break]Margo's eyes go wide, and you sense movement behind you. Hal, in a half-daze, barely managing to stand, wraps his arms around Margo's waist, and pushes his shoulder into her. She clings to him. He does not resist[period][hal-margo-death][end if]";
	now chair-binding? is false;
	now Ted is dead;
	now Hal is in Breakroom; [no longer on the chairs]
	now Margo wears the earphones;
	if the player is drained:		
		now Margo is struggling;
	otherwise:
		now Margo is in North Side;
		now Margo is dead;
		now Hal is in North Side;
		now Hal is dead;
		now the earphones are part of the Walkman;
		now the Walkman is in North Side;
		now the Walkman is broken;

Definition: A person is margo-hal if it is Margo or it is Hal.

To say hal-margo-death:
	say "[paragraph break]The next second seems to last hours. As he and Margo begin their plummet through the teeth of dangling glass and into nothingness, Hal turns and gives you a look that's ... pity?[paragraph break]They both vanish, along with your Walkman. You don't hear anything hit the ground, but Margo's shrieking has faded to silence.";


Chapter Margo's Music

Margo's Music is a semi-musical scene. 

Margo's Music begins when False Climax Margo Earphones begins. 

Margo's Music ends when False Climax Margo Struggling ends.

Chapter False Climax Margo Struggling

False Climax Margo Struggling is a climax-child scene. False Climax Margo Struggling begins when False Climax Margo Earphones ends struggled.  

False Climax Margo Struggling ends victorious when Margo is dead.

False Climax Margo Struggling ends timely when False Climax Margo Struggling is happening for 5 turns.

Before aiding Hal when False Climax Margo Struggling is happening:
	try attacking Margo instead;

Before aiding Margo when False Climax Margo Struggling is happening:
	say "[one of]She looks terrified, and despite everything, your first instinct is to help. You move to stop Hal, but Margo glances up at you, and ... are her lips in a mocking curl? And her eyes are so flat, so inhuman. You shake with revulsion[or]You can't make yourself do it[stopping]." instead;

Before attacking a margo-hal person when Margo is struggling:
	if the player is on the chairs:
		try exiting;
	say "You half-crawl toward Margo and Hal. With the last of your strength, you press your body against [noun][']s. They lurch into what remains of the window, taking your Walkman with them.[paragraph break]You catch yourself before you fall too[period][hal-margo-death]";
	now Margo is in North Side;
	now Margo is dead;
	now Hal is in North Side;
	now Hal is dead;
	now the Walkman is in North Side;
	now the Walkman is broken;
	now Margo is not struggling instead;
	
When False Climax Margo Struggling ends timely:
	say "Hal's glow is dimming. Margo grins. She outlasted his newfound strength. She knees him in the gut, grabs him by the throat, and hurls him out the window. She tosses the Walkman and earphones after him.";
	now Hal is dead;
	now the Walkman is in North Side;
	now the Walkman is broken;


Chapter False Climax Unaction

[This behaves a little differently from our other False Climax scenes -- due to to the fact that's musical, it comes with its own timer ... OF DEATH!!!]

False Climax Unaction is a scene. 

False Climax Unaction begins when False Climax First ends timely. [We'll add others]

When False Climax Unaction begins:
	if currently-playing? is false:
		say "'I can't take it anymore,' Hal says. 'Sorry, [polly-name].'[paragraph break][start-music]";
		now currently-playing? is true;	
		follow the scene changing rules;

False Climax Unaction ends when Musical Walkman begins.

false-climax-unaction-emergency-shut-off? is a truth state that varies. [conventional means are not shutting down False Climax Unaction Scene when Musical Walkman starts]


False Climax Unaction ends MacGyver when false-climax-unaction-emergency-shut-off? is true;



Part Transition

Transition is a scene. Transition begins when False Climax ends. Transition ends when Prisoner begins. [Prisoner begins as soon as we leave the breakroom -- on our own accord or by force from Margo.]

This is the move-player-with-margo-and-ted rule:
	if Ted is dead:
		now Ted is zombie;
		now Ted is in End of Corridor;
		now Margo is in End of Corridor;
	if the player is not in End of Corridor: [Because there's a chance the player got left behind in the Breakroom!]
		now the player is in End of Corridor;
		follow the scene changing rules;

When Transition begins:
	set speakers; [What corpse will speak for Denise?]
	[No matter how False Climax ends, Ted will always be in the breakroom.]
	set new hallway descriptions;
	[Here's how we start off with the speakers.]
	if Speaker is Margo and the player is not helpful:
		say "The intern picks a maggot from under her fingernail. [paragraph break]'You are such a disappointment, [polly-name].' She squishes the maggot between her thumb and index finger and snorts it. 'But I'm a good hostess. Hal got his little surprise, but I haven't forgotten Part Two of yours[exclamation]'[paragraph break][if Ted is dead]She snaps, and Ted's blank eyes open. He glides to his feet in a single, breathless movement[period][paragraph break][end if][if Hal is drained]You are suddenly aware that Hal's eyes are empty, and he's deathly still -- completely drained. You're going to be sick.[paragraph break]Margo feigns surprise.[paragraph break]'Mercy, mercy me, how did [italic type]that[roman type] happen? So rude of our pal Hal to leave us like that!'[paragraph break][end if]Without a word from Margo, Ted takes you by the wrist and drags you into the corridor. She follows, clapping and giggling.";
		press any key;
		follow the move-player-with-margo-and-ted rule;
		now Hal is dead;
	otherwise if the player is helpful:
		follow the move-player-with-margo-and-ted rule;
	otherwise if the player is not helpful:
		say "You slump to the floor for a moment.[paragraph break][italic type]You did it.[roman type][paragraph break]";
		if Hal is in the location:
			if Hal is drained:
				say "Hal groans, and his eyes flutter into focus.[paragraph break]'She's gone? Really, actually, truly gone?'[paragraph break]You nod.[paragraph break]He motions you to help him up, but you hesitate.[paragraph break]'Don't worry about me, Polly,' he says. 'She drained me so often, I'm used it.'[paragraph break]You pull him to his feet. He leans on you. The chills from human touch no longer feel so deep and cold.[paragraph break]'A little dizzy ... just give me a moment.'[paragraph break]He focuses on the corridor and avoids glancing at his brother's body.[paragraph break]'Let's go,' he finally whispers, nodding to the west.[paragraph break]Something isn't right.";
				scroll to last command;
			otherwise:
				say "Margo is broken on the pavement somewhere. You feel empty and uneasy, though -- maybe it's Hal and Ted lying dead like normal corpses, or the fog drifting ghost-like past the window. Something isn't right.[paragraph break]You tell yourself you're just not used to winning.";
				scroll to last command;
		otherwise:
			say "It's just you and Ted, who lies still, as is the natural way of corpses.[paragraph break]You take a deep breath. With Margo dead, you can focus on escaping alive. The mob is still waiting for you on the street, no doubt.[paragraph break]Why do you still feel this disquiet?";
			scroll to last command;
			
		
After going when Transition is happening and Hal is in Breakroom and Hal is not dead:
	now Hal is in the location;

Chapter Speaker

Speaker is a person that varies.

he-she-speaker is text that varies. He-she-speaker-caps is text that varies. his-her-speaker is text that varies. His-her-speaker-caps is text that varies. him-her-speaker is text that varies. his-hers-speaker is text that varies.

To set speaker pronouns:
	if speaker is male:
		now he-she-speaker is "he";
		now He-she-speaker-caps is "He";
		now his-her-speaker is "his";
		now His-her-speaker-caps is "His";
		now him-her-speaker is "him";
		now his-hers-speaker is "his";
	otherwise:
		now he-she-speaker is "she";
		now He-she-speaker-caps is "She";
		now his-her-speaker is "her";
		now His-her-speaker-caps is "Her";
		now him-her-speaker is "her";
		now his-hers-speaker is "hers";

Part Prisoner

Prisoner is a scene. Prisoner begins when the location is End of Corridor and False Climax has happened.

Instead of going east when the location is End of Corridor and Prisoner is happening:
	say "[one of][Speaker] stands if front of you, wagging [his-her-speaker] finger.[paragraph break]'That party is over,' [he-she-speaker] says[or][Speaker] won't let you go that way[stopping].";

hal-killed-organ? is a truth state that varies.

musical-blast-prisoner? is a truth state that varies.

When Prisoner begins:
	follow the play-organ rule;
	if the player is strong:
		say "A blast of organ chords from the unseen speakers in the ceiling slams into your ears. You collapse.[paragraph break]The music is gone as suddenly as it came, but the result was precise -- the notes were played at the right volume, for the right amount of time.[paragraph break]The extra strength has been stripped from you. You are otherwise unharmed.[paragraph break]You manage to get back to your feet.[paragraph break]";
		now the player is alive; [as in no longer strong]
		now musical-blast-prisoner? is true;
		[Prisoner begins]
	if Speaker is Hal: [didn't help Margo through window but pushed her out instead, so she's leaving with Hal]
		now Hal is in the location; [end of corridor]
		now Hal is dead;
		now the player is alive; [We have to note this here for the keypress issues.]
		redraw the status line;
		if Vorple is supported:
			follow the refresh Vorple status line rule;
		now Hal-killed-organ? is true;
		say "'Polly, what was --'[paragraph break]Then Hal falls. He does not move.[paragraph break]Your breath erupts in rapid hisses through your teeth -- your version of a scream.[paragraph break]Hal is dead.";
	otherwise if Speaker is Margo:
		follow keep-prisoner-actors-together rule;		
		say "'I know you're all glitter and unicorn barf, [polly-name], but I could use some fresh air,' Margo says[if musical-blast-prisoner? is true] as she lowers her hands from her ears[end if]. [if the location is margo-ted and musical-blast-prisoner? is true]Ted does the same[otherwise]Ted is her silent shadow -- no, he's more of an extension. They move in sync with one another like an old married couple -- or the same person[end if].";
	unless Speaker is Hal:
		now Speaker is zombie; [a precaution!]

This is the hal-awakens rule:
	say "Hal's lips curl into a grin too wide for his face. His eyes open. At first you see only the whites, but the eyes roll forward into their proper places.[paragraph break]'Miss me, [polly-name]?'[paragraph break]You're too stunned to move. Whatever Hal has become, it's not the Hal you knew looking back at you.[paragraph break][splat-encounter].[paragraph break]He stands, clenching and unclenching his fists, testing the reach of his limbs."; ['I know you're all cream puffs and pixie turds, but I for one need some fresh air.']
	now Hal is zombie;

To say splat-encounter:
	say "'Splatting all over the street hurt, [polly-name]! And I didn't even bounce!' [He-she-speaker-caps] snickers";

Every turn when Hal is dead for more than 1 turn and Hal-killed-organ? is true:
	follow the hal-awakens rule;

Before going when Hal is dead for more than 1 turn and Hal-killed-organ? is true:
	follow the hal-awakens rule instead;

This is the ted-awakens rule:
	if the player is drained:
		now the player is alive;
		say "A sudden energy bursts into you from an unknown source. Someone, somewhere has just given you life -- the amount you spent on strengthening Hal.[paragraph break]";
	say "Footsteps approach.[paragraph break]You turn to find ... Ted. For the first time, he speaks to you.[paragraph break]'Miss me? I'm like a zit on prom night,' he says.[paragraph break]Panic makes breathing difficult.[paragraph break][splat-encounter].";

Every turn when Prisoner is happening for one turn and Speaker is Ted:
	say "[run paragraph on]";
	follow the ted-awakens rule;
	now ted-awakened is familiar;

Before going east when ted-awakened is unfamiliar and Prisoner is happening:
	if the location is End of Corridor:
		say "You don't dare return to the Breakroom of Death and Rotting Sandwiches." instead; 

This is the keep-prisoner-actors-together rule:
	now Speaker is in the location;
	if Speaker is Margo:
		now Ted is in the location;
	
Every turn when Prisoner is happening:
	follow the keep-prisoner-actors-together rule;

To say you-fool:
	say "You were a fool to think you could stop any of this, that you could save anyone. Benny's faith in you was misplaced";
	
To say office-undead:
	say "Countless bodies pour into the corridor. Their faces bubble with burns and rot. Decomposing tissue drips in yellow streams through lab coats. And their eyes -- those with orbs still in their eyesockets give you empty stares";
	
To say corpse-torrent:
	say "The torrent of corpses sweeps you away.[paragraph break]The door to the stairs gives way before unnatural flesh[period][keypress]";

[If the player is speedy, traveling to the office door and opening it so dead people spill out and push player into the stairwell will take 3 moves in the Prisoner scene.]

Every turn when Prisoner is happening for at least two turns:
	say speaker quotes;
	
To say drain-at-once:
	say "Did you know you can drain more than one person at once[question]";
	
monologue-complete? is a truth state that varies.

To say monologue-complete:
	now monologue-complete? is true;

Table of Important Speaker Sayings
Words
"'You know, I was once a soggy pity-party like you -- always running, slithering through shadows,' [Speaker] says. [He-she-speaker-caps] gives the dazzling snarl of a teacher about to launch into an unwanted lecture. 'As for me ... well, I had luck I had never dreamed of, though it didn't start that way. I wandered into the city. I was starved! I managed not to be noticed and was going through garbage in the park nearby when a passing truck flooded downtown with the screechiest hickville honky-tonk tune you can imagine!' [He-she-speaker-caps] wrinkles [his-her-speaker] nose. 'I was on the grass, of course, shaking, foaming at the mouth -- as one does. Anyhow ... the truck passed, and I got up and ran. But I had been seen. People got out their phones and started chasing me -- you wouldn't believe what passes for popular music these days.'[paragraph break][His-her-speaker-caps] voice quivers with mock surprise. 'Apparently, beat witches are too dangerous to live -- did you know that?'" 
"'So ... you know what they say. [']A beat witch is a brass-knuckled slap against nature.['] [']For the public's safety, every beat witch must be killed on sight.['] [']Drown the abominations in music.['] [']The demons wear the faces of your daughters.['] I was about to bid this world good riddance, but everything changed when ...' [Speaker] licks [his-her-speaker] lips. The memory must be delicious. 'BOOM!'"
"'This skyscraper rippled in the explosion. The stoplights blinked out. Cars stopped. And best of all, everyone's phones went kaput! My attackers were helpless and at my most incomparable mercy!' [Speaker] applauds [him-her-speaker]self. 'A most unique opportunity! [drain-at-once] Amazingly, I hadn't tried before, but it's true. And the more I drained, the stronger I became! I reached a point where I didn't even have to be super close to someone to drain them! I got the street musicians that way, and then, eventually, everyone. Who could stop me?'[monologue-complete]"
"'Why live like vermin when you can be a goddess?' [Speaker] spreads [his-her-speaker] hands as if posing for some Renaissance painting of divinity. 'You live beneath yourself, [polly-name].'"  

[At that moment, I thought I was a goner, going the way of eight-tracks, text adventures, and Crystal Pepsi]

To say speaker quotes:
	if the Table of Important Speaker Sayings is Empty:
		say "[unimportant speaker quote]";
	otherwise:
		repeat through the Table of Important Speaker Sayings:
			say "[words entry][line break]";
			blank out the whole row;
			break;


Table of Unimportant Speaker Sayings
Words
"'Aren't the dead lovely?' [Speaker] says, gesturing to[if the location is margo-ted] Ted and then[end if] [him-her-speaker]self. 'Would you like to join them?'"
"'When we're done, I will find Benny. I'll take his life so slowly, he won't even know what's happening until he's staring at the ceiling,' [Speaker] says. 'Then I'll whisper your name in his ear.'"
"'You know the worst part about draining people from afar?' [Speaker] doesn't wait for your answer -- not that you could respond with more than a shrug. 'You don't hear them fall. You know, freshly dead bodies hit different from live ones. More of a tapping than a thud. [']Stiff music,['] I call it.'"
"'Oh, [polly-name]. I wish you at least knew sign language,' [Speaker] says. 'Of course, how would you have known you'd wake up one morning as a beat witch, and who would have taught you then? Still, I'm sure you have more judgments of me than you could ever put on paper, and I'd be giddy to know. Self-righteousness is a hobby of mine as a heavenly being, you see.'"

To say unimportant speaker quote:
	sort Table of Unimportant Speaker Sayings in random order;
	repeat with N running from 1 to the number of rows in the Table of Unimportant Speaker Sayings:
		choose row N in the Table of Unimportant Speaker Sayings;
		if there is a words entry:
			say "[words entry][line break]";
			blank out the whole row; 
		otherwise:
			say "[run paragraph on]";
		break;

Chapter Prisoner Ending

Prisoner ends when the office is open.

lobby-countdown is a number that varies. 

When play begins:
	now lobby-countdown is 0;

[If the player is just lollygagging in the Upper Lobby, we don't want them to be stuck for long.]	
Every turn when the player is in Upper Lobby and Prisoner is happening:
	increase lobby-countdown by 1;
	if lobby-countdown is 3:
		say "[Speaker] strolls down the corridor and stops at the office door. [if the location is margo-ted]Ted stays put -- he's tense, but then, he's dead. [end if][paragraph break]'Dare me to open this door?'[paragraph break]Before you can make any response[if has-opened-office-hal-drama? is true] -- opening the office was less than pleasant last time --[otherwise],[end if] [Speaker] opens it with a flourish and steps aside."; [Problematic line/paragraph break before Dare me to open this door]
		now Speaker is in Corridor;
		try Speaker opening the office;

When Prisoner ends:
	now corpses are zombie;
	say "Countless bodies pour into the corridor from the office. Their faces bubble with burns and rot. Decomposing tissue drips in yellow streams through lab coats. And their eyes -- those with orbs still in their eye sockets give you empty stares.[paragraph break]They rush you.[paragraph break]You stagger back, but they keep coming.";
	if the player is in Corridor:
		now the description of Upper Lobby is "";
		now the player is in Upper Lobby;
	otherwise:
		say "[line break]";
	say "They crowd into the lobby. Slimy flesh presses against you, and you can't breathe.[paragraph break]You are backed into the door to the stairwell, and the undead keep spurting out of the office.[paragraph break]The door at your back snaps, and the torrent of corpses sweeps you away before you can gasp.";
	press any key;


Part Stairway Journey

Stairway Journey is a scene. Stairway Journey begins when Prisoner ends. Stairway Journey ends when the player is in Roof.

When Stairway Journey begins:
	now the player is in Landing;
	say "The dead push you upward.";
	let R be the list of rooms in Stairway; [All those numbered floors defined in Book Stairway!]
	repeat with place running through R:
		[say "you are in [place]";]
		now the description of place is " [run paragraph on][no line break]";
		if the printed name of place is "34th Floor":
			now the description of place is "You can't get away. You are half-carried, half-shoved up the winding stairs.";
		otherwise if the printed name of place is "35th Floor":
			now the description of place is "You can do nothing against the mass of rot and limbs.";
		otherwise if the printed name of place is "38th Floor":
			now the description of place is "Help.[keypress]";
		otherwise if the printed name of place is "42nd Floor":
			now the description of place is "BENNY";
		otherwise if the printed name of place is "43rd Floor":
			now the description of place is "I";
		otherwise if the printed name of place is "44th Floor":
			now the description of place is "FAILED[keypress]";
		otherwise if the printed name of place is "49th Floor":
			now the description of place is "A door ahead of you bursts open. Fog drifts past your face.";
		now the player is in place;
	press any key;
	say "[run paragraph on]";
	now the player is in Roof;

Part Big Reveal

[Takes place on roof. Here we finally meet Denise by name!]

Big Reveal is a scene. 

Big Reveal begins when Stairway Journey ends.

When Big Reveal begins:
	now the corpses are in the location; [the Roof -- Speaker and Denise have not yet made their grand entrances]

polly-attempt-battery? is a truth state that varies.

Big Reveal ends when polly-attempt-battery? is true.

ted-with-margo? is a truth state that varies;

When Big Reveal ends:
	let R be the list of rooms in Oficina;
	repeat with place running through R:
		if place is margo-ted:
			now ted-with-margo? is true;
	say "You whirl around. [Speaker] glides through the parting crowd, fingers curled around the hand of the golden-haired girl from the stairs. The girl holds that gray book under her other arm, and the camera dangling from her neck swings from side to side as she skips toward you. She releases [Speaker]'s hand and gives you a wink.[paragraph break]'Surprise, [polly-name]!' [Speaker] says, as though announcing an unexpected birthday party. 'Meet me ... Denise!'";
	press any key;
	say "The girl gives an exaggerated curtsy. Her lips curl in silent laughter at your confusion.[paragraph break]'Me!' [Speaker] says. The girl gestures to herself, and [Speaker] points to her. 'Denise. Your hostess. Your pal. Your queen, speaking through my chief flesh puppet! You're welcome for healing you back there -- I couldn't have you bleeding all over my palace.'[paragraph break][Speaker], apparently the chief puppet, gives an exaggerated bow. Denise cups a hand to her own ear.[paragraph break]'What was that? You'll have to speak up.' [Speaker] snorts. 'Still [']talking['] through that dopey notepad? We can't all become goddesses with the life force of thousands, eh? I bet you can't do this either!'[paragraph break]A white light bursts from Denise, so bright that your eyes feel like fire.[paragraph break]The display of divinity makes you lose your footing. The corpses behind you step back so you can hit the concrete unhindered.[paragraph break]When you finally stand, scraped and bruised, rubbing sight back into your eyes, you find the battery is hidden behind the undead army. [paragraph break]And Denise has the appearance of a normal girl again, though there is nothing normal about the coldness in her smile.[line break]";
	now zombie-truth is familiar;
	now Speaker is in the location;
	if ted-with-margo? is true and Speaker is not Ted:
		now Ted is in the location;
	now Denise is in the location;
	now denise-name is familiar;
	remove battery from play; [temporarily!]


Part Denise Convo

Denise Convo is a scene. Denise Convo begins when Big Reveal ends.

When Denise Convo begins:
	show notebook;
	if denise-talk-one? is true:
		if is-quit-denise-game? is false: [If we didn't already opt out of the conversation during the first pass.]
			show notebook; [It's so fun that we do it again!]

Denise Convo ends when denise-talk-two? is true.


Part Imminent

[As in, going off the roof is imminent!]

Imminent is a scene. Imminent begins when Denise Convo ends.

To say Ted-in-crowd:
	if Ted is in the location and Speaker is not Ted:
		say "The crowd breaks for Ted, who is as emotionless and gone as the rest of them[period] ";

When Imminent begins:
	say "Denise gives you an eye roll.[paragraph break]'[if is-quit-denise-game? is true]You don't need to say anything to show that you talk too much,[otherwise]You're quite the blabbermouth with that notepad, huh[question][end if]' [Speaker] says. 'Gimme that back.'[paragraph break]One of the dead swipes the notepad from your hands. [if Ted is in the location][Ted-in-crowd]Ted shoves the notepad in his mouth and chews[otherwise]A group of them kneel around the notepad as if it were a small, caught animal. They tear it apart with their teeth, growling and slurping every last scrap. You sniffle back your grief. You're not sure if you're saddened because you have lost your only way to talk or the unfeeling dead have been robbed of their dignity[end if].[paragraph break]'But I've figured out how to stop the drones from coming,' [Speaker] says [if Speaker is Ted]through the slimy pulp in [his-her-speaker] mouth[otherwise]as the last of the notepad is crushed between smacking lips[end if]. 'You can do it for me. Imagine this: a beat witch who killed an entire city flees the fearless doers of good. They corner her in this skyscraper. She realizes she is surrounded, that she is worthless, an abomination, blah blah blah, so much despair. And then ...' [paragraph break][Speaker] pauses so Denise can show you a smile that could sink a mountain. [if Speaker is Ted][Speaker] swallows, and t[otherwise]T[end if]he puppet's voice becomes an overdramatic whisper.[paragraph break]'... the beat witch jumps to her death.'[paragraph break]Before you realize what's happening, icy hands hoist you into the air. The dead grab you by the wrists and stretch your arms outward while holding your ankles together.";
	remove notepad from play; [for good this time]

Every turn when Imminent is happening:
	if Imminent is happening for two turns:
		say "Your captors pass you to one another.[paragraph break]'Since concerts are out for you, you never thought you'd be crowd surfing, eh, [polly-name]?' [Speaker] calls at your feet. 'Enjoy it!'";
	if Imminent is happening for three turns: [In text below: We've already mentioned a bathtub before in describing the first battery. Should it be President Taft's trousers?]
		say "Your carriers stop their march. Underneath your head are wind and nothingness.

		Denise pops into your vision -- she's on shoulders. Her camera points down at you.

		'Yeah, someone's got to take the, um, fall, but I'm still kinda-sorta-almost-ish sad that you won't be coming with,' [Speaker] says. '[italic type]Millions[roman type] will be at my next party, thanks to the little battery that goes boom. Once the fireworks start, Los Angeles will have no electrical anything -- and so a whole-lotta-nada when it comes to music to stop yours truly, so -- keep that expression! Your eyes are as big as President Taft's second bathtub.' A click and a flash. 'Perfecto, insecto!'

		Denise descends out of sight as she shakes the new Polaroid picture.

		'You are such a weirdo,' [Speaker] continues. 'Why worry about so many who want you dead? Remember our little game on the stairs? [if Polly is good]I wanted to see if you were truly stupid -- stupid enough to die for a stranger. I underestimated you. You are stupid enough to die for gaggles of strangers who would rather kill you than say thanks[otherwise]You want everyone to think you're a misunderstood angel, but I proved [italic type]that[roman type] was a bologna sandwich with Grey Poupon. You would have killed a sweet little girl like yours truly than die yourself. You only [italic type]wish[roman type] you could be me[end if]! 

		'It's going to be great, [polly-name]. Who knows what will happen when I'm glorified with the life force of a bazillion? Maybe I'll speak on my own -- no stiffs needed. And -- ooh, I bet I'll be able to drain people a hundred miles away! I'll be the goddess this world deserves! 

		'Huh. Well, that's it, so ...'

		You slide forward and down. No one is holding you anymore.";

Imminent ends when Imminent is happening for four turns.

Chapter Imminent Actions

Taking inventory is approved behavior. 

Looking is approved behavior.

Listening is approved behavior. 

Waiting is approved behavior. 

Understand "bite [someone]" as attacking when Imminent is happening.

Before doing something when Imminent is happening or Descent is happening:
	if the current action is attacking and Imminent is happening:
		say "You [one of]kick[or]try to wiggle free[or]try to bite[at random], but [one of]it is impossible to fight the dead[or]all you get for your efforts is [Speaker]'s merry laughter[or]you know it's useless[stopping]." instead;
	otherwise if the current action is examining:
		if the noun is a forbidden:
			do nothing;
		otherwise if Imminent is happening:
			say "You can't see [the noun] -- you can only look up into the sky." instead;
	otherwise if the noun is the crow:
		continue the action;
	otherwise if the current action is approved behavior or the current action is witchy behavior:
		continue the action;
	otherwise if the current action is going down and the location is Falling:
		continue the action;
	otherwise:
		say "You are powerless to do that." instead;
	
Part Descent

Descent is a scene. Descent begins when Imminent ends.

Descent ends when Resurrection begins.

When Descent begins:
	now the player is in Falling;
	say "The mist rushes past you in a rippling blur.

	A crow appears in the haze. It darts downward with you, nearly matching your speed.

	You always figured you'd die someday by your brain exploding, and even though falling to your death means [italic type]all[roman type] your organs will burst at once, it's a relief. No music, no look up at cheering monster hunters ... just you, the screaming air, and the pavement. And, apparently, this bird.
	
	Your only regret ...

	Time seems to slow as you think of Benny.";
	
Every turn when Descent is happening for one turn:
	say "The cassette tape Benny gave you is gone. Even if you could grow wings like the crow that is following you down, you would likely never hear his voice again.

	But you knew if you listened to his message too much, the tape would wear out, and you would be truly alone. So you listened to it sparingly, but you repeated his words to yourself every day.

	You mentally recite it one last time. The tape began with two hisses and a pop. And then ..."

Every turn when Descent is happening for one turn:
	say "[benny-full][paragraph break]You fall through the last of the fog, and the city droops in the first sickly light of morning.";
	scroll to last command;
	now the sun is in City;
	now the description of the fog is "The fog is wispy and golden in the morning light.";
	
Every turn when Descent is happening for three turns:
	say "You can see more than buildings now. The crow flaps its wings in excitement and slows its fall. Its fresh meal has almost hit the asphalt dinner plate.[paragraph break]People in yellow hazmat suits are gathered on the street. Some point at the living comet hurling toward them, while others pull them out of the way.[paragraph break][italic type][drain-at-once][roman type][paragraph break]One raises a phone, but you can't hear anything over the air roaring around you, though you can sense the life rhythm of everyone below.[paragraph break][italic type]It may require you to do something magnificent.[roman type][line break]";
	
Every turn when Descent is happening for four turns:
	if the player is not godly:
		say "The mob scurries out of the way.[paragraph break][polly-splat]";
		die;
	

To say polly-splat:
	say "You slam into the street in a flurry of asphalt and blood. Your bones shatter. Your insides burst. [if Margo is dead]And you don't bounce.[end if]";
	stop Sound of Howling Wind; [both real death and fake deaths print this, so we're good!]




responders-visible? is a truth state that varies.

Every turn when Descent has happened for three turns:
	now responders-visible? is true; [We have to do this roundabout way because of an Inform 7 bug.]

After deciding the scope of the player when the location is Falling:
	if responders-visible? is true:
		place the responders in scope; 
 

Does the player mean doing something to the buildings when Descent is happening:
	it is likely;
	
Rule for clarifying the parser's choice of the buildings when Descent is happening:
	do nothing instead;

Understand "fly" as a mistake ("Flight is not one of your powers[if Descent is happening], which is unfortunate[end if].").

Instead of going down when Descent is happening:
	say "That is already taken care of."

Part Resurrection

Resurrection is a scene. Resurrection begins when the player is godly.

To say south-side-desc-resurrection:
	[redraw the status line;]
	say "Your would-be killers are sprawled in front of the skyscraper's double doors, unaware of anything -- almost as if they had decided to take an early-morning nap. [if the iPhone is not enclosed by the player and Musical Found Phone has happened]One of them holds the iPhone -- still playing music -- in a loose grip[period][end if][paragraph break]In the street is the dent you made on impact[if the cowl is in South Side and the cowl is not worn by the player]. Nearby is your hazmat helmet[end if]"


A person can be deaf.

When Resurrection begins:
	remove the crow from play;
	now the description of South Side is "";
	now the player is in South Side; 
	say "You gasp as you emerge from sunless lands. The crow stops pecking at your eyeball.[paragraph break]You are tingling all over, as if tiny fires were running up and down your body. Your limbs, bent at spidery angles, twist and snap into their proper places. Your skin closes in on itself, and your blood stops gushing.[paragraph break]The crow flies away, cawing in confused terror.[paragraph break]The pain ebbs away, but ...[paragraph break]You clap your hands near the side of your face. Nothing. Your eardrums must have exploded on impact.[paragraph break]After some failed attempts, you gain enough balance to stumble to your feet and out of the body-sized dent you left in the pavement.[no line break]";
	now the description of South Side is "[south-side-desc-resurrection].";
	now the player is deaf;
	now the description of the uniform is "Your hazmat suit is in bloody tatters after the fall.";
	now resurrection-ready-for-musical-found-phone? is true;


Every turn when Resurrection is happening:
	if Musical Found Phone has ended:  [Let's remind the player of the goal]
		if a random chance of 1 in 3 succeeds:
			say "[one of]Your enemy is still lurking in the clouds[or]Your inner disquiet is loud. Denise is still up there, and she's going to kill a lot of people if you don't do something[or]The self-styled goddess at the top of the skyscraper is still moving forward with her plans -- you have to get up there somehow[at random]."

Resurrection ends when the player is in Climbing-Up.

Part Deafness

Deafness is a scene. Deafness begins when Resurrection begins.

has-tried-something-deafness? is a truth state that varies.

Deafness ends when has-tried-something-deafness? is true.

Before the player doing something when Deafness is happening:
	say "Your hearing is suddenly healed, and you forget what you were trying to do.[paragraph break]You know that tune ...";
	now has-tried-something-deafness? is true instead;

	
Part Musical Found Phone

Musical Found Phone is a musical scene. 

resurrection-ready-for-musical-found-phone? is a truth state that varies. 

Musical Found Phone begins when Deafness ends.

Musical Found Phone ends safely when the player is wearing the cowl.

Musical Found Phone ends deadly when countdown-clock is 4.

When Musical Found Phone ends safely:
	say "The music is muffled.[paragraph break]You feel the excess strength return -- most of it, anyway. That little concert the phone was giving you stripped you of some of your stolen power. You are not quite as strong as you were moments before, but it will have to do.[paragraph break]Your gazes shifts upward, where the last of the fog wraps the top of the skyscraper in a golden shroud. Denise and her battery must not get away, though you'll need some sort of weapon before you face her again.[paragraph break]Something buzzes in the distance and is gone.";

When Musical Found Phone ends deadly:
	die;

When Musical Found Phone begins:
	now music-harm? is true;

Instead of going when Musical Found Phone is happening:
	say "You have limited movement when music is tearing apart your brain."	

Every turn during Musical Found Phone:
	if countdown-clock is 1:
		now the player is not deaf;
		now music-harm? is true; [it's false whenever a musical scene ends]
		say "One of the emergency workers holds Dr. Steve's phone in a limp hand. It's still playing the same viola song.[paragraph break]You're on the ground again, shaking in rhythmic agony."; 
	otherwise if countdown-clock is 2:
		say "[if the current action is not looking]You have the urge to look around. [end if]Maybe something here can help you.";
	otherwise if countdown-clock is 3:
		say "Your brain will explode soon -- and even the extra strength you carry won't save you from music.";
	otherwise if countdown-clock is 4:
		say "The world disappears in a burst of red-tinged ink.[paragraph break]You are out of miracles.";
		
The can't take people's possessions rule does nothing when Musical Found Phone has happened and the noun is the iPhone and the location is South Side.

Check taking the iPhone when Musical Found Phone is happening:
	if the player is not wearing the cowl:
		say "[one of]You lunge forward and claw for the phone, but t[or]T[stopping]he world is spinning too much for you to take it." instead;

Report taking the iPhone:
	say "You slip the phone into your pocket. You can feel the music's vibrations through what remains of your hazmat suit." instead;


Part Ante-Lugging Phone

[For when we are masked but haven't taken the phone yet]

Ante-Lugging Phone is a semi-musical scene. Ante-Lugging Phone begins when Musical Found Phone ends safely.

Ante-Lugging Phone ends when Lugging Phone begins.

Part Lugging Phone

Lugging Phone is a semi-musical scene. Lugging Phone begins when the player has the iPhone. Lugging Phone ends when the player does not have the iPhone. [This scene doesn't do much -- it allows the music object to be present as we carry the phone -- and we're only allowed to carry it after we come back from the dead.]

Lugging Phone ends when Final Battle Prisoner begins.


Part Musical Walkman

[For when the Walkman is playing.]

Musical Walkman is a musical scene. Musical Walkman begins when currently-playing? is true.

Musical Walkman ends deadly when countdown-clock is 4.

Musical Walkman ends safely when the earphones are snapped.

Understand the command "cut" as something new.

Understand "cut [something]" or "slice [something]" or "slice through [something]" or "slice thru [something]" or "cut through [something]" or "cut thru [something]" as attacking when the noun is the earphones.

Understand "cut [something] with [something possessed]" or "slice [something] with [something possessed]" or "cut through [something] with [something possessed]" or "slice through [something] with [something possessed]" or "cut thru [something] with [something possessed]" or "slice thru [something] with [something possessed]" as shattering it with when the player has the shard.


When Musical Walkman ends deadly:
	die;

When Musical Walkman begins:
	now false-climax-unaction-emergency-shut-off? is true;
	follow the scene changing rules;
	now the player has the shard;


has-shard is a subject.

Every turn during Musical Walkman:
	if countdown-clock is 0:
		say "The familiar harp and tuba tune floods your head with needles.[paragraph break][if hal-yes? is true]'You told me you were here to kill the beat witch -- but you're just as helpless as everyone else!' Hals voice is unsteady over the music burrowing into your skull, and he nibbles on his ID tag.[otherwise]'You were right -- you aren't here to kill the other beat witch [italic type]because you can't[roman type],' Hal says over the music burrowing into your skull.[end if][line break]You notice one of the shards from the broken window has ended up in your lap.";
		now has-shard is familiar;
	if countdown-clock is 1:
		say "The lively melody creeps under your skin and gnaws at your insides.[paragraph break]Long ago, you hoped to be half as good on the tuba as Benny was on the harp.";
	otherwise if countdown-clock is 2:
		say "The rhythm suffocates you. You want nothing more than to stop the music, even if it means destroying your property.";
	otherwise if countdown-clock is 3:
		say "The world dims in and out. The only thing that stays in focus is the earphone cord in front of your face.";
	otherwise if countdown-clock is 4:
		say "Fluid drips from your ear.[paragraph break]Maybe somewhere beyond life and breath is a universe where there are no beat witches, and you can bask in numbness forever.";


Musical Walkman ends well when currently-playing? is false. 

When Musical Walkman ends safely:
	now chair-binding? is false;

Every turn when Musical Walkman is happening:
	if the player wears the earphones:
		now music-harm? is true;
	otherwise:
		now music-harm? is false;


Part Deadly iPhone

iphone-has-played? is a truth state that varies.

Deadly iPhone is a recurring musical scene. Deadly iPhone begins when iphone-deadly? is true. Deadly iPhone begins when iPhone Deadly begins.

When Deadly iPhone begins:
	say "You don't have much time[earphones-no-work]";
	if iphone-has-played? is false:
		now iphone-has-played? is true; [We don't want to start the countdown clock every time the player takes off the helmet.]

Instead of taking off the helmet when iPhone Deadly is happening and the player is wearing the noun:
	say "You refuse to experience the anguish again.";

To say earphones-no-work:
	if the player wears the earphones:
		say ". And the old earphones do nothing to block the music.";
	otherwise:
		say ".";

Before wearing the cowl when a musical scene is happening:
	now iphone-deadly? is false;
	
When Deadly iPhone ends:
	now iphone-deadly? is false;

Deadly iPhone ends well when the player wears the cowl.

Deadly iPhone ends deadly when countdown-clock is 4.

When Deadly iPhone ends deadly:
	die;


Part iPhone Deaf

iPhone Deaf is a recurring semi-musical scene. iPhone Deaf begins when Deadly iPhone ends well.

When iPhone Deaf begins:
	say "The music is muffled now, and you feel better instantly. Your skin tingles with anticipation[period][one of] There's no way you can make it out of here without ... doing what you do.[paragraph break]Dr. Steve's blocking the door. He won't once you DRAIN him.[paragraph break]Everyone freezes, waiting for the mistress of death to take action.[or][stopping]";


iPhone Deaf ends when the player is not in Staging Area.

Book Margo Wrath

Margo Wrath is a scene. Margo Wrath begins when False Climax has ended and Margo is zombie and Margo is in Breakroom.

Margo Wrath ends when Prisoner begins.


Book End Scenes

Part Final Battle

Final Battle is a scene.

Final Battle begins when the location is Fleshy Bridge.

When Final Battle begins:
	now the corpses are in Fleshy Bridge; [They ARE the bridge, after all!]

Final Battle ends when Final Battle Drones ends.

Part Final Battle Prisoner

Final Battle Prisoner is a scene.

is-prisoner-of-bridge? is a truth state that varies. [When Polly tries to go south (across the bridge), the bridge stops her.]

Final Battle Prisoner begins when is-prisoner-of-bridge? is true and the location is Fleshy Bridge.

When Final Battle Prisoner begins:
	remove iPhone from play;
	remove cowl from play; [Although it would be aunthentic to include the broken iPhone and cowl in South Side, it would be more trouble than it's worth -- I doubt anyone would even care]
	now the player is strong; [No longer demi-godly]
	follow the scene changing rules; [Lugging Phone ends]
	now Denise is in Fleshy Bridge;
	now Speaker is in Fleshy Bridge;
	now the battery is in Fleshy Bridge;
	 redraw the status line;
	if Vorple is supported:
		follow the refresh Vorple status line rule;
	say "You rush south across the bridge, away from the [company] skyscraper.[paragraph break]The bridge ripples in response to the music you carry with you.[paragraph break]Hands grab your feet. You stumble and go down face-first. The phone flies out of your pocket. It vanishes into the depths of the mist.[paragraph break]You land on the deceased in a squelching belly-flop. Fists, knees, and faces pound your helmet, and it goes spinning off your head and follows the phone into the emptiness.[paragraph break]The many-limbed bridge won't let you go. It pulls you down by the wrists and ankles, like a gooey, creeping quicksand. You struggle, but your extra strength does nothing against the mass of innumerable dead. In seconds, your head is the only part of you above the slimy human mass.[paragraph break]The bodies around you twist, and the air bursts from your lungs in a violent wheeze.[paragraph break]The grip tightens. A couple of your ribs pop. They immediately knit together, and some of your excess strength ebbs away.[paragraph break]Another squeeze. More bones and tissue crack and pop under the suffocating pressure. Sparks ignite and wither in your vision. You heal more slowly this time.[paragraph break]Dozens of footsteps approach from the south.[paragraph break]'Did you really think you could kill a goddess with a weak-sauce phone speaker in just a few minutes?'[paragraph break]Some of Denise's rotting slaves set the battery down. It's close enough for you to reach it -- if you could get an arm free.[paragraph break]'I want the doohickey to be the last thing you see,' [Speaker] says. 'Just think how much you goofed while I squeeze you like a juicy fart.'[paragraph break]Denise steps from behind her chief puppet and crouches to your level. A white aura around her pulses with contentment.[paragraph break]She clenches her fist, and you can't breathe again.[paragraph break]'Tell the Grim Reaper he owes me a fruit basket, Po --'[paragraph break]Denise's eyes widen, and [Speaker] falls silent.[paragraph break]The buzzing you heard on the street is coming in a dozen directions. White shapes circle overheard and descend.[paragraph break]The drones are here.[line break][keypress]";[*normally, we have period, line break and then keypress. Do we need to fix this?]
	now the drones are in Fleshy Bridge;
	scroll to last command; 
	
Final Battle Prisoner ends when Final Battle Drones begins.


Part Final Battle Drones


Final Battle Drones is a musical scene. Final Battle Drones begins when the drones are in Fleshy Bridge. 

Final Battle Drones ends safely when the battery is switched on.

Final Battle Drones ends deadly when countdown-clock is 4.

To say bridge-danger:
	say "The corpses, being extensions of Denise, are shaking uncontrollably. The bridge they form could collapse at any moment"

When Final Battle Drones begins:
	say "[final-tune].";
	now music-harm? is true;
	now the description of Denise is "With hundreds of undead ears to magnify the drones['] music, Denise's mouth moves in silent agony.";
	now the description of Fleshy Bridge is "[bridge-danger].";

	
Every turn during Final Battle Drones:
	if countdown-clock is 1: 
		say "A different agony contorts you now, and you're not the only one. The entire bridge is writhing too.[paragraph break]The corpses['] twisting sends you rolling upward and onto the surface of the bridge. [Speaker] is shaking uncontrollably like the other dead. [paragraph break]Denise is nearly tearing her eyes out. Her aura is gone.";
	if countdown-clock is 2:
		say "The drones circle above you like white vultures. Their cameras must be broadcasting your death to the cheering masses.[paragraph break]The corpses are pulling apart. The bridge swings in a wide arc. It's not going to last long.[paragraph break]Your hand brushes against the battery.";
	if countdown-clock is 3:
		say "You wish for a way to shut the drones down all at once.";
	if countdown-clock is 4:
		say "The bridge gives out. The dead simultaneously voice Denise's scream just as you surrender to blackness.[paragraph break]By the time you smash into asphalt, you're already dead. You stay that way.";

When Final Battle Drones ends deadly:
	die;
	
When Final Battle Drones ends safely:
	say "Denise, incredibly, manages to stand on wobbly feet.[paragraph break]It takes all her effort, and she is still howling as silently as you. The girl gives you a weak kick in your sore ribs, sending you rolling to the side. She stumbles forward and reaches for the dial.[paragraph break]That's when her puppets['] grasp on one another breaks apart, and there is no more bridge.[paragraph break]The bodies under the battery give out first. Denise lunges. The photo album flaps out of her hands.[paragraph break]She wraps trembling arms around the device. She and the battery plunge into the fog.[paragraph break]A couple of seconds later, you fall, your limbs still shaking.";
	now the description of Falling is "";
	now the player is in Falling;
	say "The rush of air does not dilute the poison sounding from the drones, which follow you down. You catch a glimpse of Denise. She's closer to the ground than you, and she's banging her fists against the battery, which is still booting up, apparently.[paragraph break]You lose track of her in the hail of decay. [line break][keypress]";
	now Denise is dead; [This will trigger us being able to look at her photo album]
	remove Denise from play;	
	[the battery has exploded, so we don't need its accessories anymore.]
	remove dial from play;	
	remove indicator light from play;
	remove displays from play;
	now the battery is shrapnel;
	now the battery is in South Side;
	now the drones are broken;
	now the drones are in South Side;
	now the corpses are in South Side;
		
	

Part Resolution

Resolution is a scene. Resolution begins when Resolution Flying begins.

[in story, the tape and ribbon are the same, but in Inform, they are two different things -- the ribbon is all that remains of the tape after it falls. We get rid of the original tape when Resolution begins because I was running into difficulty doing it when we were in the breakroom!]

When Resolution begins:
	remove the tape from play;
	now the ribbon is in North Side;

Chapter Resolution Flying

Resolution Flying is a scene. Resolution Flying begins when Final Battle Drones ends safely.

Resolution Flying ends when the player is in Sales.

When Resolution Flying begins:
	say "The music stops.[paragraph break]The explosion below rattles your teeth before you hear its roar.";	
	now the player is in Flying;
	say "The force sends you spinning helplessly upward. Human chunks and scraps of metal shoot up at you.[paragraph break]You see one of the skyscraper windows just in time to raise your arms protectively in front of your face. You crash through the glass.";
	now the player is weak;
	now the window is in Sales; [Window from Breakroom is already broken and ready for us to use! Let's just change the description. :)]
	now the description of the window is "What remains of the window is dangling bits of cobwebbed glass.";
	now the player is in Sales;

Chapter Resolution Sales

Resolution Sales is a scene.
	
Resolution Sales begins when Resolution Flying ends. Resolution Sales ends when Resolution Stairway Journey begins.

When Resolution Sales begins:
	say "You don't know how long you lie there, catching your breath and enjoying the quiet, but you finally dare to stand.[paragraph break]You brace yourself against a desk. Your divinity is gone now -- some smashed and squeezed, some stripped by music, and the rest spent surviving the edge of the explosion and the trip through the window.[paragraph break]But you are alive. And you don't feel Denise's presence fraying the edges of your mind anymore.";

Chapter Resolution Stairway Journey

Resolution Stairway Journey is a scene. Resolution Stairway Journey begins when the player is in Lower Landing.

When Resolution Stairway Journey begins:
	let R be the list of rooms in Lower Stairway;
	repeat with place running through R:
		now the description of place is " [run paragraph on][no line break]";
		if the printed name of place is "15th Floor":
			now the description of place is "You would like to rest, but you can't leave this place fast enough.";
		otherwise if the printed name of place is "13th Floor":
			now the description of place is "No music, no shuffling of corpses, no hum of lights.[keypress]";
		otherwise if the printed name of place is "9th Floor":
			now the description of place is "It's just you grabbing the railing, spiraling through the dark ...";
		otherwise if the printed name of place is "5th Floor":
			now the description of place is "The darkness is soothing. The world is still.[keypress]";
		now the player is in place;
	now the description of Base is " [run paragraph on][no line break]";
	now the description of Lobby is "You finally see light through the familiar double doors.";
	remove responders from play;
	now the description of South Side is "[one of]You burst out of the building, closing it forever behind you.[paragraph break]The street is coated with carnage left by the fallen bridge, with the remains of the battery in the middle, and what's left of the drones scattered throughout.[paragraph break]Some bodies exploded. Others splattered.[paragraph break]As you avert your eyes from the gruesome scene, you notice movement in the edge of your vision. The first responders, once so eager to eliminate the beat witch infection, are limping away. You suppose they woke up in time to see the corpses slamming into the street from above and barely escaped with their lives.[paragraph break]And you, the handmaid of death, have just appeared. You, the recurring nightmare.[paragraph break]One shouts for the others to move faster. Despite the fact that they are fighting the lack of energy from being drained, they manage to scramble into a half-run and vanish around a corner.[paragraph break]You have no interest in hunting them down or venturing deeper into the graveyard of a city[or]This street outside the doors of [company] is covered in blood, flesh, and what's left of the drones and battery[if has-seen-album? is true]. [album-curl][end if][stopping].[paragraph break]A gravel path winds to the northeast."; 
	now the player is in Base;
	now the player is in Lobby;
	now the player is in South Side;
	now the curl is in South Side;

To say album-curl:
	say "[paragraph break]Denise's photo album is resting on its side in the gutter[if the curl is in South Side] next to a single golden curl[end if]";
	
has-seen-album? is a truth state that varies.

Before going northeast when the location is South Side and Resolution is happening:
	if has-seen-album? is false:
		now the album is in South Side;
		say "You take a step and stop. Among the gore is the gray photo album Denise carried.";
		now has-seen-album? is true instead;
			
Resolution Stairway Journey ends when the player is in South Side.

Chapter Resolution Wander

Resolution Wander is a scene. Resolution Wander begins when the player is in South Side and Resolution is happening.

Resolution Wander ends when Resolution Steve begins.

When Resolution Wander begins:
	remove batteries from play; [We forgot to do this earlier.]

Chapter Resolution Steve

Resolution Steve is a scene. Resolution Steve begins when the grate is open.

When Resolution Steve begins:
	now countdown-clock is 0;
	
Every turn when Resolution Steve is happening:
	increase countdown-clock by 1;
	
Resolution Steve ends fatally when countdown-clock is 3.

Resolution Steve ends well when the location is Sewer and Steve is not dead.

Resolution Steve ends poorly when Steve is dead.

When Resolution Steve begins:
	now Steve is half-drained;
	now Steve is in the location;
	now Steve has the scalpel;
	say "Uneven footfalls crunch the gravel behind you and splash through the sludge.[paragraph break]You turn in time to see Dr. Steve bringing down a scalpel. You twist to the side, and the blade slashes your chest -- barely deep enough to draw blood.[paragraph break]'[steve-family]!'[paragraph break]Dr. Steve is drooling. The hand holding the scalpel quivers. 'My wife. My daughters. I was out of town -- I should have died with them. But now -- just try to drain me again, witch! Do you think I care anymore?'[paragraph break]The scalpel swings wild, and you manage to dodge it completely, but at the cost of losing your balance. You get a gag-inducing mouthful of the muddy water.[paragraph break]You try to get up, but Dr. Steve kicks you in the face. He sways as he steadies himself. He hasn't completely recovered from your first encounter.[paragraph break]You could drain him again, though he wouldn't survive that. Or you could just leave this madman to his grief and get out of here.[paragraph break]One thing is certain -- your position at the edge of the grate means you are stuck between him and the wall, and you won't be able to ward off his next attack.";
	
Instead of jumping when the location is North Side and the grate is open:
	try going down;
	
Understand "fall" or "fall down" as jumping when the location is North Side and the grate is open.
	
Understand "drool/saliva" as Steve when Resolution Steve is happening.

Instead of going southeast when Resolution Steve is happening:
		say "[one of]'No way you're getting past me,' Dr. Steve says with a wave of his scalpel[or]Dr. Steve is in your way[stopping].";
		
Every turn during Resolution Steve (this is the resolution-steve rule):
	if countdown-clock is 1:
		say "Dr. Steve studies you, a scientist sizing up a disease. He seems to be deciding the best place to make his fatal incision.";
	otherwise if countdown-clock is 2:
		say "'I wish I could kill you more than once,' Dr. Steve says. He is ready to strike.";
	otherwise if countdown-clock is 3:
		say "'[steve-family]!' Dr. Steve catches you by the hair and yanks you closer. With surgical precision, he lodges the scalpel into your neck.[paragraph break]You claw for air, but it's no use. As you suffocate in your own blood, Dr. Steve kicks you in the kneecap. You topple backward into your grave.";	
	
		
When Resolution Steve ends fatally:
	now the player is in Sewer;
	say ".. and ...";
	die;
	

When Resolution Steve ends poorly: [Steve is dead! Bad polly!]
	say "How can you be smiling and crying at the same time? Why does breathing feel like ice? What did you just do?";
	
When Resolution Steve ends well: [We are in the sewers, and Steve is alive.]
	say "'Beat witch!' Dr. Steve howls from above.[paragraph break]You're already on your feet. He jumps into the sewer after you.[paragraph break]You follow random passages in the dark.[paragraph break]'Witch!' Dr. Steve calls behind you, but his voice is faint. In his partially recovered state, he can't keep up.[paragraph break]But you only stop hours later, when you tumble into a ...";
	now the player is in River;
	say "A large sewer pipe empties into a cold river, the water glowing like crystals in the afternoon sun as it curves through stunted willows.[paragraph break]Your eyes adjust, and you look over your shoulder to see the city in the distance behind you, a gray mass of fog-wreathed buildings. Drones buzz unseen.[paragraph break]You can go now. You let a gentle current carry you away.";
	now the player is in Traveling;
	say "Moving unseen is what you do best. You travel by night and keep out of sight during the day. You risk stealing new clothes at an out-of-the-way truck stop. You forage in forest and garbage. You have always done this.[paragraph break]But you have never dared to go where you have once been -- not since you were a child.";
	now the player is alive;
	now the player is in Beach;
	now the sun is in beach-region;
	
Instead of attacking Steve when Resolution Steve is happening: [not a good idea!]
	say "With the last of your strength, you hurl yourself at Dr. Steve.";
	now countdown-clock is 3; 
	follow the resolution-steve rule;
	
Section Scalpel

The description of the scalpel is "A sharp surgical instrument that may mean your death."

Understand "knife/blade" or "surgical/instrument/tool" as the scalpel.
	
	
Chapter Resolution Beach 

Resolution Beach is a scene. Resolution Beach begins when the location is beach.

When Resolution Beach begins: [we are no longer in the city of death]
	remove the uniform from play;
	now the player is wearing street clothes;
	remove slime from play;

Chapter Resolution Poor Ending

Resolution Poor Ending is a scene. Resolution Poor Ending begins when Steve is dead and the location is Sewer.

When Resolution Poor Ending begins:
	say "No one follows.[paragraph break]You've escaped through sewers enough to know it will take you a few hours to get out of the twisting tunnels, but they will take you out of the city, past the quarantine lines, and hopefully to safety. After that ...[paragraph break]You [italic type]did[roman type] do something magnificent. You stopped Denise. You saved so many lives -- so why do you feel that you have done nothing? The thought of being reunited with Benny now -- the tape chafes against your wrist. No, you must never let your brother see you again.[paragraph break]You think of Dr. Steve above, needlessly dead. You could have left him in his rage, but you couldn't resist. You are a beat witch, after all -- a monster. And nothing will change that.";
	end the story saying "You despair";

		

Volume Taking and Giving Life

zombie-truth is a subject.

thinking-powers-broken is a subject.

To say period-then-period:
	say "[one of][period][or].[stopping]";

To say powers-broken:
	if the noun is the corpses or zombie-truth is familiar:
		do nothing;
	otherwise:
		say "[one of][line break]What's happened to you? You've never failed to do this before.[or][paragraph break]Why can't you do this?[or][stopping]";
		now thinking-powers-broken is familiar;

To say powers-broken-hope:
	if thinking-powers-broken is familiar:
		say "You're not sure if this is going to work, but what choice do you have? "; 

Rule for reaching inside a room:
	if Descent is happening and the current action is taking life from: 
		rule succeeds;
	otherwise if the noun is a person:
		say "You're[if the player is wounded] too weak and[end if] too far to affect [Noun].";
		unless Descent is happening and the current action is taking life from:
			deny access;
	otherwise if the noun is the music:
		rule succeeds;
	otherwise:
		say "You're too far away.";
		deny access;
	

To say start-witchy-fail:
	say "You sense the rhythm of Hal's life force and --[line break]";

Book Taking Life

Definition: A thing is personable if it is a person and it is not dead and it is not zombie.

Taking life from is an action applying to one thing.

Understand "take life from [something]" or "take from [something]" or "drain life from [something]" or "drain [something]" as taking life from.

Understand "take life from [things]" or "take from [things]" or "drain life from [things]" or "drain [things]" as taking life from.



Definition: A thing is living if it is a person or it is an animal.

A multiple action processing rule when the current action is taking life from (this is the drain-responders rule):
	let L be the multiple object list;
	let people-list be the list of visible other living things; [So we can drain the crow]
	if Descent has not happened:
		truncate the people-list to the first 0 entries;
		say "Draining more than one person at a time? You've never done that before.[paragraph break]You may need that idea later."; 
	alter the multiple object list to people-list;

The number of takes this turn is a number that varies. Every turn: now the number of takes this turn is 0.
	
The better-looking announce items from multiple object lists rule is listed instead of the announce items from multiple object lists rule in the action-processing rules.

This is the better-looking announce items from multiple object lists rule:
	if the current item from the multiple object list is not nothing:
		if Descent is happening and the current item from the multiple object list is the responders:
			continue the action;
		otherwise:
			increment the number of takes this turn;
			say "[if the number of takes this turn is not 1][line break][end if][the current item from the multiple object list]: [run paragraph on]";



To say cant-take-life-dead:
	say "Taking life from the lifeless is beyond your ability";

Definition: A thing is unliving if it is not personable or it is zombie or it is dead.


Definition: A person is expired if it is drained or it is dead.

To say pain-leg-gone:
	say "You awaken to find the pain in your leg is gone[period]"; [We use this phrase after Polly tries to give to or drain Denise.]
			

Instead of taking life from something (called the character):
	if the character is not a person and the character is not an animal:
		say "You can't drain life from things that aren't alive.";	
	otherwise if the character is the responders:
		if Steve is expired and the location is Staging Area:
			say "You are not a monster, no matter what the wanted posters say.[paragraph break]You avoid taking more life than you should. You already took [if Steve is dead]more than you needed [end if]from Dr. Steve, and that should be enough to get out of here." instead;
		otherwise if the location is Staging Area:
			say "Since the good doctor is in your way, he's the only responder you need to drain.";
			now the character is Steve;
		otherwise if Descent is happening:
			say "You absorb the rhythms coming from the mob -- all twenty-eight, all at once.[paragraph break]Your body glows. Those below collapse as one. And you keep falling.[paragraph break]You've never experienced a surge like this before.[paragraph break]Strength, energy -- you nearly faint from the electric thrill of it.[paragraph break]Maybe this was what Benny meant by 'magnificent.' Why did you ever shy away from this power? Why shouldn't you --[paragraph break][polly-splat]";
			fake die;						
			now the player is godly;
			now the noun is drained;
			follow the scene changing rules; [Resurrection is triggered, changing the South Side description, and adding crater to South Side.]
		otherwise if the noun is drained:
			say "You do not want to drain them any more than you already have. This was the first time you've taken life energy from more than one person at a time, and you were barely precise enough to leave them alive as it is.";
	[if the character is not personable or the character is zombie or the character is dead:]
	otherwise if the player is drained:
		 say "You are too weak. Your focus is gone."; 
	otherwise if the character is Hal and Hal is drained and Transition is happening:
		say "You have never drained to kill on purpose before, and you're not about to start on [character][one of]. Besides, he probably knows a way out of this building that doesn't involve the front door[period][or][period][stopping][line break]";
	otherwise if the character is zombie:
		if zombie-truth is unfamiliar:
			say "[if the player is wounded][one of]You are desperate. [or][stopping][end if][one of]You try to drain life from [the character], but it's like sipping from an empty cup. You sense no life rhythm inside [if the character is plural-named]them[otherwise if the character is male]him[otherwise]her[end if], only silence.[or]For some reason, you can't take life from [the character][period-then-period][stopping][powers-broken]"; [couldn't figure out where an extra period was coming from, so i improvised.]
		otherwise:
			say "[cant-take-life-dead].";
	otherwise if the character is the player:
		say "You cannot take life from or give life to yourself.";
	otherwise if the character is Denise:
		if Witch Intro is happening:
			say "[powers-broken-hope]If you're going to battle the beat witch, you're going to need the strength more than this girl does.[paragraph break][if Steve is dead]She[']s a casualty of war, like Dr. Steve.[paragraph break][end if]You ignore your tears, close your eyes, and find the life-rhythm of her flesh.[paragraph break][italic type]It can't be helped.[roman type][paragraph break]You try to draw it into yourself. [paragraph break]But the rhythm inside the girl is like a thousand timpani in rapid staccato. And it's beyond your reach.[paragraph break]You collapse in your own blood ...";
			press any key;
			now denise-drain-attempt? is true;
			now Denise is not comatose;
			follow the scene changing rules; [This triggers Part Explore and ends Witch Intro.]
			now Polly is gray;
		otherwise:
			say "You sense [Denise] has some sort of wall around her life's rhythm -- just as you have one around yours. You can't drain her, and she can't drain you[one of]. She smirks[or][stopping].";
	otherwise if character is the crow:
		say "[one of]The rhythm of animals is always off to you -- like hearing a conversation in a strange language but still recognizing the emotion behind the unintelligible words.[paragraph break]In your desperation, you try to drain the crow anyway, and for a moment, you feel the life moving into you, but it stops. Instead of energy, you get a tsunami of feelings -- the desire to soar, to breed, to nest, and above all, to eat. You've never felt such hunger-fueled madness.[paragraph break]The crow doesn't notice your attempt to drain its life, but it does notice [italic type]you[roman type] -- so much juicy, fresh meat in a city of rot. [paragraph break]You jolt, and your attempt to drain the bird comes to an end[or]You can only drain people[stopping].";
	otherwise:
		if iPhone Deadly has not happened:
			say "You hope you can get out of here without using your awful ability, but that's looking unlikely." instead;
		otherwise:
			if Explore is happening:
				say "[start-witchy-fail]";
				follow the scene changing rules instead;
			otherwise:
				if the character is dead:
					follow the dead-drain rule instead;
			if the character is alive:
				say "[one of]With a thought, you drain life from [character][or]Taking life from [character] is as natural as breathing[or]You take life from [character][then purely at random][period][one of][paragraph break]You love the sensation of new life -- your body inhaling steady rhythm from other flesh, converting it to power. Your senses sharpen, your muscles tighten, and a nearly blinding surge of energy bursts into your veins. You love it so much, you find it disgusting, like gorging on chocolate[period][or][stopping][paragraph break]";
				if character is Steve:
					say "[character] [one of]crashes to the floor[or]collapses[or]faints instantly[then purely at random].[if character is Steve][line break][one of]You were careful not to take too much, though. He'll be better in a day, as long as you don't drain him again when he's like this[or]'Not again,' he mutters before drifting into a heavy stupor[stopping].[end if]";
				now the character is drained;
			otherwise if the character is drained:
				say "[one of]You don't dare end [character]'s life. With one glaring exception, you are not a killer[or]You are a monster -- not a killer. Not after the first time, at least[or]Instinct tells you to finish the job and completely drain [character], but you control your lust for life. You've had years of practice[at random].";
			otherwise if the character is Steve and Steve is half-drained:
				say "You take Dr. Steve's life rhythm and make it your own. It fades while yours grows stronger.[paragraph break]Steve collapses into the mud with '[steve-family]' on his lips. He doesn't move again.";
				now Steve is dead;
				now the player is alive;
		if the player is alive and the character is a person:
			now the player is strong;

This is the dead-drain rule:
	if the noun is dead or the noun is nonliving: [nonliving = regular non-person thing, like a table]
		if the noun is part of the player:
			try taking life from the player;
		otherwise:
			say "[cant-take-life-dead].";

Understand "throw up" or "puke" or "vomit" or "throwup" as a mistake ("A cold guilt spreads from your stomach to joints. Just thinking about Dr. Steve makes it hard to breathe.") when Steve is dead.

Taking life from someone is witchy behavior.
  

Book Giving Life

Giving life to is an action applying to one thing.

Understand "give life to [something]" or "give to [something]" or "heal [something]" as giving life to.

Giving life to someone is witchy behavior.

To say cant-give-life-dead:
	say "Giving life to the lifeless is beyond your ability";
	
Instead of giving life to something (called the character):
	if Explore is happening:
		say "[start-witchy-fail]";
		follow the scene changing rules instead;
	otherwise if Transition is happening and the character is Hal: [Hal's more general options below]
		say "[one of]Life flows from you into Hal. It is, you reason, only right to restore what you took.[paragraph break]He waves you to stop. 'No,' he says. 'Keep it. You need the strength more than I do. I'll recover. Always do. But the world isn't hunting [italic type]me[roman type].'[paragraph break]Despite his weakness, he clenches his jaw in no-nonsense resolve. 'First item on the agenda -- getting you out of this building. Let me show you the tunnel that leads to the parking garage.'[or]Hal doesn't want his life force back-- he's letting you have it in your time of need. You can't complain.[stopping]";
	otherwise if the character is zombie:
		if zombie-truth is unfamiliar:
			say "[if the player is wounded]You feel strangely compelled to give what little life you have to [the character].[paragraph break][end if][one of]It doesn't work. You feel your life's rhythm fading out you, only to come roaring back into your body[or]You try to give life to [the character], but it comes back to you[stopping].[powers-broken]";
		otherwise:
			say "[cant-give-life-dead].";
	otherwise if the character is dead or the character is nonliving:
		if the character is part of the player:
			try giving life to the player;
		otherwise:
			say "[cant-give-life-dead].";
	otherwise if the character is the player:
		say "You can't give life from yourself, to yourself[if the player is wounded], as much as your leg pains you[end if].";
	otherwise:
		if the character is Steve and Steve is alive:
			say "Giving life to a healthy Dr. Steve wouldn't endear him to you.";
		otherwise if the player is drained:
			say "You can't give any more life than you already have.";
		otherwise if the character is Hal and Hal is alive:
			say "You let as much life as you can spare flow out of you and into Hal. He raises a hand to his face. He's glowing a little.";
			now Hal is strong;
			now the player is drained;
		otherwise if the character is Denise:
			if Witch Intro is happening:
				say "[powers-broken-hope]This is it. You will die. But how can you leave her like this?[paragraph break]You will your life into her body. Her chest rises sharply. The world fades into soundlessness ...";
				press any key;
				now Denise is not comatose; 
				now denise-heal-attempt? is true;
				now Polly is good; [She already is, unless she's killed Dr. Steve.]
				follow the scene changing rules; [This triggers Denise First and ends Witch Intro.]
			otherwise:
				say "Giving life to Denise is the opposite of what you're trying to do.";
		otherwise if character is the crow:
			say "[one of]Your panic leads to insanity. Giving life to an animal is like fitting a key into the wrong lock[or]You can't give life to animals[stopping].";
		otherwise:
			say "Now's not the time for healing."; [We should never get here.]

			

heal-steve-num is a number that varies. heal-steve-num is 0.

To say heal-steve:
	if heal-steve-num is 0:
		say "And you hesitate. You let the newfound strength flow out of your body back into Dr. Steve.[paragraph break]He blinks in surprise and staggers to his feet.";
		increase heal-steve-num by 1;
		now Steve is alive;
		now the player is alive;
	otherwise:
		say "You heal Dr. Steve again. This time, he's not so confused.[paragraph break]'What are you waiting for? [italic type]Shoot her[roman type]!'[paragraph break]A shot goes off. You stumble backward. Blood bursts from your chest in a spurting rain.[paragraph break]As your vision clouds, you try to find even a little sympathy on someone's face. You find none.[paragraph break]A beat witch is death. A beat witch is suffering.";
		die;	
	

Book Can't Be Witchy With Music

[No giving life or taking it when music is loud enough!]

Before witchy behavior when a musical scene is happening (this is the musical rule):
	unless iphone-humming? is true:
		say "You can't focus[if music-harm? is true], not without blocking out or stopping the sound[end if]. Music is agony." instead;


Volume Multimedia

Book Music 	

Part Music Toggle


[We don't actually turn off the music but mute it. That way, if the user decides to unmute during a music scene, we don't have to worry about calling the current playing file.]

music-on? is a truth state that varies. music-on? is true.

Toggling music is an action out of world. Understand "music" or "music off" or "music on" or "sound" or "sounds" or "sounds on" or "sounds off" or "sound on" or "sound off" as toggling music.

Carry out toggling music:
	if music-on? is true:
		now music-on? is false;
		if Vorple is supported:
			connect music;
			execute JavaScript command "if (beatWitch.music) { console.log('music volume is ' + beatWitch.music.volume); return beatWitch.music.volume;} else {return 0;}";
			let temp-volume be the number returned by the JavaScript command;
			unless temp-volume is 0:
				now volume-js-holder is the number returned by the JavaScript command;
		mute sound;
	otherwise if music-on? is false:
		now music-on? is true;
		if Vorple is supported:
			connect music;
			execute JavaScript command "if (beatWitch.music) beatWitch.music.volume = [volume-js-holder];";
		otherwise:
			set the volume of the foreground to volume-holder;
	say "Music is [if music-on? is true]on[otherwise]off[end if].";
	

Part Volume Effects
	
To connect music:
	execute JavaScript command "window.beatWitch = { 
	music: document.querySelector('.vorple-audio'), 
	};";
	
Chapter Vorple Sound Variables

default-js-volume is a real number that varies. 

masked-js-volume is a real number that varies. 

supermasked-js-volume is a real number that varies.

volume-js-holder is a real number that varies.


Chapter No Vorple Sound Variables

default-volume is a number that varies.

masked-volume is a number that varies.

supermasked-volume is a number that varies.

volume-holder is a number that varies. [If music is off, we're storing the right volume it should be in volume-holder in case the user turns the music back on.]


Chapter Music Functions and Setting Variables

This is the setup music rule:
	if Vorple is supported:
		now default-js-volume is 1.0;
		now masked-js-volume is 0.04;
		now supermasked-js-volume is 0.02;
		now volume-js-holder is default-js-volume;
	otherwise:
		now default-volume is 65535;
		now masked-volume is 4000;
		now supermasked-volume is 3000;
		now volume-holder is default-volume;
	stop all; [otherwise, when player restarts during a music scene, the music will still be playing on web]
		
When play begins:
	follow the setup music rule;
	
To mask sound:
	if music-on? is true:
		if Vorple is supported:
			connect music;
			execute JavaScript command "
	if (beatWitch.music) { 
		beatWitch.music.volume = [masked-js-volume];
	}";
			now volume-js-holder is masked-js-volume;
		otherwise:
			set the volume of the foreground to masked-volume;
			now volume-holder is masked-volume;
	otherwise:
		if Vorple is supported:
			now volume-js-holder is masked-js-volume;
		otherwise:
			now volume-holder is masked-volume;
		

	
To supermask sound:
	if music-on? is true:
		if Vorple is supported:
			connect music;
			execute JavaScript command "if (beatWitch.music) beatWitch.music.volume = [supermasked-js-volume];" ;
			now volume-js-holder is supermasked-js-volume;
		otherwise:
			set the volume of the foreground to supermasked-volume;
			now volume-holder is supermasked-volume;
	otherwise:
		if Vorple is supported:
			now volume-js-holder is supermasked-js-volume;
		otherwise:
			now volume-holder is supermasked-volume;
		

To restore sound:
	if music-on? is true:
		if Vorple is supported:
			connect music;
			execute JavaScript command "if (beatWitch.music) beatWitch.music.volume = [default-js-volume];";	
		otherwise:
			set the volume of the foreground to default-volume;
			now volume-holder is default-volume;
	otherwise:
		if Vorple is supported:
			now volume-js-holder is default-js-volume;
		otherwise:
			now volume-holder is default-volume;

	
To mute sound:
	if Vorple is supported:
		connect music;
		execute JavaScript command "if (beatWitch.music) beatWitch.music.volume = 0;";
	otherwise:
		set the volume of the foreground to 0; [This is a cheap way to keep music playing without the player realizing. Once the music volume is restored, it appears we jumped to a random spot.]


		
Part Sound Files

Sound of Steve Music is the file "the heroic dark alt.ogg".

Sound of End Music is the file "the heroic dark alt short.ogg".

Sound of Elevator Music is the file "elevator 1.ogg".

Sound of Drone Music is the file "beat witch dance.ogg".

Sound of Straitjacket Tuba Music is the file "straitjacket tuba tape.ogg". 

Sound of Organ Chord Music is the file "organ chord.ogg". 

Sound of Howling Wind is the file "howling wind.ogg". 

	
Part Triggering Music

When iPhone Deadly begins:
	loop "steve music"; 

When iPhone Deaf begins:
	mask sound;
	
When iPhone Deaf ends:
	mute sound; 
	
Every turn when Running is happening:
	mute sound; [To prevent undo mayhem. Sound should already be muted.]

When Bloodthirsty Mob begins:
	if Vorple is not supported:
		loop "steve music";
	supermask sound; [it's already been playing on mute in the background]


When Bloodthirsty Mob ends:
	stop all;
	
When Margo's Music begins:
	loop "straitjacket tuba";
	supermask sound;

When Margo's Music ends:
	stop all;
	
When Torture begins:
	loop "elevator";
	mask sound;
	
When False Climax begins:
	stop all; 

When Musical Walkman begins:
	loop "straitjacket tuba";
	restore sound;

	
When Musical Walkman ends:
	stop all;
	
When Descent begins:
	loop "howling wind"; [this gets stopped with to say polly-splat]
	restore sound;
	
When Resurrection begins:
	loop "steve music"; [so we are at a random spot]
	mute sound;


When Musical Found Phone begins:
	restore sound; [Steve Music is already playing at mute -- we set this when Final Battle Drones ended.]
	
When Musical Found Phone ends:
	mask sound;
	
When Lugging Phone ends:
	stop all;

When Final Battle Prisoner begins:
	stop all;

When Final Battle Drones begins:
	loop "drone music";
	restore sound;
	
When Final Battle Drones ends safely:
	stop all;

When Prisoner begins (this is the play-organ rule):
	[no loop! this only lasts a couple seconds, and we don't want to loop the awful chords]
	if the player is strong:
		if Vorple is supported:
			if music-on? is true:
				play music file "organ chord.mp3"; 
		otherwise:
			if music-on? is true:
				play Sound of Organ Chord Music; 
		restore sound;
		



Part Music Table

Table of Music
music-scene	song
iPhone Deadly	"steve music"
iPhone Deaf	"steve music"
Bloodthirsty Mob	"steve music"
Torture	"elevator"
Musical Walkman	"straitjacket tuba"
Margo's Music	"straitjacket tuba"
Descent	"howling wind"
Musical Found Phone	"steve music"
Ante-Lugging Phone	"steve music"
Lugging Phone	"steve music"
Final Battle Drones	"drone music"

A scene has some text called music-text.

When play begins:
	let all-scenes be the list of scenes;
	repeat with S running through all-scenes:
		if S is a music-scene listed in the Table of Music:
			let song-text be the song corresponding to a music-scene of S in the Table of Music;
			now the music-text of S is song-text;


music-playing? is a truth state that varies.

Every turn: 
	now music-playing? is false;
	
[In traditional interpreters, undoing stops looping music. This changes that. Vorple has the opposite problem. If we undo back into a non-music scene, Vorple won't shut up.]

Definition: A scene is musically happening if it is happening and it is a music-scene listed in the Table of Music.

This is the loop music insurance rule:
	let music-scenes be the list of musically happening scenes;
	let length be the number of entries in music-scenes;
	if length is 0:
		stop all;
	otherwise:
		repeat with S running through music-scenes: [There should only be 1 happening at a time]
			let song-text be the song corresponding to a music-scene of S in the Table of Music;
			if Vorple is not supported:
				loop song-text;
			regulate volume of S;
		
								
To regulate volume of (S - scene):
	if music-on? is false or Running is happening:
		mute sound;
	otherwise if S is iPhone Deadly:
		restore sound;
	otherwise if S is Bloodthirsty Mob or S is Margo's Music:
		supermask sound;
	otherwise if S is iPhone Deaf or S is Torture or S is Ante-Lugging Phone:
		mask sound;
	otherwise if S is Resurrection:
		if the player wears the cowl:
			mask sound;
		otherwise:
			restore sound;
	otherwise if Final Battle Drones is happening:
		restore sound;				

		
	
					
[https://stackoverflow.com/questions/36803176/how-to-prevent-the-play-request-was-interrupted-by-a-call-to-pause-error -- this might do the trick for not playing sometimes when we undo]							

To say loop-music-insurance:
	follow the loop music insurance rule;


To loop (T - some text):
	if Vorple is supported:
		execute JavaScript command "return new Promise(resolve => {
		setTimeout(resolve, 1000);
	});";
	[regardless, we want the music to be playing, just muted for people who change their minds and can start the music up during the scene]
	if T is "steve music":
		if Vorple is supported:
			play music file "the heroic dark alt.mp3", looping;
		otherwise:
			loop Sound of Steve Music;
	otherwise if T is "elevator":
		if Vorple is supported:
			play music file "elevator 1.mp3", looping;
		otherwise: 
			loop Sound of Elevator Music;
	otherwise if T is "straitjacket tuba":
		if Vorple is supported:
			play music file "straitjacket tuba tape.mp3", looping;
		otherwise: 
			loop Sound of Straitjacket Tuba Music;
	otherwise if T is "howling wind":
		if Vorple is supported:
			play music file "howling wind.mp3", looping;
		otherwise: 
			loop Sound of Howling Wind;
	otherwise if T is "drone music":
		if Vorple is supported:
			play music file "beat witch dance.mp3", looping;
		otherwise: 
			loop Sound of Drone Music;
	if music-on? is false:
		mute sound;
			
To stop all:
	if Vorple is supported:
		stop all audio;
	otherwise:
		repeat with S running through sound names:
			stop S;

			
Book Styling


To say status-line-color-rule:
	follow the status-line-color rule;
		
This is the status-line-color rule:
	let color be "202020"; [black]
	if music-harm? is true and a musical scene is happening:
		now color is "800000"; [red]
	otherwise if Torture is happening:
		now color is "d0730d"; [orange]
	execute JavaScript command "let statusBar = document.querySelector('.status-line-container'); statusBar.style.background = '#[escaped color]';";
		

Every turn:
	follow the status-line-color rule;
	

Volume Messages

The requested actions require persuasion rule response (A) is "No one will do anything for you, and you can't exactly ask." ["[The noun] [have] better things to do."]


The parser error internal rule response (N) is "That verb is not recognized in this story." ["That's not a verb I [if American dialect option is active]recognize[otherwise]recognise[end if]."]


The block showing rule response (A) is "That would impress no one." ["[The second noun] [are] unimpressed."]

The  block climbing rule response (A) is "[if the player is wounded]You're not climbing anything with your leg the way it is[otherwise][block-jump][end if]." ["Little [are] to be achieved by that."]

The block tying rule response (A) is "Now is knot a good time for that." ["[We] [would achieve] nothing by this."]


The action processing internal rule response (J)  is "[run paragraph on]"; ["(Since something dramatic has happened, your list of commands has been cut short.)"] [This will otherwise print this strange message when we drain the responders.]


The block waking rule response (A) is "[if the noun is drained][regarding the noun][They] will be be feeling normal in 24 hours. Until then, it's best to wait it out[otherwise if the noun is Denise and Denise is comatose][one of]You shake the girl by the shoulder and get no response[or]She won't wake up[stopping][otherwise]That's unnecessary in a sleepless world[end if]." ["That [seem] unnecessary."]

Understand "shake [someone]" or "shake [someone] awake" as waking.


Instead of attacking someone:
	say "[if Prisoner is happening]You don't want to fight. You want to escape[otherwise]You rarely resort to outright physical attacks[end if].";

The parser error internal rule response (X) is "What?" ["I beg your pardon?"]

The block vaguely going rule response (A) is "In what compass direction?" ["You'll have to say which compass direction to go in."]

The immediately undo rule response (B) is "There is nothing to undo." ["You can't 'undo' what hasn't been done!"]

The immediately undo rule response (E) is "Undone.[run paragraph on][line break][status-line-color-rule][loop-music-insurance]". ["[bracket]Previous turn undone.[close bracket]"]

The restore the game rule response (B) is "Restored.[run paragraph on][line break][status-line-color-rule][loop-music-insurance]" ["Ok."]

The immediately undo rule response (F) is "You have reached the end of available undos. From now on, you must move forward."  ["'Undo' capacity exhausted. Sorry!"]
The quit the game rule response (A) is "Quitting already? Are you sure? ". ["Are you sure you want to quit? "]
The save the game rule response (A) is "Your game failed to save." ["Save failed."]
The save the game rule response (B) is "Saved." ["Ok."]

The restore the game rule response (A) is "Your game failed to restore." ["Restore failed."]
The restart the game rule response (A) is "Restarting now? Are you sure? ". ["Are you sure you want to restart? "]
The restart the game rule response (B) is "Your game failed to restore." ["Failed."]

The switch the story transcript on rule response (B) is "An invisible typewriter begins to record your every move.[paragraph break]Start of a transcript of ..." ["Start of a transcript of"]

The switch the story transcript off rule response (B) is "The clacking of the invisible typewriter stops.[paragraph break]End of transcript." ["[line break]End of transcript."]


The parser command internal rule response (A) is "Uncorrectable." [ "Sorry, that can't be corrected."]

The parser command internal rule response (B) is "Stop wasting time with politeness." ["Think nothing of it."]

The parser command internal rule response (C) is "'Oops' can only correct a single word. Oops." ["'Oops' can only correct a single word."]

The parser error internal rule response (S) is "To repeat a command, you only need to type the word AGAIN or G." ["To repeat a command like 'frog, jump', just say 'again', not 'frog, again'."]

The parser command internal rule response (D) is "You can't repeat that." ["You can hardly repeat that."]

The parser error internal rule response (T) is "You can't begin with a comma; what would the semicolons think?" ["You can't begin with a comma."]

The parser error internal rule response (W) is "Simply TALK TO someone if you have the notepad." ["To talk to someone, try 'someone, hello' or some such."]

To say unknown-command:
  say "Please rephrase that[period]";

The action processing internal rule response (K) is "[unknown-command]". ["I didn't understand that instruction."]

The parser error internal rule response (A) is "[unknown-command]". ["I didn't understand that sentence."]

The block attacking rule response (A) is "[if Musical Walkman is happening]You should worry about breaking something else [period][period][otherwise]You avoid violence if you can help it[end if]." ["Violence [aren't] the answer to this one."]

The block burning rule response (A) is "Enough has burned already." ["This dangerous act [would achieve] little."]

The block buying rule response (A) is "Nothing to buy." ["Nothing [are] on sale."]

The report jumping rule response (A) is "[if the player is wounded]After your leg's been shot?[otherwise if the location is Roof]You have no desire to fall to your death.[otherwise if the location is Fleshy Bridge]You have fallen to your death once. Never again.[otherwise][block-jump].[end if]" ["[We] [jump] on the spot."]

Instead of going down when the location is Roof or the location is Fleshy Bridge:
	try jumping;

To say block-jump:
	say "You are comfortable at your current height";

Instead of kissing someone:
	say "Ew.";

The report touching other people rule response (A) is "You don't like to touch or be touched." ["[The noun] [might not like] that."]

The report touching yourself rule response (A) is "[if Resolution Beach is happening]You have sand everywhere[otherwise]You feel slimy to the touch, just like everything else in this city[end if]." ["[We] [achieve] nothing by this."]

The parser error internal rule response (D) is "Math won't get you out of this one." ["I didn't understand that number."]

The parser error internal rule response (B) is "Please clarify. It looks like you're wanting to ";

The parser error internal rule response (C) is "Please clarify. It looks like you're wanting to (go) ";

The parser error internal rule response (E) is "You see nothing like [regarding the noun][those]." ["[We] [can't] see any such thing."]

The can't wear what's not held rule response (A) is "[We] [don't] have [regarding the noun][those]." ["[We] [aren't] holding [regarding the noun][those]!"]

The parser error internal rule response (H) is "That verb only uses one object." ["You can't use multiple objects with that verb."]

The parser error internal rule response (L) is "You excepted something not included anyway. Please rephrase." ["You excepted something not included anyway!"]

The parser error internal rule response (K) is "[We] [can't] see ['][pronoun i6 dictionary word]['] ([the noun]) right now." ["[We] [can't] see ['][pronoun i6 dictionary word]['] ([the noun]) at the moment."]

parser error internal rule response (O) is "Don't worry about that." ["That's not something you need to refer to in the course of this game."]


Definition: A thing is other-held if it is carried by an other person.

Rule for deciding whether all includes other-held things: it does not.

The parser nothing error internal rule response (B) is "Nothing to take." ["[There] [adapt the verb are from the third person plural] none at all available!"]


The action processing internal rule response (D) is "You need a noun here." ["You must supply a noun."]

The action processing internal rule response (E) is "You don't need a noun here." ["You may not supply a noun."]


The standard looking under rule response (A) is "Nothing interesting here." ["[We] [find] nothing of interest."]

The can't search unless container or supporter rule response (A) is "Nothing interesting here." ["[We] [find] nothing of interest."]

The can't search closed opaque containers rule response (A) is "Closed. Open [the noun] first." ["[We] [can't see] inside, since [the noun] [are] closed."]

To say rhetorical-means:
  say "Do you know what 'rhetorical' means";

[To say maybeYesNo:
  say "Uh, [one of]maybe[or]indeed[or]nope[or]yeah[or]could be[purely at random]";]

The block saying yes rule response (A) is "[rhetorical-means]?" ["That was a rhetorical question."]

The block saying no rule response (A) is "[rhetorical-means]?" ["That was a rhetorical question."  ]

The block sleeping rule response (A) is "If sleep is heaven, you are the fallen angel of insomnia." ["[We] [aren't] feeling especially drowsy."]

Understand "rest" as sleeping.

The report smelling rule response (A) is "Everything [if the location is Beach]smells like salt, sand, and childhood[otherwise]reeks of smoke and rot[end if]." ["[We] [smell] nothing unexpected."]

To say howling:
	say "You hear nothing over the scream of the wind";
	
To say howling-room:
	if Descent is happening:
		say "[howling]";
	otherwise:
		say "You hear nothing unusual";

To say howling-thing:
	if Descent is happening:
		say "[howling]";
	otherwise:
		say "No unexpected sounds come from [the noun]";


The report listening rule response (A) is "[if the player is deaf][deaf-listening][otherwise if the noun is a room][howling-room][otherwise][howling-thing][end if]." ["[We] [hear] nothing unexpected."]

The can't take yourself rule response (A) is "You're not sure you want yourself, to be honest." ["[We] [are] always self-possessed."]

The can't take other people rule response (A) is "You don't want [noun]. Or anyone." ["I don't suppose [the noun] [would care] for that."]

The can't take people's possessions rule response (A) is "[if the noun is the pistol]You'd be shot before you even touched the gun[otherwise if the noun is the scalpel][one of]Dr. Steve moves the scalpel to his other hand before you can touch it[or]Dr. Steve is too fast with that scalpel for you to touch it[stopping][otherwise]Thievery isn't the answer here[end if]." ["[regarding the noun][Those] [seem] to belong to [the owner]."]

The can't take items out of play rule response (A) is "[regarding the noun][Those] [aren't] available for you to take." ["[regarding the noun][Those] [aren't] available."]


To say lugging:
	say "[regarding the noun][They're] not exactly something you can lug around";

The can't take scenery rule response (A) is "[lugging]." ["[regarding the noun][They're] hardly portable."]

The can't take what's fixed in place rule response (A) is "[lugging]." ["[regarding the noun][They're] fixed in place."]


The can't pull scenery rule response (A) is "[lugging]"; ["[We] [are] unable to."]

To say block-thinking:
	say "Deliberate thinking is the recipe for memory's poison";

The block thinking rule response (A) is "[block-thinking]." ["What a good idea."]

Understand "think about [text]" or "think [text]" as a mistake("[block-thinking].");

The futile to throw things at inanimate objects rule response (A) is "That wouldn't do anything." ["Futile."]

block throwing at rule response (A) is "Your aim is too awful to try." ["[We] [lack] the nerve when it [if story tense is the past tense]came[otherwise]comes[end if] to the crucial moment."]

The report touching things rule response (A) is "[unless Resolution Beach is happening]Everything in this city seems to be covered in an invisible layer of slime[otherwise]Everything here is either sandy or wet[end if]." ["[We] [feel] nothing unexpected."]

slime is a backdrop. slime is everywhere. understand "layer" or "layer of slime" as the slime.

Instead of doing something to the slime:
	try touching the noun;

To say drink-water:
	try drinking the water;

The block drinking rule response (A) is "[if the water is in the location][drink-water][otherwise][There's] nothing for you to drink here.[end if]"


The standard report waiting rule response (A) is "Moments pass." ["Time [pass]."]

The block waking up rule response (A) is "The only waking is death." ["The dreadful truth [are], this [are not] a dream."]

Understand "dance" or "twirl" or "dance with [someone]" as a mistake ("Dancing makes you feel sick.");

Understand "sing" as a mistake ("Your songs are silent.");


Understand "clean [something]" as rubbing.

Instead of rubbing something:
	if the player is in Beach:
		say "This place is perfect. You don't need to clean anything.";
	otherwise:
		say "Cleaning anything here is futile.";

Understand "clean up [something]" or "clean [something]" or "clean [something] up" as rubbing.

The can't go through undescribed doors rule response (A) is "[We] [can't go] in that direction." [ "[We] [can't go] that way."]

The can't eat unless edible rule response (A) is "You are always hungry -- but never that hungry." ["[regarding the noun][They're] plainly inedible."]

Instead of tasting something:
	try eating the noun;

The can't take items out of play rule response (A) is  "[regarding the noun][Those] [aren't] in your reach." ["[regarding the noun][Those] [aren't] available for you to take."]

The standard report taking rule response (A) is "You take [regarding the noun][them]."  ["Taken."]

The standard report dropping rule response (A) is "You drop [regarding the noun][them]." ["Dropped."]

The can't drop yourself rule response (A) is "You only wish you could leave yourself behind." ["[We] [lack] the dexterity."]

The can't drop body parts rule response (A) is "[regarding the noun][Those] seem to be attached." ["[We] [can't drop] part of [ourselves]."]

The can't drop what's already dropped rule response (A) is "You can't drop what you don't have." ["[The noun] [are] already here."]

The can't put onto what's not a supporter rule response (A) is "Putting things on [the second noun] is a funny idea, but you're in no mood to laugh." ["Putting things on [the second noun] [would achieve] nothing."]

The can't enter what's already entered rule response (A) is "Fortunately, [we]['re] on [the noun] already.[if the player is on the swing set] Unfortunately, you don't feel like swinging anymore.[end if]" ["But [we]['re] already on [the noun]."]

The can't enter what's already entered rule response (B) is "Fortunately, [we]['re] already in [the noun]." ["But [we]['re] already in [the noun]."]

The can't lock without a lock rule response (A) is "[regarding the noun][Those] [aren't] lockable." ["[regarding the noun][Those] [don't] seem to be something [we] [can] lock."]

The can't unlock without a lock rule response (A) is "[regarding the noun][Those] [aren't] unlockable." ["[regarding the noun][Those] [don't] seem to be something [we] [can] unlock."]

The standard report opening rule response (B) is "[The actor] [open] [the noun]."  ["[The actor] [open] [the noun]."]

The standard looking under rule response (A) is "There's not much to see under [the noun]."

The can't search unless container or supporter rule response (A) is "You try not to worry about it." ["Nothing interesting here."]

The block swinging rule response (A) is "You must be feeling delirious." ["[There's] nothing sensible to swing here."]


The report waving things rule response (A) is "You are not the waving type."

The report waving hands rule response (A) is "[if the location is Staging Area and Deadly iPhone has not happened]You don't want to call attention to yourself[otherwise]You aren't feeling especially friendly[end if]." ["[We] [wave]."]


The can't push vertically rule response (A) is "You can't push [the noun] up or down." ["[The noun] [cannot] be pushed up or down."]

The can't push from within rule response (A) is "You can't push [the noun] from here." ["[The noun] [cannot] be pushed from here."]


The block pushing in directions rule response (A) is "Pushing [the noun] from place to place wouldn't work." ["[The noun] [cannot] be pushed from place to place."]


The can't take what's already taken rule response (A) is "A quick search reveals you already have [regarding the noun][those]." ["[We] already [have] [regarding the noun][those]."]


The can't wear what's already worn rule response (A) is "You [unless the noun is the cowl]look down and find you [end if]are already wearing [regarding the noun][those]." ["[We]['re] already wearing [regarding the noun][those]!"]





The print final score rule is not listed in any rulebook.

Check requesting the score:
	say "There is no score here." instead;
	

Understand "wave to [text]" as a mistake("This is no time to be overly friendly.").

Understand "xyzzy" or "plugh" as a mistake("Even if magic words worked, you wouldn't be able to say them.");

Understand "* [text]" as a mistake ("Noted.").

Understand "*[text]" as a mistake ("Noted.").

Licking is an action applying to one thing. Understand "lick [something]" or "slurp [something]" as licking.

Instead of licking something:
	if the noun is blood or the noun is water:
		try drinking the noun;
	otherwise:
		say "Disgusting.";

Volume Help Menu

Book Coding
	
Understand "help" or "hints" or "hint" or "help me" or "info" or "i need help" or "i want help" as asking for help.
	
When play begins:
	now mn_master_table is table of witch contents;
	now mn_master_title is "BEAT WITCH HELP";
	now mn_show_hints_in_bookmode is true;


Table of witch contents
title (text)	subtable (table name)	description (text)	toggle (rule)	used (number)	bookpage (number)	localpage (number)
"Bonus Material"    	Table of Bonus Material    	--    	--
"Help with Beat Witch"	--	"[help-text]"	--
"[if-general]"	Table of Instruction Options	--	--
"About This Story"	--	"[about-beat-witch]"	--
"About the Music"    	--    	"[beat-witch-music]"    	--
"Credits"    	--    	"[beat-witch-credits]"    	--
"Author Info"    	--    	"[author-info]"    	--



Table of Bonus Material
title (text)	subtable (table name)	description (text)	toggle (rule)	used (number)	bookpage (number)	localpage (number)
"Alert from U.S. Department of Justice"	--	"[beat-witch-FBI]"	--
"Beat Witches: Facts and Fables"	Table of Book	--	--


Table of Book
title (text)	subtable (table name)	description (text)	toggle (rule)	used (number)	bookpage (number)	localpage (number)
"Table of Contents"	--	"[book-title-page][book-toc]"	--
"Introduction"	--	"[book-title-page][book-intro]"	--


Book Text

Part FBI announcement

To say beat-witch-FBI:
	say beat-witch-FBI-1;
	say beat-witch-FBI-2;
	
To say beat-witch-FBI-1:
	say "[italic type]Public statement from U.S. Department of Justice (dated July 3, 2009):[roman type]

	Beat witches have been in the public eye as of late due to the actions of Cassie McDonald, who killed three picnickers in a Rhode Island park on May 22 and was neutralized on June 12.

	Thanks to music's increasing presence in our lives and emerging drone technology, beat witches are rarer now than ever before, but they remain a threat to all Americans.

	Therefore, we are asking all federal, state, and local law enforcement agencies to be vigilant. 

	(See the list at the end of this document for beat witches known to be at large in the United States.) 

	Beat witches can kill with a thought and are therefore dangerous in the extreme. They use the victim's strength to temporarily make themselves stronger and faster, which increases the risk to the public.

	A beat witch can be distinguished by the following criteria:[paragraph break]
• Was born female.[line break]
• Cannot speak.[line break]
• Shows acute pain when exposed to music, especially music that is without lyrics and played on a high volume.[line break]
• Is emitting light (if she has recently drained a victim).[paragraph break]";

To say beat-witch-FBI-2:
	say "If you believe you have seen a beat witch, avoid a direct encounter and call 911 when it is safe to do so. However, if you believe yourself or others to be in immediate danger, take the following precautions/actions: [paragraph break]
• Always go outside with a musical device, whether it's an instrument, a phone, or an MP3 player with a speaker (not just earphones).[line break]
• Play music. Although lyrics can render music less effective against a beat witch, any song has the potential to kill one. Even if the tune is not immediately lethal, it can incapacitate the beat witch until the proper authorities arrive.[line break]
• If music is not available, you may try to kill the beat witch by conventional means. If the witch has drained someone recently, however, this method is unlikely to result in her death.

	Keep in mind that a beat witch cannot harm those outside her immediate visible vicinity (typically about twenty (20) feet). 

	Harboring or aiding a beat witch not only carries high risk – it is illegal. Those suspected of such behavior will be prosecuted to the fullest extent of the law, which carries a penalty of up to five (5) years in prison and/or a $30,000 fine.

	Beat witches are not considered human (under precedent set in Johnston v. Whiting in 1934) and therefore have no rights under the Constitution of the United States. 

	Known beat witches:[paragraph break]
• Tabitha Jean King[line break]
• Guadalupe Miguel[line break]
• Polly Miller[line break]
• Bella Ward[line break]
• Li 'Susie' Yang
	
	There is a moderate probability that other beat witches have avoided detection and are therefore not named in government notices.";
	
Part About Beat Witch

To say about-beat-witch:
	say "[italic type]Beat Witch[roman type] started as an attempt write a spooky piece of interactive fiction in four hours. The time came and went, and the story just didn't come together in that short amount of time.[paragraph break]Over the next few years, the author worked on it in fits and starts until it grew into the monstrosity you see here.[paragraph break]Although music is vital to the story itself, listening to it is not.[paragraph break]If you are interested in learning more about beat witches, see Bonus Material under the Help menu.[paragraph break]Go to https://soundcloud.com/rpatten to hear more of the author's music.";

Part About the Music
	
To say beat-witch-music:
	say "Music is central to Beat Witch's story, and the author has created some songs to enhance the experience. Keep in mind that interactive fiction does not typically use audio, and not all interpreters support it. If you can't hear the music or would prefer to engage with the story without a melody distracting you, don't worry. You can proceed knowing you will experience the full story, regardless of whether you are listening to the actual sounds.[paragraph break]Visit https://soundcloud.com/rpatten for more music.";
	
Part Credits

Chapter Out-of-help-menu commands

Understand the command "version" as something new.

Abouting is an action out of world.

Understand "credits" or "credit" or "credits" or "version" or "about" as abouting.

Carry out abouting:
	say "[beat-witch-credits][paragraph break]";
	say "Type HELP if you are stuck or to learn more about this story."
	
Chapter Saying Version and Credits

To say beat-witch-credits:
	try requesting the story file version;
	say "[extra-credits]";
		
After printing the banner text:
	say "[line break][one of][italic type][bold type]This story occasionally plays music if supported by your interpreter.[roman type][italic type] It is on by default. To toggle hearing it, type MUSIC. [if Vorple is not supported]Some interpreters that do not support music will give occasional error messages about volume control[period][end if][paragraph break]Type HELP if you have never played interactive fiction before and ABOUT to [bold type]access bonus material about beat witches.[roman type][line break][or][stopping]"; [Show music and help instructions at beginning]
		
To say extra-credits:
	say "Music and cover art by Robert Patten. Sounds by albertomarun, foad, inchadney, and robni7 from freesound.org.[paragraph break]";
	say "[bold type]The author would like to thank the testers: Christopher Merriner, Matthew Goh, Mel Jason, and Jamie Patten.[roman type][line break][italic type]Any errors in this story are the author's responsibility and not the testers['], who were all wonderful![roman type]";
	
Part Book

To say book-title-page:
	say "[bold type]Beat Witches: Facts and Fables by Emlyn Berlin[roman type][paragraph break][italic type]Due to copyright restrictions, the book cannot be read in its entirety here. The introduction and table of contents are included with the permission of the publisher.[roman type][paragraph break]";
	
To say book-intro:
	say "Have you ever wondered what it would be like to suddenly die? 

One minute, you're going about your business, and the next, you're either reduced to nothingness or are exploring humankind's greatest mystery. Either idea fills most of us with dread. Indeed, so powerful is this fear that urban legends, religions, and laws have been crafted around the fact that there are some among us who can give death by force of will.

These monsters, commonly known as beat witches, are not discussed as often as they were a century ago, a sign of how uncommon they have become. After all, in the modern world, how far can you get in your day without hearing some melody, some rhythm? Influencers and policymakers are beginning to deem beat witches a menace of the past, like smallpox or Genghis Khan. 

The goal of this book is to set the record straight for the general public -- what we know about beat witches, how much of a threat they pose to civilization, and how that threat can finally be removed. 

[italic type]-- Emlyn Berlin[roman type]";

To say book-toc:
	say "Introduction

What's in a name? Beat witches vs. witches in general

Beat witches['] abilities: What's confirmed, what's speculation, and what's incorrect

Observations, Part 1: It's complicated: Beat witches['] relationship to music

Observations, Part 2: Look not on the outward appearance: Beat witch beauty and the art of survival

Observations, Part 3: Giving and receiving: Beat witches giving life instead of taking it, and why beat witches can't drain other beat witches

Observations, Part 4: Shadows of us: Beat witches['] non-humanity

Speculations: Eternal youth through draining others, animating the dead

The earliest records of beat witches: Etruscans, Olmecs, and Shang dynasty

Beat witch worshipers throughout the centuries

Eleanor II the Fair (beat witch queen) vs. Edwin the Piper

The Choral Uprising and why it failed

The debate over beat witches['] involvement in the Black Plague

Silent butchers: How beat witches preyed on the wounded in the American Civil War

The phonograph, the radio, and the Great Extermination 

Johnston v. Whiting and its influence outside the United States

More efficient ways to hunt beat witches in the digital age

How you can protect your community

Choose your future without fear

Index";

Part Actual Help

[I almost forgot the help part of the help menu!]

To say help-text:
	say "[italic type]Beat Witch[roman type] focuses more on story than puzzles. However, you may hit some snags on the way. Just remember that there are no puzzles that require you to do multiple things in a sequence. That is, a single action will move the story forward.

Some tips:[paragraph break]
• Don't give up. Really. When you see the death message, type UNDO.[line break]
• If you're dying by music, try to find a way to either block it or stop it. Something in your immediate environment may help you. LOOK. TAKE INVENTORY.[line break]
• Mercy is better than revenge.  

Also:[paragraph break]
• Type MUSIC to toggle the music. (It's on by default but only plays at certain points.)[line break]
• If you want more context on beat witches, select the bonus material in the help menu.

For detailed help, see the walkthrough that accompanies this story. It's divided into chapters that contain minimal spoilery info about the ones that follow.

For general help, see [italic type][if-general][roman type] in the main Help menu.";

To say if-general:
	say "'This Game Is Weird.' How to Play Interactive Fiction in General";
	
Part Author Info

To say author-info:
	say "Robert Patten lives in Idaho, USA, with his wife and two children. He's the web manager for a news website. His hobbies include writing, coding, creating music, and eating chocolate. He also has a horror podcast called [italic type]Uncle Bob[']s Campfire[roman type].[paragraph break]You can contact him at curiousrealms@gmail.com.";

Volume Can Only Go At End

Understand the command "cover" as something new.

Covering is an action applying to one thing. Understand "plug [something]" as covering.

Understand the command "cover" as "plug".

[That's it! You made it through the Beat Witch source code, or at least scrolled a lot! Please accept this Beat Witch Merit Badge. 

  _____
 /     \
| () () |
 \  ^  /
  |||||
  |||||

(https://ascii.co.uk/art/skulls)
]