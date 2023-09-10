# Spoiler alert: contains the full story data for DIAMOND FIND: THE CON JOB

s = Woods::Story.create!(name: "Diamond Find: The Con Job",
  description: "Hal-con's full of diamonds! So people say, anyway. Written for Hal-Con 2018.")


st1 = Woods::Storytree.create!(name: "Intro", max_level: 1, story_id: s.id)
s.entry_tree_id = st1.id; s.save

n1 = Woods::Node.create!(name: "Intro", storytree_id: st1.id, tree_index: 1,
  node_text: "As CEO and founding partner of Diamond Find, Inc., you've been finding diamonds for years. It's your job, and you're good at it.\n\nIt's also an obsession. There's nothing in the world you want more than diamonds. Not fame. Not money. Just... diamonds.\n\nBut rumour has it that people are always finding diamonds around Hal-Con, so, not wanting to be shown up, you got yourself a weekend pass and now you're here.\n\nNo one finds more diamonds than you.\n\nNobody.")


st2 = Woods::Storytree.create!(name: "The Novacentre", max_level: 5, story_id: s.id)
tl1 = Woods::Treelink.create!(node_id: n1.id, linked_tree_id: st2.id)

n4 = Woods::Node.create!(name: "Novacentre lobby", storytree_id: st2.id, tree_index: 1,
  node_text: "You're standing in the main lobby of the Novacentre. It's packed with people.\n\nYou can't see any diamonds here unfortunately.\n\nIt's a big convention, so you'd better get moving. You pull out your map.",
  left_text: "Vendor/panel floor", right_text: "Gaming floor")


### GAMING FLOOR

n6 = Woods::Node.create!(name: "Gaming floor", storytree_id: st2.id, tree_index: 3,
  node_text: "You walk to the gaming floor, electrified by the sounds of dice rolls. But you also feel the unmistakable buzz of your diamond sense. You know you're getting closer.\n\nThere is an impressive number of tables, but the glitter from the premium game tokens is maddening. Could diamonds be at play?\n\nThe only way you're going to find out is by joining a game. Two tables call out to you with invitations.",
  left_text: "Dungeons and Dragons", right_text: "Monopoly")

## D&D

n7 = Woods::Node.create!(name: "D&D", storytree_id: st2.id, tree_index: 6,
  node_text: "You've played a bit of D&D in your day, so you join the game, taking a pre-rolled character sheet from the DM. You're a mediocre druid with a couple of weak healing tinctures.\n\nImmediately you're thrown into a battle with goblins. The DM says they're guarding a diamond! You're pretty sure it's fictional, but it gives you energy to keep playing.\n\nA goblin swings its axe at your druid.",
  left_text: "Roll to counter-attack", right_text: "Roll to block")


n5 = Woods::Node.create!(name: "Counter-attack", storytree_id: st2.id, tree_index: 12, moverule_id: 4,
  node_text: "You require a 16 or above for a successful counter-attack. As you roll your D20, your party holds its breath...")

n19 = Woods::Node.create!(name: "Block", storytree_id: st2.id, tree_index: 13, moverule_id: 4,
  node_text: "Like the weak, passive druid you are, you choose to block the attack. Your wooden buckler helps, but you still need to roll a 12 or higher to withstand the onslaught.\n\nYour party holds its breath as you feed a D20 into the top of their dice tower...")


n23 = Woods::Node.create!(name: "Roll a 1", storytree_id: st2.id, tree_index: 25,
  node_text: "You roll a 1! The DM explains how your druid, attempting to throw a tincture through the goblin's eye, accidentally poured the mixture over the fiend, giving it an extra 5 HP. Your party groans. Why did they even invite you to play?\n\nYou gracefully resign and rise from the table. Fun as this was, you have diamonds to find.\n\nYou go back to the lobby to get your bearings.")

n22 = Woods::Node.create!(name: "Natural 20", storytree_id: st2.id, tree_index: 24,
  node_text: "You roll a natural 20! The goblin goes down and your party cheers, and the DM reveals — to everyone's surprise — that the diamond is in fact real!\n\n\"Was this what you were looking for?\"\n\nAs your fingers close around the brilliant jewel, the party fades away, and you're left sitting alone at an empty table, just a single D20 on its surface.\n\n\"You want to play Shadowrun?\" asks someone in a Master Chief cosplay.\n\nYou really, really don't, so you pocket your precious diamond and go back to the lobby.")

n30 = Woods::Node.create!(name: "Block-attack", storytree_id: st2.id, tree_index: 26,
  node_text: "A natural 20 rolls out onto the table! The DM explains that, by catching the goblin's axe in your buckler, you then fling it into a wall of spinning, serrated blades, which you don't remember hearing about before.\n\nYour party cheers, and from a dice bag, the DM withdraws a fat, sparkling diamond!\n\nYour whole body goes numb, and as you touch it, your D&D friends melt away, leaving you sitting alone at an empty gaming table.\n\n\"Hey,\" says someone behind you. \"Are you using this table? We want to play King Of Tokyo.\"\n\nYou join them for a frustrating game of KoT and then take your new diamond with you back to the lobby.")

n24 = Woods::Node.create!(name: "Tower breaks", storytree_id: st2.id, tree_index: 27,
  node_text: "The dice tower collapses! That's how bad your roll was.\n\nThe DM indicates that maybe they need someone more experienced in the role of druid. Taking the hint, you rise from the table and wish them, \"GG\".\n\nDiamondless, you go back to the lobby.")


## MONOPOLY

n10 = Woods::Node.create!(name: "Monopoly", storytree_id: st2.id, tree_index: 7,
  node_text: "Monopoly, at Hal-Con?\n\nYou discover that it's actually \"Extreme\" Monopoly, and players are wagering significant stakes on the game. In the pot already is a limited edition Harley Quinn figurine, seemingly mint condition, as well as a plump diamond!\n\nYou sit down and throw your wallet into the middle of the board. If you lose that, you won't be able to get any of those Garrison soft drinks later. So you have to win.\n\nBut which strategy will you employ?",
  left_text: "Hard-hitting monopolies", right_text: "Railroads and utilities")


n13 = Woods::Node.create!(name: "Get monopolies", storytree_id: st2.id, tree_index: 14, moverule_id: 4,
  node_text: "You complete the set of green properties and one of the low-price monopolies, hoping you can amass enough houses and hotels before your opponents come rolling through...")

n8 = Woods::Node.create!(name: "Railroads and utilities", storytree_id: st2.id, tree_index: 15, moverule_id: 4,
  node_text: "You scoop up the railroads and trade for the utilities, banking on the steady, modest income of consistent traffic...")


n3 = Woods::Node.create!(name: "Power play", storytree_id: st2.id, tree_index: 30,
  node_text: "Strangely, the utilities are the ones that pay off! People keep landing on the Water Commission for huge multipliers. Soon, you've demolished the competition, and they're as shocked as you are.\n\n\"Guess I'll be taking this,\" you say, snatching up the diamond, and your wallet.\n\n\"Not the Harley Quinn figurine?\" asks an opponent.\n\n\"No,\" you say. You go back to the lobby.")

n16 = Woods::Node.create!(name: "Hotel mogul", storytree_id: st2.id, tree_index: 28,
  node_text: "Everybody keeps landing on your hotels! It defies statistics. And no one is happy about it.\n\nYou bleed your opponents down to nothing over the course of several painful hours, and eventually the pot is yours. Including the diamond.\n\n\"GG!\" you say, and pocket your new gem and your wallet. You leave the Harley Quinn figurine where it is and go back to the lobby.")

n31 = Woods::Node.create!(name: "Someone gets free parking", storytree_id: st2.id, tree_index: 29,
  node_text: "But one of your opponents lands on Free Parking, scooping up the pile in the center of the board!\n\n\"Hey!\" you exclaim. \"That's for the winner!\"\n\n\"Looks like it's for Free Parking,\" they say.\n\nYou snatch back your wallet and rage-quit, storming back to the lobby. On the way, someone tries to sell you a Harley Quinn figurine, but it's one from Suicide Squad, so you tell them, \"No.\"")

n32 = Woods::Node.create!(name: "Just a dribble", storytree_id: st2.id, tree_index: 31,
  node_text: "But you never manage to get that fourth railroad, so your returns aren't quite high enough to keep you afloat during the critical, house-building middlegame. You're eventually wiped out by a single hotel.\n\nYour heart freezes as the diamond is scooped up by your opponent. In sympathy, he tosses your wallet back to you.\n\n\"Get yourself a FunkoPop so today isn't a total waste,\" he tells you.\n\nIf you're certain of anything — anything at all — it's that you won't be doing that.\n\nYou go back to the lobby.")


# VENDOR/PANEL FLOOR

n11 = Woods::Node.create!(name: "Vendor/Panel floor", storytree_id: st2.id, tree_index: 2,
  node_text: "You follow the crowd, entering the bustling commercial hub of the convention. Booths selling cheap plastic collectibles greatly outnumber those selling their own original work, but right now you're more concerned about diamonds. No one is selling any.\n\nA sparkle from the Panel Room catches your eye — there might be one in there! But you'd have to attend a panel on comics.\n\nYou also see a line-up for a celebrity autograph signing. If anyone can afford to leave diamonds lying around this place, it'd be someone who used to be on television.",
  left_text: "Comics panel", right_text: "Celebrity signing")

# COMICS PANEL

n9 = Woods::Node.create!(name: "Comics panel", storytree_id: st2.id, tree_index: 4,
  node_text: "You sidle into the comics panel, pretending you're there to learn about the art of the graphic novel and not just obsessively looking for diamonds. No one notices.\n\nAt the front of the room, three panelists discuss the state of mainstream comics. Nestled by the leg of their table is a scintillating diamond!\n\nYou need to get closer, so you approach the microphone in the centre of the room, and in a panic ask an inane question about the comics industry. It's clear you don't know what you're talking about.\n\nOne of the panelists pegs you for a comics fraud, and asks: Which is better?",
  left_text: "Marvel", right_text: "DC")


n14 = Woods::Node.create!(name: "DC", storytree_id: st2.id, tree_index: 9, moverule_id: 4,
  node_text: "You answer \"DC,\" and there are gasps throughout the audience. The panelists stir, and one of them stands, you hope, to beckon you closer to their table...")

n15 = Woods::Node.create!(name: "Marvel", storytree_id: st2.id, tree_index: 8, moverule_id: 4,
  node_text: "Trying to maintain focus on the topic at hand, you answer \"Marvel,\" hoping the panelist will allow you closer access to the table, and the audience holds its collective breath...")


n20 = Woods::Node.create!(name: "Absolute debate", storytree_id: st2.id, tree_index: 17,
  node_text: "\"DC!\" someone yells. \"Marvel!\" says someone else. Soon an ad-hoc episode of Geeks Vs Nerds has taken over the panel, and as Pigmonkey rises from the floor, you know his moderation won't let you get close to that diamond.\n\nDejected, you walk back to the lobby.")

n26 = Woods::Node.create!(name: "Spiderman debate", storytree_id: st2.id, tree_index: 19,
  node_text: "\"But what about Spiderman?\" someone yells.\n\n\"Which reboot?\" someone else counters.\n\nYou feel sick, just sick, for starting this old fight again, and before it escalates even further, you turn heel and leave. If there's a diamond in that room, it'll go to someone more deserving.\n\nFeeling terrible, you go back to the lobby.")

confusion_text = "The room erupts in a brawl. Chairs are thrown; the panel table is overturned, and the loudspeakers scream with feedback. You race forward, shoving a Rick from Rick and Morty out of the way, and dive to the floor, feeling your hands tighten around the cold facets of the beautiful diamond.\n\nYou leave the panel to its discussion and head back to the lobby."
n21 = Woods::Node.create!(name: "More chaos", storytree_id: st2.id, tree_index: 18, node_text: confusion_text)
n29 = Woods::Node.create!(name: "Mass confusion", storytree_id: st2.id, tree_index: 16, node_text: confusion_text)


# CELEBS SIGNING

n18 = Woods::Node.create!(name: "Celebrity guest", storytree_id: st2.id, tree_index: 5,
  node_text: "You get in line for your favourite celebrity, wishing you had a good paperback to read as you're waiting.\n\nIf only there were a place to get good, inexpensive paperbacks around here.\n\nAs you get closer, your celebrity hero comes into view, and a dazzling glint catches your eye — there's a diamond on their lapel!\n\nFinally it's your turn for an autograph. You approach, stammering, and ask if you can see their diamond.\n\nThey can tell you aren't actually a fan, so, annoyed, they ask: What show was I even on?",
  left_text: "Uhhh... Buffy?", right_text: "Uhhh... Star Trek?")


n27 = Woods::Node.create!(moverule_id: 4, name: "Buffy", storytree_id: st2.id, tree_index: 10,
  node_text: "\"Buffy,\" they say, their voice low. \"Buffy?\"\n\nYou cringe, wondering if you've just ruined your diamond chances...")

n28 = Woods::Node.create!(moverule_id: 4, name: "Star Trek", storytree_id: st2.id, tree_index: 11,
  node_text: "\"Star Trek, huh,\" they say. \"Gene Roddenberry's Star Trek?\"\n\n\"Yyyyup,\" you say, doubling down. \"Now, about that diamond...\"\n\nThey lower their head to the glossy headshot in front of them, the diamond all but dropping from view...")


n25 = Woods::Node.create!(name: "It is indeed Giles", storytree_id: st2.id, tree_index: 20,
  node_text: "\"Of course I was on Buffy,\" says Anthony Head. He's even wearing, you now notice, a hat that says \"Buffy.\"\n\n\"So, about that diamond...\"\n\n\"Yes, yes, take a look at the diamond,\" says the seasoned actor, handing you his pendant.\n\nBefore he's done scribbling his name onto a photograph for you, you've run off, clutching your new gem for dear life.\n\nAnother successful day of finding diamonds!\n\nYou go back to the lobby before security closes in on your location.")

n2 = Woods::Node.create!(name: "Tanner Zipchen", storytree_id: st2.id, tree_index: 21,
  node_text: "Tanner Zipchen wasn't on Buffy! He probably wasn't even born when that show was on.\n\nHe laughs in your face, and the rest of the lineup laughs, and surrounded by laughter, you know you'll not get any closer to Tanner's incredible diamond.\n\nYou take an autographed sheet and walk, ashamed, back to the lobby.")

n17 = Woods::Node.create!(name: "It is Levar", storytree_id: st2.id, tree_index: 22,
  node_text: "\"Huh!\" he says. \"Most people nowadays recognize me from Community.\"\n\nHe's so nice, and he un-pins the diamond from his lapel and gives it to you. \"This is yours now,\" he says, \"for knowing that I was on Star Trek.\"\n\nYou thank him, and accidentally go back to the lobby without getting him to autograph the diamond.")

n12 = Woods::Node.create!(name: "BBC's Star Trek", storytree_id: st2.id, tree_index: 23,
  node_text: "\"No,\" says Anthony Head, \"but I was on the short-lived BBC Star Trek, which was litigated so promptly that it never made syndication.\"\n\nYou ask again if you can see his diamond.\n\n\"I think not,\" he says, still sour from the memory of the litigation.\n\nYou leave the line-up with an autograph, but it doesn't feel the same as a diamond. Not even close.\n\nYou go back to the lobby.")



is1 = Woods::Itemset.create!(name: "Nerdy diamonds", story_id: s.id)
is2 = Woods::Itemset.create!(name: "Chess diamonds", story_id: s.id)
is3 = Woods::Itemset.create!(name: "Tabletop diamonds", story_id: s.id)

i1 = Woods::Item.create!(name: "The Geek's Diamond", value: 25, legend: "Guaranteed to grant its owner formidable knowledge about every work of pop culture in existence, The Geek's Diamond mysteriously disappeared from the collection of renowned geek Eugene D'Angelo after he lost an argument about Firefly.\n\nYou have found it.", itemset_id: is1.id)

i2 = Woods::Item.create!(name: "The Nerd's Diamond", value: 25, legend: "Carried around inside a pocket protector for years, The Nerd's Diamond was treasured by CERN researcher Carolyn Mont-Blanc until its disappearance in 2011, when Dr. Mont-Blanc inexplicably became \"cool\" following a party.\n\nYou have found it.", itemset_id: is1.id)

i3 = Woods::Item.create!(name: "The Grandmaster's Diamond", value: 25, legend: "Calculatingly cold, The Grandmaster's Diamond gave confidence to Chess legend Bella Kovalkov until its strange disappearance at the 2016 Chess Grand Tour, immediately after which Kovalkov accidentally used the term \"horsepiece\" during play.\n\nYou have found it.", itemset_id: is2.id)

i4 = Woods::Item.create!(name: "The 20-Sided Diamond", value: 25, legend: "A D20 of unprecedented value, The 20-Sided Diamond belonged to the infuriating yet undeniably talented DM Mohan Parida until, during one of his campaigns, he accidentally allowed one of his players, a cloaked stranger, to usurp his DM role, and all of his dice.\n\nYou have found it.", itemset_id: is3.id)

pi1 = Woods::Possibleitem.create!(itemset_id: is1.id, node_id: n29.id)
pi2 = Woods::Possibleitem.create!(itemset_id: is1.id, node_id: n21.id)
pi3 = Woods::Possibleitem.create!(itemset_id: is1.id, node_id: n25.id)
pi4 = Woods::Possibleitem.create!(itemset_id: is1.id, node_id: n17.id)
pi5 = Woods::Possibleitem.create!(itemset_id: is2.id, node_id: n22.id)
pi6 = Woods::Possibleitem.create!(itemset_id: is2.id, node_id: n30.id)
pi7 = Woods::Possibleitem.create!(itemset_id: is3.id, node_id: n16.id)
pi8 = Woods::Possibleitem.create!(itemset_id: is3.id, node_id: n3.id)
