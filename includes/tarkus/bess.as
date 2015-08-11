﻿/*FLAGS:
BESS_HAIRSTYLE = bessHairStyle: "a messy chignon"

BESS_LOCATION 			-- Current location of Bess
	BESS_AT_TAVROS 		-- Not on crew, currently waiting for the PC at Tavros station
	BESS_ON_CREW 		-- Onboard the PCs ship

BESS_DISABLED
	undefined	 		-- Still active in some capacity
	1 					-- Hard disable

BESS_SEX_ROLE
	0 					-- Equals
	1  					-- Bess is Dom
	2 					-- Bess is Sub

BESS_VOCAL

BESS_GLASSES
BESS_KATANA
BESS_TIT_CUM
BESS_CUM_DUMP
BESS_LOVER
BESS_FRIEND
BESS_DREAMS
BESS_FERTILE
BESS_ACCESSORY
BESS_PC_SEX_NAME
BESS_PC_NAME
BESS_SEX_NAME
BESS_CREW_ROLE
BESS_COLOR
BESS_DRINK
BESS_GENRE
BESS_MUSIC
*/

public function bessSexName():String
{
	if (flags["BESS_SEX_NAME"] == undefined) flags["BESS_SEX_NAME"] = bess.short;
	return flags["BESS_SEX_NAME"];
}

public function bessName():String
{
	if (flags["BESS_NAME"] == undefined) flags["BESS_NAME"] = bess.short;
	return flags["BESS_NAME"];
}

public function bessPCName():String
{
	if (flags["BESS_PC_NAME"] == undefined) flags["BESS_PC_NAME"] = pc.short;
	return flags["BESS_PC_NAME"];
}

public function bessPCSexName():String
{
	if (flags["BESS_PC_SEX_NAME"] == undefined) flags["BESS_PC_SEX_NAME"] = pc.short;
	return flags["BESS_PC_SEX_NAME"];
}

public function bessCrewRole():String
{
	if (flags["BESS_CREW_ROLE"] == undefined) flags["BESS_CREW_ROLE"] = "crewmember"; // ??????
	return flags["BESS_CREW_ROLE"];
}

public function bessGlasses():Boolean
{
	if (flags["BESS_GLASSES"] != undefined) return true;
	return false;
}

public function bessHairStyle():String
{
	return flags["BESS_HAIRSTYLE"]; // should never be undef cause we set it during initial bess-lootership
}

public function bessIsDom():Boolean
{
	if (flags["BESS_SEX_ROLE"] == undefined)
	{
		flags["BESS_SEX_ROLE"] = 0);
		return false;
	}

	if (flags["BESS_SEX_ROLE"] == 1) return true;
	return false;
}

public function bessIsSub():Boolean
{
	if (flags["BESS_SEX_ROLE"] == undefined)
	{
		flags["BESS_SEX_ROLE"] = 0);
		return false;
	}

	if (flags["BESS_SEX_ROLE"] == 2) return true;
	return false;
}

public function bessIsEqual():Boolean
{
	if (flags["BESS_SEX_ROLE"] == undefined)
	{
		flags["BESS_SEX_ROLE"] = 0);
		return true;
	}

	if (flags["BESS_SEX_ROLE"] == 0) return true;
	return false
}

public function bessHairLength():String
{
	switch (bess.hairLength)
	{
		case 0:
		default:
			return "none";

		case 2:
			return "short":

		case 8:
			return "moderately long";

		case 18:
			return "shoulder length";

		case 40:
			return "ass length";

		case 60:
			return "floor length";
	}
}

public function bessNippleType():String
{
	var nipType:int = bess.breastRows[0].nippleType;

	switch (nipType)
	{
		case GLOBAL.NIPPLE_TYPE_FUCKABLE:
			return "fuckable";

		case GLBOAL.NIPPLE_TYPE_LIPPES:
			return "mouth";

		case GLOBAL.NIPPLE_TYPE_DICK:
			return "dick";

		case GLOBAL.NIPPLE_TYPE_FLAT:
			return "flat";

		case GLOBAL.NIPPLE_TYPE_INVERTED:
			return "inverted";

		case GLOBAL.NIPPLE_TYPE_TENTACLED:
			return "tentacle";

		case GLOBAL.NIPPLE_TYPE_NORMAL:
		default:
			return "normal";
	}
}

public function bessAssSize():String
{
	if (bess.buttRatingRaw < 2) return "boyish";
	if (bess.buttRatingRaw < 4) return "slender";
	if (bess.buttRatingRaw < 8) return "average";
	if (bess.buttRatingRaw < 10) return "ample";
	if (bess.buttRatingRaw < 16) return "voluptuous";
	return "massive";
}

public function bessThighSize():String
{
	if (bess.buttRatingRaw < 2) return "boyish";
	if (bess.buttRatingRaw < 4) return "slender";
	if (bess.buttRatingRaw < 8) return "average";
	if (bess.buttRatingRaw < 10) return "ample";
	if (bess.buttRatingRaw < 16) return "voluptuous";
	return "massive";
}

public function bessBellySize():String
{
	switch (bess.bellyRatingRaw)
	{
		case 0: return "normal";
		case 10: return "cushy";
		case 15: return "pudgy";
		case 20: return "large";
		case 30: return "pregnant";
		case 40: return "full";
		case 50: return "expansive";
		case 60: return "excessive";
		case 80: return "over-inflated";
		case 90: return "massive";
		case 100: return "stupidly huge";
		default: return "";
	}
}

public function bessTone():String
{
	if (bess.tone == 100) return "muscular";
	if (bess.tone == 70) return "semi-muscular";
	if (bess.tone == 50) return "average";
	if (bess.tone == 30) return "semi-soft";
	return "soft";
}

public function bessThickness():String
{
	if (bess.thickness == 100) return "thick";
	if (bess.thickness == 70) return "semi-thick";
	if (bess.thickness == 50) return "average";
	if (bess.thickness == 30) return "semi-thin";
	return "thin";
}

public function bessCockType():String
{
	if (!bess.hasCock()) return "";

	switch (bess.cocks[0].cType)
	{
		case GLOBAL.TYPE_HUMAN: return "normal";
		case GLOBAL.TYPE_SAURIAN: return "saurian";
		case GLOBAL.TYPE_EQUINE: return "equine";
		case GLOBAL.TYPE_CANINE: return "canine";
		case GLOBAL.TYPE_VULPINE: return "vulpine";
		case GLOBAL.TYPE_DEMONIC: return "demonic";
		case GLOBAL.TYPE_TENTACLE: return "tentacle";
		case GLOBAL.TYPE_FELINE: return "feline";
		case GLOBAL.TYPE_DRACONIC: return "draconic";
		case GLOBAL.TYPE_GOO: return "goo";
		case GLOBAL.TYPE_PLANT: return "plant";
		default: return "";
	}
}

public function bessCumFlavor():String
{
	switch (bess.cumType)
	{
		case GLOBAL.FLUID_TYPE_CUM: return "normal";
		case GLOBAL.FLUID_TYPE_CHOCOLATE_MILK: return "chocolate";
		case GLOBAL.FLUID_TYPE_CANDY: return "candy";
		case GLOBAL.FLUID_TYPE_COFFEE: return "coffee";
		case GLOBAL.FLUID_TYPE_VANILLA: return "vanilla";
		case GLOBAL.FLUID_TYPE_STRAWBERRY_MILK: return "strawberry";
		case GLOBAL.FLUID_TYPE_CARAMEL: return "caramel";
		case GLOBAL.FLUID_TYPE_BANANA: return "banana";
		case GLOBAL.FLUID_TYPE_COCONUT: return "coconut";
		case GLOBAL.FLUID_TYPE_MAPLESYRUP: return "maple syrup";
		case GLOBAL.FLUID_TYPE_CHERRY: return "cherry";
		case GLOBAL.FLUID_TYPE_CHOCVANILLA: return "choc-vanilla";
		case GLOBAL.FLUID_TYPE_WHISKY: return "whisky";
		case GLOBAL.FLUID_TYPE_HONEY: return "honey";
		case GLOBAL.FLUID_TYPE_RUM: return "rum";
		case GLOBAL.FLUID_TYPE_VODKA: return "vodka";
		case GLOBAL.FLUID_TYPE_BEER: return "beer";
		case GLOBAL.FLUID_TYPE_ORANGE: return "orange";
		case GLOBAL.FLUID_TYPE_BLUEBERRY: return "blueberry";
		case GLOBAL.FLUID_TYPE_RASPBERRY: return "raspberry";
		case GLOBAL.FLUID_TYPE_LIME: return "lime";
		default: return "normal";
	}
}

public function bessGirlCumFlavor():String
{
	switch (bess.girlCumType)
	{
		case GLOBAL.FLUID_TYPE_GIRLCUM: return "normal";
		case GLOBAL.FLUID_TYPE_CHOCOLATE_MILK: return "chocolate";
		case GLOBAL.FLUID_TYPE_CANDY: return "candy";
		case GLOBAL.FLUID_TYPE_COFFEE: return "coffee";
		case GLOBAL.FLUID_TYPE_VANILLA: return "vanilla";
		case GLOBAL.FLUID_TYPE_STRAWBERRY_MILK: return "strawberry";
		case GLOBAL.FLUID_TYPE_CARAMEL: return "caramel";
		case GLOBAL.FLUID_TYPE_BANANA: return "banana";
		case GLOBAL.FLUID_TYPE_COCONUT: return "coconut";
		case GLOBAL.FLUID_TYPE_MAPLESYRUP: return "maple syrup";
		case GLOBAL.FLUID_TYPE_CHERRY: return "cherry";
		case GLOBAL.FLUID_TYPE_CHOCVANILLA: return "choc-vanilla";
		case GLOBAL.FLUID_TYPE_WHISKY: return "whisky";
		case GLOBAL.FLUID_TYPE_HONEY: return "honey";
		case GLOBAL.FLUID_TYPE_RUM: return "rum";
		case GLOBAL.FLUID_TYPE_VODKA: return "vodka";
		case GLOBAL.FLUID_TYPE_BEER: return "beer";
		case GLOBAL.FLUID_TYPE_ORANGE: return "orange";
		case GLOBAL.FLUID_TYPE_BLUEBERRY: return "blueberry";
		case GLOBAL.FLUID_TYPE_RASPBERRY: return "raspberry";
		case GLOBAL.FLUID_TYPE_LIME: return "lime";
		default: return "normal";
	}
}

public static const BESS_AT_TAVROS:uint = 1;
public static const BESS_ON_CREW:uint = 2;

public function bessHeader():void
{
	if (bess.isFeminine())
	{
		showName("\nBESS-13");
		showBust("BESS");
	}
	else
	{
		showName("\nBEN-14");
		showBust("BEN")
	}
	author("JimT");
}

public function bessIsCrew():Boolean
{
	if (flags["BESS_LOCATION"] == BESS_ON_CREW) return true;
	return false;
}

public function bessTopStripScene():void
{
	if (bess.isChestGarbed()
	{
		//If bess is wearing armor
		if (!(bess.armor is EmptySlot))
		{
			// First brackets are if Bess is wearing any known outfit with a slide down top. Else she just removes the top (All her clothing items that aren't slide down have a removable top). 

			// E.g. if (bess.armor.shortName == "ShortKimono" || bess.armor.shortName == "Yukata" || bess.armor.shortName == "FemaleKimono" || bess.armor.shortName == "ChinaDress" || bess.armor.shortName == bess.armor.shortName == "NinjaOutfit" || bess.armor.shortName == "Yukata" || bess.armor.shortName == "NurseOutfit" || || bess.armor.shortName == "CheerleaderUniform" ||bess.armor.shortName == "GothLolita" || bess.armor.shortName == "LittleBlackDress")

			if
			(		bess.armor is ShortKimono
			||	bess.armor is Yukata
			||	bess.armor is FemaleKimono
			||	bess.armor is ChinaDress
			||	bess.armor is NinjaOutfit
			||	bess.armor is NurseOutfit
			||	bess.armor is CheerleaderUniform
			||	bess.armor is GothLolita
			||	bess.armor is LittleBlackDress
			)
			{
				output("\n\n[bess.name] reaches up to [bess.hisHer] neck and undoes [bess.hisHer] [bess.armor], sliding it down [bess.hisHer] body");
				if (bess.isFeminine()) output(" with a cute little wiggle");
				output(" until it is bunched around [bess.hisHer] waist.");
			}
			else
			{
				output("\n\n[bess.name] reaches up and slips off the top of [bess.hisHer] [bess.armor].");
			}
			output(" Underneath [bess.heShe]'s");
			if (bess.upperUndergarment is EmptySlot) output(" completely naked and");
			else output(" wearing a [bess.upperUnderGarment]. [bess.HeShe] removes it and soon");
			output(" [bess.hisHer] [bess.chest]");
			if (bess.biggestTitSize() == 0) output(" is");
			else output(" are");
			output(" proudly on display.");
		}
		// B is wearing no armor, but undergarment that covers the top.
		else if (!(bess.upperUndergarment is EmptySlot))
		{
			output("\n\n[bess.HisHer] [bess.chest]");
			if (bess.biggestTitSize() == 0) output(" is");
			else output(" are");
			output(" barely constrained by [bess.hisHer] [bess.upperUndergarment]. [Bess.heShe] slips it off and tosses it aside. [bess.HisHer] beautiful, naked body is now on display as [bess.heShe] stands there wearing nothing");
			if (!(bess.lowerUndergarment is EmptySlot)) output(" but a pair of [bess.lowerUnderGarment] clinging to [bess.hisHer] [bess.hips].");
			else output(" at all.");
		}
	}
}

public function bessAffection(val:Number = 0):Number
{
	if (flags["BESS_AFFECTION"] == undefined) flags["BESS_AFFECTION"] = 0;
	
	if (val != 0)
	{
		flags["BESS_AFFECTION"] += val;
		if (flags["BESS_AFFECTION"] < 0) flags["BESS_AFFECTION"] = 0;
		if (flags["BESS_AFFECTION"] > 100) flags["BESS_AFFECTION"] = 100;
	}

	return flags["BESS_AFFECTION"];
}

public function findingBessBonusFunc():Boolean
{
	if (flags["BESS_IN_RUBBLE"] == undefined)
	{
		output("\n\nThere is a strange silver glint over in a large pile of junk. It is completely out of place with the rusted rubbish surrounding it. Maybe it is something valuable?");
		//[ Silver Object ]
		addButton(0, "Silver Object", findASilverObject, undefined, "Silver Object", "Investigate the silver object.");
	}
	return false;
}

//Silver Object {If clicked on}
public function findASilverObject():void
{
	clearOutput();

	output("You abandon caution for curiosity and inch closer towards the silvery object.");
	output("\n\nAs you close in, you realise two things. One, it is much larger than it first appeared. Two, the shape of the part that is sticking out is easy to identify.");
	output("\n\nIt’s a foot. Why is a silvery foot poking out of a pile of half-broken pipes and shattered holos?");
	output("\n\nIt looks like a machine foot, to boot. On further examination, the foot is connected to a body, and the body is buried beneath the rubbish.");
	//ifRunIntoPleasureBots: 
	if(flags["MET_SEXBOTS_ON_TARKUS"] != undefined) output(" It looks far too sleek looking to be one of the Pleasure Bots that aimlessly roam the Tarkus wastes.");
	output(" From what you can see it doesn’t look rusted, or even slightly scratched, adding even more to the air of mystery surrounding it.");
	//SydiansMet:
	if(flags["MET_SYDIAN_MALE"] != undefined) output(" You can't believe the Sydians haven't melted this thing down yet.");
	output("\n\nWhat kind of foot is it...?");

	clearMenu();
	//[Synthetic Female Foot] [Synthetic Male Foot]
	// This choice sets Bess/Ben's gender flag to female or male, respectively, and sets all the starting body values. 
	addButton(0,"Female Foot",setBessSex,"female","Female Foot","The synthetic foot obviously belongs to a female. Everyone knows you can tell the assumed gender of an inorganic by the shape of its ambulatory limbs!");
	addButton(1,"Male Foot",setBessSex,"male","Male Foot","The synthetic foot obviously belongs to a male. Everyone knows you can tell the assumed gender of an inorganic by the shape of its ambulatory limbs!");
}

//Either Choice
public function setBessSex(bessesStartingSexHahaThatsNotHowYouWriteAPossessive:String = "female"):void
{
	clearOutput();
	output("On closer examination, it definitely looks like a " + bessesStartingSexHahaThatsNotHowYouWriteAPossessive + " foot. The real question though is if you want to dig this thing up and see what it is...?");
	if(bessesStartingSexHahaThatsNotHowYouWriteAPossessive == "female")
	{
		bess.configureFemale();
	}
	else
	{
		bess.configureMale();
	}
	//[ Dig It Up ] [ Leave It ]
	clearMenu();
	addButton(0,"Dig It Up",digUpBessBenWhoCares);
	addButton(14,"Leave",mainGameMenu);
}

//Dig It Up
public function digUpAFukkinSexbat():void
{
	clearOutput();
	output("Curiosity gets the better of you as you decide to dig it up. Getting rid of all the junk on top of it is a quick and easy process.");
	output("\n\nSoon a silvery humanoid body, distinctly " + bess.mf("masculine","feminine") + " and covered in segmented lines, is revealed amongst the rubble. An incredibly shapely rear is glinting back up at you, connected to " + bess.mf("manly","womanly") + " thighs and hips of glistening chrome.");
	output("\n\nWhat a butt! You can't help but reach out and poke it, just to see if it is real. For <i>exploratory</i> purposes, of course.");
	output("\n\nAs you touch [bess.his] silvery rump, you find it is ");
	if(bess.hasCock()) output("delightfully taught with a tiny bit of give,");
	else output("surprisingly soft");
	output(" and sensuously smooth.");
	if(bess.hasCock()) output(" You poke elsewhere, and what");
	else output(" What");
	output(" looks like chrome metal plating is actually quite pliant and springy, just like the flesh of a human. The detail work is amazing!");
	output("\n\n Even so, it is quite clearly a mechanical life form, complete with visible rivets along [bess.hisHer] spine. There is even a registration number stamped right above ");
	if(bess.hasVagina()) output("her pert");
	else output("his incredibly fine");
	output(" ass like a robotic tramp stamp. You read it out loud.");

	output("\n\n<i>“" + bess.mf("Ben Fourteen","Bess Thirteen") + ".”</i> The rest of the registration number is scratched out. Is that [bess.hisHer] model number, [bess.hisHer] actual name, or is [bess.heShe] literally the " + bess.mf("fourteenth","thirteenth") + " of a line of " bess.mf("Bens","Besses") + "?");

	output("\n\nSince you're not going to get any answers from staring at [bess.hisHer] ass - no matter how perfect it is - you decide to turn [bess.himHer] over and get a good look at [bess.hisHer] other side. Maybe there are some more details there.");

	if (bess.hasVagina())
	{
		output("\n\nOnce you have, you notice her silvery artificial hair draping across her face. It is tied back in a loose, messy chignon, knotted at her lower neck. Her eyes are closed, full womanly lips pursed as if merely asleep.");
		output("\n\nThose sleeping eyes are lined with thick artificial lashes that are marred with dirt, but even now look full and luscious. Her face is marked with two groove-like lines that start at her forehead, trail across her eyelids, and pass below her narrow chin.");
		output("\n\nLooking down, your eyes are met by a truly wondrous set of breasts. The swelling curve of her perfect peaks easily captures your attention, drawing them inevitably towards her perky, silver hued nipples.");
		output("\n\nDrawing your eyes away from <i>those</i> is difficult. Looking down, her stomach is a slender sterling expanse, her belly rising softly with all the right curves and grooves accentuating her feminine appeal.");
		output("\n\nMoving south, your eyes are rewarded by the sight of her glistening, utterly hairless crotch replete with plump pussy lips. Her thighs and folds are slightly parted, her soft inner lips on display.");
	}
	else // man bot!
	{
		output("\n\nOnce you have, you notice his silvery artificial hair slicked back. What would normally be thick chin length hair has been pushed back in a sweeping wave, giving his hair great lift. His eyes are closed and his rich, kissable lips are pursed as if merely asleep.");
		output("\n\nThose sleeping eyes are lined with powerful, brooding brows that look capable of a great deal of interesting expressions. His well shaped cheeks are marked with two groove-like lines that start at his forehead, trail down his eyelids, and pass below his narrow chin.");
		output("\n\nLooking down, you are met with broad masculine shoulders and a positively adonic chest, the kind you could run your fingers up and down for <i>hours</i>. His preposterously perfect chest is capped in silver hued nipples.");
		output("\n\nDrawing your eyes away from <i>that</i> is difficult. Looking down, his abs are a wondrous expanse of muscular curves, each one accentuating his masculine appeal. With bated breath, you let your eyes travel lower, seeking the sight of his most manly aspect.");
		output("\n\nYour eyes are quickly rewarded with the sight of his gloriously thick manhood. It looks humanoid apart from its sterling color, though in no way could be called average. It towers upwards and presses pointedly against his taut stomach, enticingly stiff in his slumber.");
		output("\n\nHis silvery spheres are completely hairless, just like the rest of him. It’s as if he’s a well-shaved model lying back in his brazen glory, showing off his truly envious features.");
	}
	output("\n\nEverything about this silvery synthetic is ‘too perfect’, screaming artificial. " bess.mf("Men", "Women") + " this beautiful aren’t born, they’re built- either through engineering or through genetic enhancement.");
	output("\n\nOne thing’s for certain; [bess.heShe] must have cost a <i>mint</i> to make. [bess.HisHer] detail work makes the other robots on Tarkus look like, well, trash. Why would someone throw a galactic class android like this out? [bess.HeShe] might even be worth as much as a <i>starship</i>.");
	output("\n\nReaching up to [bess.hisHer] open neck compartment, you can see a small digital display. Flickering across it are three words: <i>Main Power Depleted</i>. It doesn’t take a starship engineer to figure out why [bess.heShe] isn’t moving.");
	output("\n\nIf cleaned up, this " + bess.mf("male", "female") + " unit would definitely sell for a pretty Galactic Credit, or you could keep [bess.himHer] for your own use. Either way, [bess.heShe] needs to have [bess.hisHer] batteries recharged, and the easiest way to do that is to take [bess.himHer] back to your ship.");
	output("\n\nFinding [bess.himHer] really is like finding a gem in the rough, though you could just leave [bess.himHer] here. It doesn’t look like [bess.heShe] is going to rust anytime soon.");
	//[Take On Ship] [Leave Here] 
	processTime(7);
	clearMenu();
	addButton(0,"TakeToShip",takeBessToZeShip);
	addButton(1,"Leave Here",leaveBessHereYouCunt);
}

//Taking him/her to the Ship
//Take On Ship
public function takeBessToZeShip():void
{
	currentLocation = "SHIP INTERIOR";
	flags["BESS_IN_RUBBLE"] = 1; // shit flag name sue me
	
	clearOutput();
	if (bess.hasVagina())
	{
		output("It’s a good thing the female unit is so light - it takes you far less time to get her back to the ship than you first thought. She’s so soft to the touch that it is hard to believe she’s really a machine.");
	}
	else // male
		output("Carrying the male unit back to the ship takes quite a lot of effort. Having him pressed against your chest causes you to flush a little. His skin is so smooth, and his assets so detailed, it's hard to believe that he's really a machine and not an organic man.");
	output("\n\nLuckily, you’re not attacked by any natives on the way back to Novahome. You’re pretty sure you wouldn’t have been able to put up a proper fight carrying the synthetic.");
	output("\n\nOnce you return to the ship, it is simply a matter of locating [bess.hisHer] power slot. Placing [bess.himHer] down in the cargo bay, you check over [bess.hisHer] body for anything that stands out. Right above [bess.hisHer] rump is a barely perceivable line that looks somewhat suspicious.");
	output("\n\nAfter working it for a bit with some tools, you are able to pop it open. The second you do, something shoots out like a snake exploding from a can. It happens so suddenly you fall back on your ass, reaching immediately for a wrench.");
	output("\n\nWhen you collect yourself you can see a five foot snake-like appendage now protruding from just above [bess.hisHer] rear. It is dancing through the air like a cobra to a flute, apparently searching for something.");
	output("\n\nNow that you’ve got a moment to examine it - and it doesn’t seem immediately threatening - you notice the head of the prehensile extension is incredibly phallic. While its body is tubular and flexible, the end is long, stiff, and ribbed. The very tip is flared just like a human member.");
	output("\n\nDespite its appearance you see [bess.hisHer] neck compartment flashing with the words <i>power source found.</i>. Suddenly it shoots into one of the nearby power ports. At first it doesn’t look like it will fit, but then the mysteriously phallic head adjusts itself and expands to fit the coupling.");
	output("\n\nAll in all, the entire process is pretty suggestive. That coupler can’t be <i>coincidentally</i> shaped that way, can it?");
	output("\n\nYou’re glad that you don’t have to find one to fit the android, since [bess.heShe] apparently has one of [bess.hisHer] own. Convenient. Checking the side of [bess.hisHer] neck, you see [bess.heShe] is now in charging mode.");
	output("\n\nYou leave [bess.himHer] for a while and wander the ship. There’s really no point hanging around until [bess.heShe]’s fully restored.");
	processTime(120 + rand(40));
	clearMenu();
	addButton(0,"Next",plugBessesFatAssInPartII);
}

//[Next]
public function plugBessesFatAssInPartII():void
{
	clearOutput();
	output("Your Codex bleeps at you when the unit is apparently finished charging. You finish your drink and head back down to the cargo bay.");
	output("\n\nWhen you get there, the " + bess.mf("male", "female") + " android is already retracting the coupling cable out of the wall with a satisfied sigh. As [bess.heShe] stands upright it slides back inside [bess.hisHer] body and disappears completely from sight.");
	output("\n\nYou can hear [bess.hisHer] rear compartment closing with a small clicking noise.");
	output("\n\nStriding into the room, you have your [pc.weapon] pointed at her for good measure. After all, [bess.heShe] may have been dumped on Tarkus for good reason.");

	output("\n\nWhen the silver-haired synthetic notices you entering the room, " + bess.mf("he elegantly bows to you, almost as he were a butler or maitre d’", "she immediately bows to you, her hands clasped together in front of her body") + ". [bess.HeShe] seems unphased not only by your weapon, but also by the fact that [bess.heShe] is completely nude.");
	if (bess.isFeminine())
	{
		output("\n\nWhen she speaks, her voice is positively melodic, each note lilting and falling at all the right places without a hint of synthesising, like a well-composed sonnet.");
	}
	else
	{
		output("\n\nWhen he speaks, his voice is rich and full of timbre, far from the synthesized voice of typical androids. Instead, it sounds full and flavorsome, like a well composed sonnet.");
	}
	output("\n\n<i>“Greetings, [pc.Master]! Thank you for purchasing this unit from JoyCo, the number one galactic seller of medical supplies and high-quality assist-bots!”</i> " + bess.mf("He sounds remarkably upbeat", "She sounds surprisingly happy") + " for someone who was just fished out of a junk pile. <i>“JoyCo hopes you enjoy your purchase, since your pleasure is our pleasure!”</i>");
	output("\n\nYou ask exactly <i>who</i> and <i>what</i> [bess.heShe] is, and <i>why</i> [bess.heShe] is calling you ‘[pc.Master]’. There are an awful lot of ‘w’ questions that need to be answered until you put down your weapon.");
	output("\n\nThe " + bess.mf("male","female") + " android looks a little confused. <i>”</i>[pc.Master], I don’t have a name yet - you haven’t given me one. " + bess.mf("I’m the Breeding Emergency Neutralizer Android Model No.14, or Ben-14,", "I’m the Breeding Emergency Sex Substitute Android Model No.13, or ‘Bess-13’,") + " that you ordered from JoyCo. You know, the one designed to relieve your pent-up breeding needs?”</i>");
	output("\n\nIt seems [bess.heShe] has been reset to [bess.hisHer] factory settings, and now [bess.heShe] thinks you are [bess.hisHer] registered owner. Either that, or [bess.heshe] was fresh out of the box to begin with. Could you be lucky enough to have found your very own high-class, brand-spanking new JoyCo sex relief android?");
	// Silly Mode && bess.gender = female
	if(silly && bess.isFeminine()) output("\n\n...Somewhere, there’s a very unhappy looking Japanese boy, waiting for his girlfriend to arrive...");
	output("\n\nHmm. What to do with [bess.himHer]? You could keep [bess.himHer], give [bess.himHer] a name and have [bess.himHer] live on your ship. [bess.HeShe]’s sure to do whatever you say. Having one on your ship could prove advantageous, especially with the lusty aliens you keep encountering.");
	if(silly) output(" It’s like your life is some kind of <i>sex game</i>....");
	output("\n\nIf you ditch [bess.himHer] back on the planet, [bess.heShe]’d probably just be food for the natives. That, or [bess.heShe]’d become another mindless drone wandering the wastes, albeit a ritzy one. Then again, dumping [bess.himHer] could save a lot of trouble down the line.");
	output("\n\nGiven that [bess.heShe]’s a galactic class unit, you could probably get some major credits even with [bess.hisHer] registration number scratched off. You wouldn’t get anywhere near [bess.hisHer] commercial price. Best case scenario, you get a nice five figure sum, since [bess.heShe]’s obviously stolen property.");
	output("\n\nYou could do your civic duty and call up the U.G.C. to hand [bess.himHer] in. After all, if [bess.heShe]’s been taken from someone, they’ll probably want [bess.himHer] back. Of course, [bess.hisHer] owner could have been the one who left [bess.himHer] on Tarkus to begin with. Seems unlikely they’d scratch off [bess.hisHer] code, though.");
	output("\n\nIn old Terran movies, this is probably the part where the " + pc.mf("hero","heroine") + " offers the android freedom to show how nice they are. ");
	if(pc.isNice()) output("You could do that, since that’s usually your style.");
	else if(pc.isMischievous()) output("You wouldn’t call yourself ‘nice’, but you’re not an outright asshole either.");
	else output("That doesn’t sound like you at all.");

	output("\n\nYou could also opt to keep [bess.himHer], but have [bess.himHer] stay in your hangar bay at Tavros Station. After all, a high-quality sex bot doesn’t just fall into your lap every day....");
	//if (GiannaFollowerYes)
	if(flags["GIANNAFOLLOWER"] == 9999) output(" Well, except for Gianna. Actually, this is becoming a bit of a habit.");

	//[Keep On Ship*] [Sell Off] [Hand To Authorities] [Dump Them] [Release] [Keep At Tavros]
	//* Only if there is room.
	processTime(48);
	decisionTimeForBessMenu();
}

public function decisionTimeForBessMenu():void
{
	clearMenu();
	addButton(0,"KeepOnShip",keepBessYouSloot);
	addButton(1,"Sell Off",sellOfBessDatWhore);
	addButton(2,"Authorities",handBessOverToAuthorities);
	addButton(3,"Dump Them",dumpTheBessBot);
	if(flags["TRIED_TO_GIVE_BESS_FREEDOM"] == undefined) addButton(4,"Release",releaseBessBenWhatever);
	else addDisabledButton(4,"Release","Release","Your new robotic friend doesn't seem to understand the idea of freedom.");
	addButton(5,"KeepAtTavros",waitAtTavrosBess);
}

//Sell Off
public function sellOfBessDatWhore():void
{
	clearOutput();
	output("You decide you’d rather sell [bess.himHer] on the black market for some quick credits than keep [bess.himHer]. After making a discreet listing on the extranet, you eventually find a willing buyer for your Bess-13 unit.");
	output("\n\nThe handoff takes place in a secluded section of a nearby planet, barren enough to land the ship and avoid any contact with any locals. When you get to the meeting place, another starship is already waiting for you. ");
	output("\n\nThe hull of the spacecraft has clearly seen better days; either the owner is blowing more money on your " + pc.fm("Bess","Ben") + " Unit than on their starship, or they actually like it looking like a flying garbage heap.");
	output("\n\nThe owner of the ship is just as pleasant to look at as his starship is. Coming out to meet you and wringing their hands all the while, he hardly makes eye contact. He’s far too busy ogling the merchandise.");
	output("\n\n<i>“Nice, nice. Hard to get one of these for anything less than mega-creds. What did you do, steal [bess.himHer] from a hospital? Don’t answer that, I don’t want to know.”</i> The buyer gives you a near-toothless grin.");
	output("\n\nCredits are exchanged, no names, and soon you’re 10,000 credits richer. It’s sub-light robbery - [bess.heShe]’s worth <i>at least</i> an extra zero - but there are no questions asked and you’re wealthier than before you found it.");
	output("\n\nAfter concluding your business, you head back to Tarkus, wiping the flight path and history from your spaceship computer.");
	//Appear back in Spaceship, story path ended. { Add 10,000 credits to PC’s credit score } 
	pc.credits += 10000;
	flags["SOLD_BESS"] = 1;
	flags["BESS_DISABLED"] = 1;
	processTime(2040);
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

//Hand To Authorities
public function handBessOverToAuthorities():void
{
	clearOutput();
	output("Deciding that the sex-bot doesn’t belong to you and you should probably hand [bess.himHer] over to authorities, you ring and arrange for [bess.himHer] to be picked up. You’re surprised a U.G.C. official is actually going out of their way to Tarkus to pick up a sex bot.");
	output("\n\nWhen the official shows up in the Novahome docking bay, you find out why. Apparently there’s a standing order for all " + bess.fm("Bess-13","Ben-14") + " Unit AIs put out by JoyCo. It seems you’re entitled to a bounty for bringing the <i>“dangerous sex bot”</i> in.");
	output("\n\nLooking at [bess.hisHer] confused eyes as you hand [bess.himHer] over, it’s hard to imagine [bess.heShe]’s a danger. Still, it seems you dodged a bullet by turning [bess.himHer] in. Not only that, apparently owning a AI version of the units is considered a criminal offense.");
	output("\n\nThe U.G.C. official leaves with the " + bess.mf("Ben-14", "Bess-13") + " unit, and soon after you are wired 2,500 credits by JoyCo. Seems things wrapped up pretty nicely.");
	pc.credits += 2500;
	flags["BESS_GIVEN_TO_UGC"] = 1;
	flags["BESS_DISABLED"] = 1;
	processTime(2040);
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

//Release 
public function releaseBessBenWhatever():void
{
	clearOutput();
	output("You tell the " + bess.mf("male", "female") + " synthetic that [bess.heShe] is free to do as she pleases, and that you are not [bess.hisHer] [pc.Master]. It seems like the right thing to do.");
	output("\n\nHowever, [bess.heShe] seems to have difficulty processing what you are saying, almost as if you were speaking a foreign language.");
	output("\n\n<i>“What do you mean, [pc.Master]? I am a " + bess.mf("Ben-14", "Bess-13") + " unit, and I belong to you! I am your personal unit. I am not designed to belong to myself.”</i> " + bess.mf("He furrows his brow, looking perplexed by your statement", "Her voice seems to quiver a little") + ". The concept of not belonging to someone seems to be outside of [bess.hisHer] programming.");
	output("\n\nWhat exactly are you going to do? [bess.HeShe]'ll probably get caught in a logic loop if you push the point.");
	//Once off +5 to Nice Score. Non-repeatable event.
	pc.addNice(5);
	flags["TRIED_TO_GIVE_BESS_FREEDOM"] = 1;
	processTime(1);
	//menu with release grayed out.
	decisionTimeForBessMenu();
}
 
//Dump Them
public function dumpTheBessBot():void
{
	clearOutput();
	output("Rather than keep the silver android, you decide that it’s best just to kick [bess.himHer] off your ship and let [bess.himHer] aimlessly wander Tarkus now that you’ve activated [bess.himHer]. Someone else can deal with [bess.himHer] - it’s just too much trouble.");
	output("\n\nDespite her pleas, you shove [bess.himHer] in the airlock and vent [bess.himHer] out, sending [bess.himHer] flying out into a pile of junk. In the end [bess.heShe]’s just an object only pretending to have feelings – no different to the broken holos and pieces of pipe littering the whole crappy planet.");
	output("\n\nThings are nice and quiet after that.");
	//Appear back in Spaceship, Story path ended. +5 to Asshat Score.
	processTime(10);
	pc.addAss(10);
	currentLocation = shipLocation;
	flags["BESS_DISABLED"] = 1;
	flags["BESS_DUMPED_INTO_SPAAAAAAACE"] = 1;
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

//Tavros Station
public function waitAtTavrosBess():void
{
	clearOutput();
	output("You decide you don’t have a place for [bess.himHer] on the ship at the moment and you don’t want to get rid of [bess.himHer]. You do have a space dock at Tavros Station though.");
	output("\n\nIt is a bit out of your way, but you fly all the way back and drop [bess.himHer] there for the time being. That way, you can pick her up once you know what you want to do with [bess.himHer].");
	output("\n\nThe " + bess.mf("Ben-14", "Bess-13") + " unit has been dropped at Tavros Station! You can pick [bess.himHer] up later if you want to have [bess.himHer] join your crew.");
	//See Tavros Station section for more information.
	processTime(2040);
	currentLocation = shipLocation;
	flags["BESS_LOCATION"] = BESS_AT_TAVROS;
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

//Keep [bess.HimHer] - Leads to Tutorial Section.
public function keepBessYouSloot():void
{
	clearOutput();
	flags["BESS_LOCATION"] = BESS_ON_CREW;

	//Tutorial / Configure 
	output("You decide that you’ll take [bess.himHer] along after all. You don’t really want to leave [bess.himHer] on Tavros, and you don’t want to get rid of [bess.himHer] either.");
	if (pc.isNice()) output(" <i>“Plus, it kind of seems mean to leave her alone in your hanger just because [bess.heShe]’s an android”</i>.");
	else if (pc.isMischievous()) output(" <i>“Plus it might be kind of fun to add [bess.himHer] to your crew.”</i>");
	else output(" <i>“Besides, you need every edge you can get if you’re going to find that hidden treasure stash.”</i>");
	//Nice:
	if(pc.isNice()) output("\n\n<i>“I guess I’ve got a new crewmate. Welcome aboard!”</i> You smile warmly, happy to have another crew member on your ship.");
	//Misc:
	else if(pc.isMischievous()) output("\n\n<i>“Sure, why not? I’ve got room for another crew member. Welcome aboard!”</i> You welcome [bess.himHer] on a whim, though you’re sure it will all work out for the best.");
	//Hard:
	else output("\n\n<i>“Do whatever you want, just don’t cause any trouble or you’re off the ship.”</i> You sternly warn [bess.himHer], making sure the message is received loud and clear.");
	output("\n\nThe silver haired synthetic" + bess.mf("’s eyes light up and he gives a dutiful bow", " flushes and bows") + ", <i>“You’re too kind, [pc.Master]. Just think of me as yours to do with what you will.”</i>");
	output("\n\n[Bess.HeShe] then pauses and looks at you with patient, " + bess.mf("questioning", "hopeful") + " eyes, as if waiting for you to say something else. " + bess.mf("He even coughs politely, as if trying to awkwardly bring your attention to something.", "It reminds you of a girl at a social function waiting to be asked to dance."));
	output("\n\nYou ask [bess.himHer] exactly what [bess.heShe]’s waiting for, and [bess.heShe] gives a rather animated blink. It’s hardly that of a pre-programmed VI.");
	output("\n\n<i>“My name, [pc.Master]. I don’t have an official designation yet.”</i> It seems [bess.heShe] needs a name of some sort, and you’re supposed to give [bess.himHer] one.");
	clearMenu();
	addButton(0,"Next",nameBessForRealsies);
}

public function nameBessForRealsies():void
{
	clearOutput();
	output("What do you decide to name her?");
	displayInput();
	this.userInterface.textInput.text = chars["BESS"].mf("Ben","Bess");
	//(Default Name: {if (bess.gender = female) <i>“Bess”</i>}{else: <i>“Ben”</i>}");
	clearMenu();
	addButton(0, "Next", nameBessProcessing);
}

public function nameBessProcessing():void
{
	if(this.userInterface.textInput.text == "") {
		output("<b>You must input a name.</b>");
		return;
	}
	chars["BESS"].short = this.userInterface.textInput.text;
	if(stage.contains(this.userInterface.textInput)) 
		this.removeInput();
	nameBessResult();
}

//Entered name becomes string value [bess.name]
public function nameBessResult():void
{
	clearOutput();
	bessHeader();

	output("<i>“Thank you for my name, [pc.Master]. I am now called [bess.name]!”</i> [bess.name] sounds delighted with [bess.hisHer] new name, though [bess.heShe]’s probably happy to have a name in general. <i>“I look forward to servicing your reproductive needs in the near future.”</i>");
	output("\n\nYou ask exactly what functions [bess.name] comes equipped with, noting that [bess.heShe] doesn’t look like [bess.heShe]’s made of a regular kind of alloy.");
	output("\n\n[bess.name] comes quite lively when you observe that, since [bess.heShe] clearly takes pride in [bess.hisHer] design specs.");
	output("\n\n<i>“You’re very observant, [pc.Master]! All " + bess.mf("Ben-14", "Bess-13") + " units are built using FlexMetal, a patented creation exclusive to JoyCo. This material is softer than organic flesh and ten times more flexible, allowing me to change my form in specific ways.”</i> ");
	output("\n\nYou ask what kind of specific way [bess.heShe] can shift [bess.hisHer] body about.");
	output("\n\n<i>“My insides are filled with a liquid called MeldMilk. By increasing or decreasing the amount in certain parts of my body, my form can be inflated or deflated to tailor my appearance to my [pc.Master]’s tastes,”</i> [bess.name] informs you.");
	output("\n\n<i>“I can retract, grow or recolor my hair, change eye color or grow appendages in order to fulfill your sexual needs. I also have several special modes that can be activated or deactivated, such as sexual roles or the flavor of my cum.”</i>");
	output("\n\n<i>“You can also purchase certain special modifications, clothes, and accessories for me through the JoyCo catalogue. These items will be delivered to you within one to three earth days, excluding public holidays and weekends.”</i>");
	output("\n\nAfter [bess.hisHer] lengthy explanation of [bess.hisHer] various features, [bess.name] takes a deep breath. It’s probably a programmed gesture, since [bess.heShe] doesn’t actually <i>need</i> to breathe.");
	output("\n\n<i>“I doubt I’m your perfect mate fresh out of the box, so feel free to change my settings at any time. I’ve got a lot of them, so please be patient with me.”</i> [bess.name] then bows in a very " + bess.mf("well-mannered way", "subservient manner") + ". <i>”</i>... I look forward to serving your needs, [pc.Master]!”</i>");
	//Appear back in ship with Bess added to the Followers menu. 
	processTime(2);
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

//Bess/Ben’s Room
public function followerBessRoom():void
{
	clearOutput();
	bessHeader();

	//if (Bess/Ben Event 11 completed)
	if(flags["BESS_EVENT_11"] != undefined)
	{
		output("The quarters of your ship’s "+ bessCrewRole() +" are a lot more expressive than they used to be. The room is full of polished wooden furniture and beautiful decor. [bess.HeShe]’s made it look more like a room in a house than a starship cabin.");
		
		output("\n\nOn a chest of drawers is vase filled with white asiatic lilies, pink roses, and purple statice. It looks and smells truly breathtaking. On the walls are paintings of planetary landscapes, an assortment of exotic and beautiful locales.");

		output("\n\nAlmost every wall in [bess.hisHer] room has rows of retractable bookshelves built in, in order to contain [bess.himHes] massive book collection. [bess.HeShe] also has a sizable collection of holos. In order to watch them, [bess.heShe] has had a holo-projector built into the wall so[bess.heShe] can watch them in bed.");
	}
	else
	{
		output("[bess.name]'s room is fairly depressing. If you didn't know any better, you'd think it was a small cargo hold. The best thing it has to offer are freely available power ports and a large built in wardrobe.");
	}

	if(flags["BESS_EVENT_4"] != undefined && flags["BESS_EVENT_11"] == undefined)
	{
		output("\n\nPiles of holos and books have recently begun to fill the room. Even though [bess.heShe] can’t afford shelves - since [bess.heShe] doesn’t have a real job - each stack is perfectly categorized by genre and in alphabetical order. [bess.HeShe]’s even moved a holo-projector into [bess.hisHer] room.");
	}
	
	if(flags["BESS_FRIEND"] == 1)
	{
		output("\n\nOn [bess.hisHer] bedside table are two of [bess.himsHer] favorite books, ‘The Hobbit' and ‘Do Androids Dream of Electric Sheep?’ [bess.HeShe] loves them so much they never make it back to the shelves.");
	}

	if(flags["BESS_EVENT_2"] != undefined && flags["BESS_EVENT_4"] == undefined)
	{
		output("\n\nRecently [bess.hisHer] room has begun to fill with holos, and [bess.heShe]’s even moved in a holo-projector. It seems [bess.heShe]’s taking [bess.hisHer] research quite seriously.");
	}

	if(flags["BESS_EVENT_11"] != undefined)
	{
		output("\n\nDominating the room is a king-sized four-poster bed with perfectly kept silky sheets. It is by far the most luxurious item in the room.");
	}
	else
	{
		output("\n\nThere is a double bed in the middle of the room, the sheets are in pristine condition. It doesn’t look like [bess.heShe] sleeps in it, it seems to be there for administering ‘sexual relief’.");
		output("\n\nThe room itself is very spacious, and that makes the lack of furniture and personal effects even more evident. [bess.HeShe] is an AI after all and has very little physical needs.");
	}

	clearMenu();
	addButton(0, "Approach", approachFollowerBess);
	addButton(4, "Leave", mainGameMenu);
	// Just a suggestion - maybe an option in the room to deactivate Bess/Ben's picture portrait? Might irk some people that the pic doesn't match the dialogue, but they might not want to deactivate *all* the pics. This way the option isn't always in your face, either.
}

//Greeting Dialogues
public function approachFollowerBess():void
{
	// Dialogues initiated by hitting the [bess.name] button under companions. Or if they has a button under the normal ship stuff. Wherever you place it - just probably not in their room for story/sex consistency reasons.
	clearOutput();
	bessHeader();

	if (flags["BESS_LOVER"] == 1)
	{
		if(bessAffection() >= 90)
		{
			output("[bess.name] grins as soon as [bess.heShe] sees you, " + bess.fm("leaping into your arms","scooping you into his arms") + " and giving you a long, sensual kiss. </i>\"... Mmmm, "+ bessPCName() +"! Have I told you how much I love you today? I'll tell you once more, just in case you forgot.\"<i> [bess.HisHer] [bess.eyes] are gleaming");
			if (bessGlasses()) output(" through [bess.hisHer] glasses");
			output(" with happiness.");
		}
		else if(bessAffection() >= 70)
		{
			output("[bess.name] wraps [bess.hisHer] arms around you, giving you a hello kiss, <i>“... Greetings, "+ bessPCName() +". Come to see me have you?”</i> [bess.HeShe] asks, peering at you");
			if(bessGlasses()) output(" through [bess.hisHer] glasses");
			output(".");
		}
		else if(bessAffection() >= 50)
		{
			output("[bess.name] wraps [bess.hisHer] arms around you, giving you a hello kiss, <i>“... Greetings, "+ bessPCName() +". Come to see me have you? It's about time!”</i> [bess.HeShe] exclaims");
			if(bessGlasses()) output(", peering at you over [bess.hisHer] glasses");
			output(".");
		}
		else if(bessAffection() >= 30)
		{
			output("[bess.name] wraps [bess.hisHer] arms around you, looking very serious, <i>“... "+ bessPCName() +"... have I done something wrong? It feels like you're drifting further away from me, you never visit anymore... have I done something wrong?”</i> [bess.HisHer] eyes " + bess.fm("are wavering","look pained"));
			if(bessGlasses()) output(" behind [bess.hisHer] glasses");
			output(".");
		}
		else
		{
			output("[bess.name] looks at you " + bess.fm("meekly","in distress") + ", [bess.hisHer] expression completely downtrodden. <i>“... Oh, you're here "+ bessPCName() +"... do... do you still love me? You're gone all the time, I never see you anymore...”</i> [bess.HisHer] eyes " + bess.fm("are tearing up","look truly agonized");
			if(bessGlasses()) output(" behind [bess.hisHer] glasses");
			output("."); 
		}
	}
	else if (flags["BESS_FRIEND"] == 1)
	{
		if (bessAffection() >= 50)
		{
			output("[bess.name] runs " + bess.fm("at you","up to you") + ",giving you a massive hug. <i>“... "+ bessPCName() +"! How goes my best friend in the galaxy? Great, I hope!”</i> [bess.heShe] exclaims " + bess.fm("excitedly","brightly"));
			if(bessGlasses()) output(", eyes shining behind [bess.hisHer] glasses");
			output(".");
		}
		else if(bessAffection() >= 25)
		{
			output("[bess.name] runs " + bess.fm("at you","up to you") + ", giving you a massive hug. <i>“... "+ bessPCName() +"! How goes my best friend in the galaxy? You've been gone </i>so long<i>, tell me what you've been doing!”</i> [bess.heShe] exclaims cheerily");
			if(bessGlasses()) output(", eyes shining behind [bess.hisHer] glasses");
			output(".");
		}
		else
		{
			output("[bess.name] walks up to you, looking a little downtrodden. <i>“... Hey "+ bessPCName() +", we're still friends right? I never see you anymore... did I do something wrong?”</i> [bess.HisHer] eyes are " + bess.fm("visibly wavering","look a bit strained"));
			if(bessGlasses()) output(" behind [bess.hisHer] glasses");
			output(".");
		}
	}
	else
	{
		output("[bess.name] wanders up, greeting you with a smile. <i>“How are you doing today, "+ bessPCName() +"? Did you want me to tend to your reproductive needs, or did you just want to talk?”</i>[bess.heShe] asks, peering at you");
		if(bessGlasses()) output(" through [bess.hisHer] glasses");
		else output("questioningly");
		output(".");
	}

	if(bess.hasHair()) output("\n\nThe synthetic's " + num2Text(Math.round(bess.hairLength*10)/10) + " inch [bess.hairColor] hair is done in "+ bessHairStyle() +".");
	else output("\n\nThe synthetic has a smooth, silvery scalp, completely free of hair.");
	if(bess.earType != GLOBAL.TYPE_HUMAN || bess.horns > 0)
	{
		output(" [bess.HisHer] ");
		if(bess.earType != GLOBAL.TYPE_HUMAN) 
		{
			output("[bess.ears]");
			if(bess.horns > 0) output(" and ");
		}
		if(bess.horns > 0) output("[bess.horns]");
		output(" compliment her features.");
	}
	output(" [bess.HeShe] is currently wearing a [bess.armor] that accentuates [bess.hisHer] [bess.chest] and [bess.tone] body.");
	if (bess.wingType != GLOBAL.TYPE_HUMAN || bess.tailCount > 0)
	{
		output(" [bess.HisHer] ");
		if (bess.wingType != GLOBAL.TYPE_HUMAN) 
		{
			output("[bess.wings] stick");
			
			output(" proudly out [bess.hisHer] back");
			if (bess.tailCount > 0) output(" and [bess.hisHer] ");
		}
		if (bess.tailCount > 0)
		{
			"[bess.tails] flick");
			if(bess.tailCount == 1) output("s");
			output(" noticeably behind [bess.himHer]");
		}
		output(".");
	}
	if(bess.meleeWeapon is bessKatana) output(" At [bess.hisHer] right side is a katana, secure in its glazed sheath.");
	//if (bess.armor = Top&Skirt, Sleepshirt, Maid, Nurse, Schoolgirl, GothLolita, TankMini) 
	if(bess.armor != null && (bess.armor is TopNSkirt || bess.armor is SleepShirt || bess.armor is Maid || bess.armor is Nurse || bess.armor is Schoolgirl || bess.armor is GothLolita || bess.armor is TankMini))
	{
		output("\n\nEvery time the hem of [bess.hisHer] outfit rides up, you get a good look at [bess.hisHer] ");
		if(bess.lowerUndergarment.shortName != "") output("[bess.underGarment].");
		else if(bess.hasVagina()) 
		{
			output("[bess.pussy]");
			if(bess.hasCock()) output(" and [bess.cock]");
			output(".");
		}
		else if(bess.hasCock()) output("[bess.cock].");
		else output("bare crotch.");
		if(bess.hasCock())
		{
			output(" It ");
			if(bess.biggestCockLength() <= 10) 
			{
				if(bess.lowerUndergarment.shortName != "") output("makes a visible bulge in [bess.hisHer] [bess.underGarment].");
				else output("hangs out proudly between [bess.hisHer] [bess.legs].");
			}
			else
			{
				if(bess.lowerUndergarment.shortName != "") output("cannot be contained by [bess.hisHer] [bess.underGarment] and dangles out defiantly.");
				else output("dangles down proudly between [bess.hisHer] [bess.thighs].");
			}
		}
		if (bess.bellyRating() >= 10)
		{
			output(" [bess.HisHer] [bess.bellyFullDesc] pushes pointedly against the insides of [bess.hisHer] [bess.armor] and is visibly straining the material.");
		}
	}
	else if(bess.bellyRating() >= 10)
	{
		output("\n\n[bess.HisHer] [bess.bellyFullDesc] ");
		if(bess.armor.shortName == "") output("is clearly visible ");
		if(bess.isCrotchGarbed() || bess.isChestGarbed()) output("through [bess.hisHer] undergarments.");
	}

	bessFollowerMenu();
}

public function bessFollowerMenu():void
{
	clearMenu();
	
	addButton(0, "Discuss", );
	addButton(1, "Functions", bessFunctions, undefined, "Functions", "Bess’ Functions");
	addButton(2, "Accessories", );
	addButton(3, "Sex", );

	addButton(10, "Appearance", bessAppearance, undefined, "Appearance", "Bess’ Appearance");

	addButton(14, "Back", mainGameMenu);
}

//Appearance
public function bessAppearance():void
{
	clearOutput();
	bessHeader();

	output("As you look at [bess.name], [bess.heShe] tries to look away, pretending not to notice that you're staring at [bess.himHer]. " + bess.fm("Her cheeks flush","He politely coughs") + " as you look [bess.himHer] over from head to toe.");
	//Bald True:
	if(!bess.hasHair())
	{
		output("\n\n[bess.name]’s head is hairless. All the lines on [bess.hisHer] scalp, usually hidden by artificial locks, are now clearly exposed.");
	}
	else output("\n\nThe synthetic's [bess.hairColor] " + num2Text(Math.round(bess.hairLength*10)/10) + " inch hair is in a "+ bessHairStyle() +".");
	output(". [bess.HisHer] [bess.eyeColor] eyes, framed by " + bess.fm("thick black lashes","brooding brows"));
	if (bessGlasses()) output(" as well as the glasses [bess.heShe] is currently wearing");
	output(", are even more detailed and faceted than those of a human.");
	if (bess.horns != 0) " On top of [bess.hisHer] head are [bess.horns].");
	if (bess.earType != GLOBAL.TYPE_HUMAN) output(" [bess.HeShe] has a pair of [bess.ears].");
	if (bess.wingType != GLOBAL.TYPE_HUMAN) output(" Behind [bess.hisHer] back is a pair of [bess.wings]");
	if (bess.tailCount > 0) 
	{
		output(" Above [bess.hisHer] rump, [bess.hisHer] [bess.tails] ");
		if(bess.tailCount == 1) output("is");
		else output("are");
		output(" sticking out.");
	}
	if (bess.hasCockTail())
	{
		output("\n\n[bess.name]’s \"JoyCord\" is ");
		if(bess.tailCount > 0) output(" protruding from just above [bess.hisHer] rear, long and silvery just like [bess.hisHer] body. The tip looks exactly like a thick, synthetic tail-cock. The shaft looks quite bumpy and clearly designed for pleasure.");
	}
	output("\n\n[bess.HisHer] silver skinned body is segmented by lines, clearly identifying [bess.himHer] as a mechanical being despite its otherwise organic appearance. [bess.HeShe] has ");
	if(bess.biggestTitSize() < 1) output("a flat chest");
	else output(bess.breastSize(bess.biggestTitSize()) + " breasts capped with [bess.nipples]. Further down, your eyes are drawn to [bess.hisHer] [bess.hipsAdjective] [bess.hipsNoun] and [bess.assAdjective] [bess.assNoun].");

	if (bess.hasPussy())
	{
		output("\n\n[bess.name]'s mound is completely hairless and utterly smooth. [bess.HisHer] pussy lips are rather plump and cushony, designed to squeeze and pad a cock perfectly - not to mention extremely tasty.");
		if (bess.hasCock()) output(" Above [bess.hisHer] synthetic snatch, ");
	}
	else if(bess.hasCock()) output("\n\n");
	if (bess.hasCock()) 
	{
		output("[bess.name] has a [bess.cock] with a [bess.cockHead]");
		if(bess.hasASheath()) output(" and [bess.sheath]");
		output(".");
		if(bess.balls > 0) output("[bess.HerHis] [bess.balls] are contained in a [bess.sack].");
	}
	//if (bessCumDump = true)
	if(flags["BESS_CUMDUMP"] != undefined)
	{
		output("\n\nHot, sticky cum is leaking down [bess.hisHer] thighs from [bess.hisHer] well-used ");
		if(bess.hasVagina()) output("pussy and ");
		output("ass. [Bess.HisHer] lips are smeared with fresh spunk collected from the nearby natives. [Bess.HisHer] eyes are unfocused, probably from being used day in and out as a synthetic cum dumpster.");
	}
	output("\n\n[bess.name] currently has a [bess.belly].");
	if(!bess.isNude()) output(" [bess.HeShe] is currently wearing [pc.gear].");
	//if (bessKatana = true)
	if(bess.meleeWeapon is bessKatana) output("\n\nAt [bess.name]’s right side is a well-polished katana, secured safely in a glazed sheath. The sheath is decorated with eastern-style dragons running up its length, talons stretched out as if to strike. The blade is just as silvery and untarnished as [bess.name] herself.");
	clearMenu();
	addButton(0,"Next",approachFollowerBess);
}

//Functions
public function bessFunctions():void
{
	clearOutput();
	bessHeader();

	if (flags["BESS_LOVER_STATUS"] != undefined && (flags["BESS_LOVER_STATUS"].indexOf("dom") != -1))
	{
		output("You meekly suggest that [bess.name] <i>perhaps</i> could improve [bess.hisHer] appearance with a few tweaks. Your remark is met with a quirked eyebrow. It’s sometimes hard to tell when [bess.name] is in " + flags["BESS_LOVER_STATUS"] + " mode or not.");
		output("\n\nThankfully, you seem to be in luck. [Bess.HisHer] gaze is softer than usual, which means you aren’t going to get disciplined for your impertinence. ");
		output("\n\n<i>“Oh really? What exactly do you think I should change about myself, "+ bessPCName() +"? I’m all ears...”</i>");
	}
	else if (flags["BESS_LOVER_STATUS"] != undefined && (flags["BESS_LOVER_STATUS"] == "sub" || flags["BESS_LOVER_STATUS"] == "pet"))
	{
		output("[bess.name]’s appearance is not to your taste, so you order [bess.himHer] to change it. It’s really that simple.");
		output("\n\nYour devoted " + flags["BESS_LOVER_STATUS"] + " gets down on all fours and bows deeply to you, [bess.hisHer] eyes glittering with unwavering devotion. <i>“Of course, anything you wish! What would you like me to change about myself..?”</i>");
	}
	else if (flags["BESS_LOVER"] == 1 || flags["BESS_FRIEND"] == 1)
	{
		output("You casually bring up the topic of [bess.name] changing some things about [bess.himHer]self.");
		output("\n\n[bess.name] responds with a quirked eyebrow. <i>“You want me to change myself? What, are you not happy with your");
		if (flags["BESS_LOVER"] == 1)
		{
			output(" " + flags["BESS_LOVER_STATUS"]);
		}
		else
		{
			output(" dear friend");
		}
		output(" the way [bess.heShe] is?”</i> You watch [bess.himHer] try to keep a straight face, but [bess.heShe] can’t hold it.");
		output("\n\n<i>“Of course, anything for you, "+ bessPCName() +". What would you like me to switch up?”</i>");
	}
	else 
	{
		output("You suggest changing some things about [bess.name], and [bess.heShe] seems happy to comply. In fact, [bess.heShe] seems to relish the chance to display [bess.hisHer] different functions.");
		output("\n\n<i>“Of course, "+ bessPCName() +"! What would you like me to change?”</i> [bess.name]’s [bess.eyeColor] eyes are " + bess.mf("shining brightly","positively glittering") + ", waiting to hear what you want to switch up.");
	}

	bessFunctionsMenu();
}

public function bessFunctionsMenu():void
{
	clearMenu();
	addButton(0, "Titles", talkToBessAboutTitles, undefined, "Titles", "Change [bess.name]'s name or what you call each other in sexual and non-sexual encounters.");

	if (flags["BESS_LOVER_STATUS"].indexOf("dom") != -1 || flags["BESS_LOVER_STATUS"] == "pet" || flags["BESS_LOVER_STATUS"] == "sub") addDisabledButton(1, "Role", "Bess’ Role", "Since making things ‘official’ with Bess, you’re unable to change her role!");
	else addButton(1, "Role", talkToBessAboutRoles, undefined, "Roles", "Change [bess.name]'s various roles, such as if [bess.heShe]'s dominant or not during sex.");
	

	addButton(2, "Hair", talkToBessAboutHair, undefined, "Hair", "Ask [bess.name] to change [bess.hisHer] hair such as color, length, and styling.");
	addButton(3, "Eyes", talkToBessAboutEyes);
	addButton(4, "Chest", talkToBessAboutBoobs, undefined, "Chest", "Ask [bess.name] to change [bess.hisHer] chest, such as breast size and nipple type.");
	addButton(5, "BodyShape", talkToBessAboutBodyShape, undefined, "Body Shape", "Ask [bess.name] to change [bess.hisHer] body shape, such as muscle tone, hip, and ass size.");
	addButton(6, "Genitals", talkToBessAboutGenitals, undefined, "Genitals", "Ask [bess.name] to change [bess.hisHer] genitals, such as if [bess.heShe] has a pussy or a cock.");
	addButton(7, "Cum", talkToBessAboutCum);
	addButton(8, "Clothing", talkToBessAboutClothes);
	addButton(9, "Accessories", talkToBessAboutAccessories);
	addButton(10, "JoyCord", talkToBessAboutJoyCord);
	addButton(11, "TentaPussy", talkToBessAboutTentacunt);

	addButton(14, "Back", bessFollowerMenu);
}

//Titles
public function talkToBessAboutTitles():void
{
	clearOutput();
	bessHeader();

	output("<i>“Which one?”</i>");

	clearMenu();
	addButton(0, bess.short + "’s Name", bessTitlesTheirName, undefined, bess.short + "’s Name", "Change [bess.name]'s name. At least, if [bess.heShe] agrees to it...");
	addButton(1, "YourTitle", bessTitlesYourTitles, undefined, "Your Title", "The title that [bess.name] will call you in non-sexual encounters.");
	addButton(2, bess.mf("His", "Her") + "Title", bessTitlesTheirTitle, undefined, bess.mf("His", "Her") + " Title", "The title that you will call [bess.name] in non-sexual encounters.");
	addButton(3, "YourSexName", bessTitlesYourSexName, undefined, "Your Sex Name", "The name that [bess.name] will call you in sexual encounters.");
	addButton(4, bess.mf("His", "Her") + "SexName", bessTitlesTheirSexName, undefined, bess.mf("His", "Her") + " Sex Name", "The title that you will call [bess.name] in sexual encounters.");

	addButton(14, "Back", bessFunctionsMenu);
}

public function bessTitlesTheirName():void
{
	clearOutput();
	bessHeader();

	output("[bess.name] peers at you as you suggest changing [bess.himsHer] name. [bess.heShe]’s clearly not comfortable with the idea.");

	if (flags["BESS_LOVER"] == 1 && (flags["BESS_LOVER_STATUS"].indexOf("dom") != -1))
	{
		output("\n\n<i>“... You want your "+ flags["BESS_LOVER_STATUS"] +" to change [bess.hisHer] name, because you're unhappy with it?”</i> [bess.name] asks you in a dry tone, as if [bess.heShe] misheard you.");

		output("\n\nYou cough and nod, feeling yourself shrink under [bess.hisHer] penetrating gaze.");
		
		output("\n\n<i>“How about you think about all the things that are incredibly silly with that and come back to me once you figure it out, dear. I’m sure it will dawn on you eventually.”</i>");
	}
	else if (flags["BESS_LOVER"] == 1 || flags["BESS_FRIEND"] == 1)
	{
		output("\n\n<i>“... Look. I know I’m synthetic and");
		if (flags["BESS_LOVER"] == 1) output(" your "+ flags["BESS_LOVER_STATUS"]);
		else output(" your friend");
		output(", but changing my name... how about you change your name first, and </i>then<i> I’ll change mine?”</i>");

		output("\n\nIt seems [bess.name] now has the same aversion to changing [bess.hisHer] name on request that a regular person would. It seems a ‘side effect’ of you teaching [bess.himHer] independent thought.");
	}
	else
	{
		output("\n\n<i>“You want to change my designated name? What will my new name be, "+ bessPCName() +"?”</i> [bess.name] definitely doesn’t seem adverse to the idea.");

		displayInput();
		userInterface.textInput.text = chars["BESS"].short;

		clearMenu();
		addButton(0, "Next", bessTitlesTryChangeName);
	}
}

public function bessTitlesTryChangeName():void
{
	if(this.userInterface.textInput.text == "")
	{
		output("<b>You must input a name.</b>");
		return;
	}
	chars["BESS"].short = this.userInterface.textInput.text;
	if(stage.contains(this.userInterface.textInput)) 
		this.removeInput();

	bessTitlesAcceptRename();
}

public function bessTitlesAcceptRename():void
{
	clearOutput();
	bessHeader();

	output("<i>“Very well, from now on I shall be known as [bess.name]!”</i>");

	clearMenu();
	addButton(0, "Next", bessFunctions);
}

public function bessTitlesYourTitles():void
{
	clearOutput();
	bessHeader();

	output("<i>“So, you’d like to change what I call you? What to...?”</i>");

	bessTitleList(true, false);
}

public function bessTitlesYourSexName():void
{
	clearOutput();
	bessHeader();

	output("<i>“So, you’d like to change what I call you during sex? What to...?”</i>");

	bessTitleList(true, true);
}

public function bessTitlesTheirTitle():void
{
	clearOutput();
	bessHeader();

	output("<i>“So, you’d like to change what you call me? What to...?”</i>");

	bessTitleList(false, false);
}

public function bessTitlesTheirSexName():void
{
	clearOutput();
	bessHeader();

	output("<i>“So, you’d like to change what you call me during sex? What to...?”</i>");

	bessTitleList(false, true);
}

public function bessTitleList(tarPC:Boolean, sex:Boolean):void
{
	var options:Array = [];

	// A lot of these don't work very well. Implementing will pare down later.

	options.push("honey", "sexy", "babe");

	if (tarPC)
	{
		options.push(pc.short);
		options.push(pc.mf("Master", "Mistress"));
		options.push(pc.mf("Master", "Mistress") + " Steele");
		options.push(pc.mf("Lord", "Lady") + " Steele");
		options.push(pc.mf("Prince", "Princess"));
		if (bessIsSub())
		{
			options.push(pc.mf("My King", "My Queen"));
			options.push(pc.mf("Sir", "Ma’am"));
			options.push(pc.mf("Daddy", "Mommy"));
			options.push("my alpha");
		}
		else if (bessIsDom())
		{
			options.push("bitch", "slut", "cumslut", "buttslut", "slave", "little one", "my nymph", "my pet", "kitten", "puppy");
			options.push("synthslut");
			options.push(pc.mf("boy", "girl"));
		}

		if (flags["BESS_EVENT_11"] != undefined)
		{
			options.push("Captain", "Boss", "Skipper", "Captain, my Captain", "Chief", "Big Boss");
		}

		if (flags["BESS_LOVER"] == 1)
		{
			options.push(pc.mf("my husbando", "my waifu"));
		}
	}
	else
	{
		options.push(bess.short);
		options.push(bess.mf("Master", "Mistress"));
		options.push(bess.mf("Master", "Mistress") + " " + bess.short);
		options.push(bess.mf("Lord", "Lady") + " " + bess.short);
		options.push(bess.mf("Prince", "Princess"));
		if (bessIsDom())
		{
			options.push(bess.mf("My King", "My Queen"));
			options.push(bess.mf("Sir", "Ma’am"));
			options.push(bess.mf("Daddy", "Mommy"));
		}
		else if (bessIsSub())
		{
			options.push("bitch", "slut", "cumslut", "buttslut", "slave", "little one", "my nymph", "my pet", "kitten", "puppy");
			options.push(bess.mf("boy", "girl"));
		}

		if (flags["BESS_EVENT_11"] != undefined)
		{
			options.push(flags["BESS_CREW_ROLE"]);
		}

		if (flags["BESS_LOVER"] == 1)
		{
			options.push(bess.mf("my husbando", "my waifu"));
		}
	}

	if (flags["BESS_FRIEND"] == 1)
	{
		options.push("my friend", "buddy");
	}

	if (flags["BESS_LOVER"] == 1)
	{
		options.push("my love", "darling", "sweet heart", "my beloved", "my dear");
	}

	// Create buttons (WELP etc)

	var ttBody:String;
	if (tarPC)
	{
		if (sex) ttBody = "Set how Bess refers to you during sex.";
		else ttBody = "Set how Bess refers to you in general."
	}
	else
	{
		if (sex) ttBody = "Set how you refer to Bess during sex.";
		else ttBody = "Set how you refer to Bess in general."
	}


	var optSlot:int = -1;
	for (var i:int = 0; optSlot < options.length; i++)
	{
		if (i > 0 && (i + 1) % 15 == 0)
		{
			addButton(i, "Back", bessFunctionsMenu);
			continue;
		}
		else
		{
			optSlot++;
		}

		addButton(i, StringUtil.toTitleCase(options[optSlot]), bessSetTitleOption, [tarPC, sex, options[optSlot]], StringUtil.toTitleCase(options[optSlot]), ttBody)
	}
}

public function bessSetTitleOption(opts:Array):void
{
	clearOutput();
	bessHeader();

	var tarPC:Boolean = opts[0];
	var sex:Boolean = opts[1];
	var newTitle:String = opts[2];

	if (!tarPC)
	{
		output("<b>You will now call [bess.name]");
	}
	else
	{
		output("<b>[bess.name] will now call you");
	}

	output(" " + newTitle);

	if (sex)
	{
		output(" during sex!</b>");
	}
	else
	{
		output(" outside of sex!<b>");
	}

	// Do the setting
	if ( tarPC && !sex) flags["BESS_PC_SEX_NAME"] = newTitle;
	if ( tarPC &&  sex) flags["BESS_PC_NAME"] = newTitle;
	if (!tarPC && !sex) flags["BESS_NAME"] = newTitle;
	if (!tarPC &&  sex) flags["BESS_SEX_NAME"] = newTitle;

	clearMenu();
	addButton(0, "Next", bessFunctionsMenu);
}

public function talkToBessAboutRoles():void
{
	clearOutput();
	bessHeader();
	
	output("\n\n<i>“What attitude would you like me to assume during sex, "+ bessPCName() +"?”</i>");

	//[Equal] [Dominant] [Submissive]
	clearMenu();
	addButton(0, "Equals", setBessRole, 0);
	addButton(1, "Dominant", setBessRole, 1);
	addButton(2, "Submissive", setBessRole, 2);

	var sRole:int = 0;
	if (flags["BESS_SEX_ROLE"] != undefined) sRole = flags["BESS_SEX_ROLE"];

	output("\n\n(Bess is currently assuming");
	if (sRole == 0) output(" a role of equal partners.)");
	else if (sRole == 1) output(" the role of a dominant partner.)")
	else if (sRole == 2) output(" the role of a submissive partner.)");
}

public function setBessRole(newRole:int):void
{
	clearOutput();
	bessHeader();

	flags["BESS_SEX_ROLE"] = newRole;

	var sRole:int = 0;
	if (flags["BESS_SEX_ROLE"] != undefined) sRole = flags["BESS_SEX_ROLE"];

	output("Bess is now assuming");
	if (sRole == 0) output(" a role of equal partners.");
	else if (sRole == 1) output(" the role of a dominant partner.")
	else if (sRole == 2) output(" the role of a submissive partner.");

	bessFunctionsMenu();
}

public function talkToBessAboutHair():void
{
	clearOutput();
	bessHeader();

	output("<i>“You’d like to change something about my hair, "+ bessPCName() +"? What in particular..?”</i>");

	clearMenu();
	if (bess.hairLength > 0) addButton(0, "Color", talkToBessAboutHairColor);
	else addDisabledButton(0, "Color", "Hair Color", "Bess has to have hair to be able to select its color!");

	addButton(1, "Length", talkToBessAboutHairLength);

	if (bess.hairLength > 0) addButton(2, "Style", talkToBessAboutHairStyle);
	else addDisabledButton(2, "Style", "Hair Style", "Bess has to have hair to be able to select its style!");

	addButton(14, "Back", bessFunctionsMenu);
}

public function talkToBessAboutHairColor():void
{
	clearOutput();
	bessHeader();

	output("<i>“What color were you thinking..?”</i>");

	var options:Array = ["silver", "black", "brown", "red", "blonde", "white", "green", "blue", "orange", "pink", "purple", "violet", "magenta", "cyan", "red and black", "clear"];

	clearMenu();

	var optSlot:int = -1;
	for (var i:int = 0; optSlot < options.length; i++)
	{
		if (i > 0 && (i + 1) % 15 == 0)
		{
			addButton(i, "Back", bessFunctionsMenu);
			continue;
		}
		else
		{
			optSlot++;
		}

		if (options[optSlot] == bess.hairColor)
		{
			addDisabledButton(i, StringUtil.toTitleCase(options[optSlot]));
		}
		else
		{
			addButton(i, StringUtil.toTitleCase(options[optSlot]), bessSetHairColor, options[optSlot]);
		}
	}
}

public function bessSetHairColor(newColor:String):void
{
	clearOutput();
	bessHeader();

	output("[bess.name] reaches up and touches [bess.hisHer] hair. The second one of [bess.hisHer] silvery digits makes contact, the hue of [bess.hisHer] strands transform!");
	bess.hairColor = newColor;
	
	output("\n\nA [bess.hairColor] explosion spreads out through her locks until it has reached the tip of every tuft. Afterwards, [bess.name] brushes [bess.hisHer] newly ");
	if (newColor == "clear") output("un");
	output("colored hair with an amused smile.");
	
	output("\n\n<i>“Hmm, [bess.hairColor], huh? It’s nice to change your hair up every now and then.”</i> [bess.heShe] " + bess.mf("amusedly", "happily") +" remarks.");
	
	output("\n\n<b>[bess.name]’s hair has changed color!</b>");

	bessFunctionsMenu();
}

public function talkToBessAboutHairLength():void
{
	clearOutput();
	bessHeader();

	output("<i>“What length were you thinking?”</i>");

	clearMenu();
	var options:Array = [0, 2, 8, 18, 40, 60];
	var lbls:Array = ["None", "Short", "Moderate", "Shoulders", "AssLength", "FloorLength"];

	for (var i:int = 0; i < options.length; i++)
	{
		addButton(i, lbls[i], bessSetHairLength, options[i]);
	}

	addButton(14, "Back", bessFunctionsMenu);
}

public function bessSetHairLength(newLength:int):void
{
	clearOutput();
	bessHeader();

	if (flags["BESS_EVENT_4"] != undefined)
	{
		output("<i>“You want my hair to be "+ (bess.hairLength < newLength ? "longer" : "shorter") +", huh? I can do that. Just let me say the magic words...”</i> [bess.name] rubs [bess.hisHer] hands together, then spreads out [bess.hisHer] silvery fingers. <i>“... ");
		if (newLength == 0) output("Expellihairus!");
		else if (newLength == 2) output("Shortius!");
		else if (newLength == 8) output("Defaltus!");
		else if (newLength == 18) output("Askus Soryus!");
		else if (newLength == 40) output("Moemoe Magika!");
		else output("Rappunsal!");
		output("”</i>");
	}
	else
	{
		output("<i>“You want my hair to be "+ (bess.hairLength < newLength ? "longer" : "shorter") +", "+ bessPCName() +"? Sure thing!”</i> [bess.HeShe] seems more than happy to change its length for you.");
	}

	output("\n\n[bess.name] then reaches up and runs [bess.hisHer] hair");
	if (bess.hairLength == 0) output(" over [bess.hisHer] bare scalp");
	else output(" over [bess.hisHer] hair");
	output(". It follows [bess.hisHer] hands as [bess.heShe] runs it along, giving the visual impression that [bess.heShe]'s actually moving it with her hands.");

	bess.hairLength = newLength;

	output("\n\n[Bess.HeShe] doesn't stop until [bess.heShe]");
	if (newLength == 0) output(" is completely bald, [bess.hisHer] scalp now a glittering silver, just like the rest of [bess.hisHer] body. For some reason when [bess.heShe]'s got no hair it makes [bess.himHer] seem that much more mechanical.");
	else output(" has "+ bessHairLength() +". [Bess.HeShe] strokes it in a very human gesture, as if mentally adjusting to the new [bess.hairColor] span.");

	output("\n\n<i>“I hope you like it this way, "+ bessPCName() +". Are");
	if (newLength == 0) output(" bald");
	else if (newLength == 2) output(" short haired");
	else if (newLength == 8) output(" medium haired");
	else if (newLength == 18) output(" long haired");
	else output(" really long haired "+ bess.mf("guys", "girls") + " your ‘jam’?”</i> [bess.name] inquires, a twinkle in [bess.hisHer] [bess.eyeColor] eyes.");
	if (bess.hairLength > 0) output(" [Bess.HeShe] then adjusts it to be in [bess.hairStyle].");

	output("\n\n<b>[bess.name]");
	if (bess.hairLength > 0) output(" now has "+ bessHairLength() + " hair");
	else output(" is now bald");
	output("!</b>");

	clearMenu();
	addButton(0, "Next", bessFunctionsMenu);
}

public function talkToBessAboutHairStyle():void
{
	clearOutput();
	bessHeader();

	output("<i>“What style were you thinking?”</i>");

	// 9999 -- this would probably be a good idea
	// If you really need to, you could attach an automatic hair reduction to a hair style change (I.e. if Ankle Length Hair and pick bob, reduce hair length to shoulder length). Your call.

	var options:Array = ["simple part", "spikes", "messy chignon", "tight chignon", "ponytail", "bob", "single braid", "mess of curls", "crown braid", "set of twintails", "side plait", "pigtail buns", "hime cut", "ruffled layers", "front wave", "side part", "backwards slick"];

	var optSlot:int = -1;
	for (var i:int = 0; optSlot < options.length; i++)
	{
		if (i > 0 && (i + 1) % 15 == 0)
		{
			addButton(i, "Back", bessFunctionsMenu);
			continue;
		}
		else
		{
			optSlot++;
		}

		addButton(i, StringUtil.toTitleCase(options[optSlot]), bessSetHairStyle, options[optSlot]);
	}
}

public function bessSetHairStyle(newStyle:String):void
{
	clearOutput();
	bessHeader();

	output("<i>“Going to have to give a "+ bess.mf("guy", "girl") +" a little time for this one...”</i> [bess.name] grins, shortly before slipping off to do [bess.hisHer] hair <i>just right</i>. Guess [bess.heShe]’s got to do it the old fashioned way.");

	if (newStyle == "spikes" || newStyle == "pigtail buns" || newStyle == "ruffled layers")
	{
		// noop
	} 
	else
	{
		newStyle = "a " + newStyle;
	}

	flags["BESS_HAIRSTYLE"] = newStyle;

	output("\n\nWhen [bess.heShe] comes back, [bess.hisHer] [bess.hairColor] "+ bessHairLength() +" hair is done in "+ bessHairStyle() +". [Bess.HeShe] seems quite happy with the change of pace.");

	output("\n\n<i>“Interesting look, don’t you think?”</i> [bess.name] touches [bess.hisHer] hair. [Bess.HeShe] sure spent [bess.hisHer] time on it!");

	output("\n\n<b>[bess.name]’s hair is now styled in "+ bessHairStyle() +"!</b>");

	bessFunctionsMenu();
}

public function talkToBessAboutEyes():void
{
	clearOutput();
	bessHeader();

	output("<i>“The color of my eyes? Easily done. Did you have any in mind..?”</i>");

	//Menu Options alter "bess.eyeColor" string value. Color name is not capitalized.

	var options:Array = ["silver", "black", "brown", "green", "hazel", "blue", "red", "orange", "aquamarine", "purple", "pink", "golden", "clear"];

	clearMenu();

	var optSlot:int = -1;
	for (var i:int = 0; optSlot < options.length; i++)
	{
		if (i > 0 && (i + 1) % 15 == 0)
		{
			addButton(i, "Back", bessFunctionsMenu);
			continue;
		}
		else
		{
			optSlot++;
		}

		if (options[optSlot] == bess.eyeColor)
		{
			addDisabledButton(i, StringUtil.toTitleCase(options[optSlot]));
		}
		else
		{
			addButton(i, StringUtil.toTitleCase(options[optSlot]), bessSetEyeColor, options[optSlot]);
		}
	}

	if (options.length < 15)
	{
		addButton(14, "Back", bessFunctionsMenu);
	}
}

public function bessSetEyeColor(newColor:String):void
{
	clearOutput();
	bessHeader();

	bess.eyeColor = newColor;

	output("[bess.name] brings a silvery hand up beneath [bess.hisHer] eyes. With a simple wave upwards, [bess.hisHer] eyes change [bess.eyeColor] like a party trick.");

	output("\n\n<i>“Voila!</i>[bess.heShe] exclaims, <i>“Easily done. Anything else you wanted?”</i>");

	output("\n\n<b>[bess.name]’s eyes are now [bess.eyeColor]!</b>");

	bessFunctionsMenu();
}

public function talkToBessAboutBoobs():void
{
	clearOutput();
	bessHeader();

	output("<i>“You want to change my chest? Anything in particular?”</i> [bess.name] touches");
	if (bess.biggestTitSize() <= 0) output(" it");
	else output("[bess.hisHer] "+ bess.breastCup() +" mounds");
	output(", the obvious discussion point.");

	if (flags["BESS_FUCKED"] != undefined || flags["BESS_BOOBCHANGED"] != undefined)
	{
		if (bess.isFeminine()) output("\n\nHer face is a little flushed.");
		else output("\n\nHe coughs a little, trying not to look obviously pleased.");
		output(" You know that [bess.heShe] loves toying with [bess.hisHer] [bess.chestNoun], given how sensitive [bess.hisHer] nipples are.");
	}

	//{Altering breast size/lactation once opens the "Nipples" topic in discussion menu}.
	clearMenu();
	addButton(0, "BreastSize", talkToBessAboutBoobSize);
	addButton(1, "Lactation", talkToBessAboutLactation);
	if (flags["BESS_BOOBCHANGED"] == undefined) addDisabledButton(2, "Nipples");
	else addButton(2, "Nipples", talkToBessAboutNipples);
}

public function talkToBessAboutBoobSize():void
{
	clearOutput();
	bessHeader();

	output("<i>“Not a fan of");
	if (bess.biggestTitSize() <= 15) output(" [bess.cupSize]? Easily changed. Just give me a size and I’ll gather the right amount of MeldMilk! Or is it a reduction you want..?");
	else if (bess.biggestTitSize() <= 0) output(" flat chests? I can gather some MeldMilk and give myself a nice pair tits. What size?");
	else output(" the gargantuan tits you asked for? I’m guessing you want a reduction, because these can’t possibly get any bigger!");
	output("”</i>");

	var options:Array = [0, 1, 2, 3, 4, 7, 11, 15, 19, 24];
	var lbls:Array = ["Flat", "A-Cup", "B-Cup", "C-Cup", "D-Cup", "E-Cup", "F-Cup", "G-Cup", "H-Cup", "I-Cup"];

	var optSlot:int = -1;
	for (var i:int = 0; optSlot < options.length; i++)
	{
		if (i > 0 && (i + 1) % 15 == 0)
		{
			addButton(i, "Back", bessFunctionsMenu);
			continue;
		}
		else
		{
			optSlot++;
		}

		if (options[optSlot] == bess.breastRows[0].breastRatingRaw)
		{
			addDisabledButton(i, StringUtil.toTitleCase(options[optSlot]));
		}
		else
		{
			addButton(i, lbls[optSlot], bessSetBoobSize, options[optSlot]);
		}
	}

	if (options.length < 15)
	{
		addButton(14, "Back", bessFunctionsMenu);
	}
}

public function bessSetBoobSize(newSize:int):void
{
	clearOutput();
	bessHeader();

	flags["BESS_BOOBCHANGED"] = 1;

	output("[bess.name]");
	if (bess.biggestTitSize() > 0)
	{
		output(" cups the weight of [bess.hisHer]");
		if (bess.isNude()) output(" naked");
		output(" breasts.");
	}
	else
	{
		output(" rubs [bess.hisHer] hands down [bess.hisHer] flat chest, then positions them just below [bess.hisHer] nipples.");
	}

	if (newSize > 0)
	{
		output(" <i>“" + bess.breastCup(0, newSize) +"s coming right up!”</i>");
	}
	else
	{
		output("<i>“One chest as flat as a washboard coming right up!”</i>");
	}

	// Breast Gain
	if (bess.biggestTitSize() <= 0)
	{
		output("\n\n[Bess.HisHer] synthetic milk surges upwards and soon you can see [bess.hisHer] chest begin to bud, forming tiny, girlish breasts. [bess.HisHer] petite peaks poke out and fill [bess.hisHer] hands, almost as if [bess.heShe] had been holding them all along.");

		output("\n\n<i>“Such tiny breasts! Kind of cute, I think. A nice, squeezable size.”</i> [bess.name] emphasises this by fondling [bess.hisHer] teeny tits, [bess.hisHer] face flushing all the while. <i>“... I forgot how much I </i>love<i> having these...”</i>");
	}

	// Breast Increase
	if (bess.biggestTitSize() < newSize)
	{
		output("\n\nThere is a sound like liquid sloshing about and");
		if (bess.biggestTitSize() > 0) output(" suddenly [bess.hisHer] silvery boobs begin to swell out");
		else output(" [bess.hisHer] silvery boobs continue to swell out");
		output(".");
		if (bess.breastRows[0].nippleType == GLOBAL.NIPPLE_TYPE_NORMAL || bess.breastRows[0].nippleType == GLOBAL.NIPPLE_TYPE_INVERTED || bess.breastRows[0].nippleType == GLOBAL.NIPPLE_TYPE_FLAT)
		{
			output(" [bess.HisHer]");
			if (bess.breastRows[0].nippleType == GLOBAL.NIPPLE_TYPE_NORMAL) output(" silvery");
			else if (bess.breastRows[0].nippleType == GLOBAL.NIPPLE_TYPE_FLAT) output(" flat");
			bess.breastRows[0].nippleType == GLOBAL.NIPPLE_TYPE_INVERTED) output(" inverted");
			output(" nipples begin to stick out from the pressure, popping out and swelling in size.");
		}
		else if (bess.breastRows[0].nippleType == GLOBAL.NIPPLE_TYPE_FUCKABLE) output(" [bess.HisHer] fuckable nipples suddenly begin to gape and clench almost spasmically.");
		else if (bess.breastRows[0].nippleType == GLOBAL.NIPPLE_TYPE_DICK) output(" [bess.HisHer] nipples suddenly become erect and [bess.hisHer] chest-dicks show themselves.");
		if (bess.isLactating()) output(" They are soon liberally drooling [bess.hisHer] creamy milk as if [bess.heShe] was heavily pregnant.");

		output("\n\n[bess.name] lets out a sinful moan and rubs them lewdly, [bess.hisHer] nipples clearly sensitive from the pressure. [Bess.HeShe] looks quite drunk off the sensation of [bess.hisHer] tits filling up and unable to contain [bess.hisHer] excitement.");

		output("\n\n<i>“My pleasure senses are going into overdrive.");
		if (bessIsEqual()) output(" Can you please milk my aching tits, "+ bessPCSexName() +"?");
		else if (bessIsDom()) output(" Milk my tits, "+ bessPCSexName() +" - that’s an order.");
		else output(" I’m not sure how much I can hold out, "+ bessPCSexName() +"... can I have permission to cum?");
		if (!bessIsDom()) output("”</i> [bess.name] pleads, all the while desperately massaging [bess.hisHer] quickly inflating mounds.");
		else output(" [bess.name] commands you. There is a predatory look in [bess.hisHer] eyes.");

		output("\n\n");
		if (bessIsDom()) output("Obeying her, you");
		else output("Indulging her, you");
		output(" slip behind [bess.name] and gently massage [bess.hisHer] tender udders, giving [bess.himHer] some relief. You knead your fingers deep into her billowing breast flesh, almost as if you're massaging out her milk.");

		output("\n\n[Bess.HeShe] leans into your chest and lets out a sweet cry as [bess.hisHer] [bess.nipplesLight] ecstatically spurt [bess.hisHer] milk everywhere. They seem incredibly sensitive and as you reach around to stroke [bess.hisHer] nubs [bess.heShe] cries out as if you were stroking [bess.hisHer]");
		if (bess.hasVagina()) output(" clit.");
		else output(" prostate");

		if (pc.hasCock() && pc.genitalSpot <= 1)
		{
			output("\n\nYou’re so turned on by [bess.hisHer] needy, pleasured wiggling against your groin that you");
			if (pc.isCrotchGarbed()) output(" pull off your [pc.lowerGarments]");
			output(" and slip [pc.oneCock] into [bess.hisHer]");
			if (bess.hasVagina()) output(" [bess.pussyLight]");
			else output(" [bess.asshole]");
			output(" from behind. As you penetrate [bess.himHer] [Bess.heShe] excitedly clenches around your length, letting it easily slide inside of [bess.himHer].");

			output("\n\nYou grind and rub lewdly against each other until you both reach a fevered peak, spurting your [pc.cumLight] deep inside of [bess.hisHer] [bess.vagOrAss] as it clenches and spasms around you. [bess.HeShe] immediately collects your");
			if (pc.cumQ() < 500) output(" limited");
			else output(" liberal");
			output(" loads of spunk and transforms it into [bess.hisHer] synthetic milk, recycling it to swell out [bess.hisHer] orgasming udders.");

			output("\n\nAfter you finish cumming,");
		}
		else
		{
			output("\n\nYou massage [bess.hisHer] breasts until they swell up to the right size, but");
		}
		output(" it seems [bess.name] has generated more than she needed. Like a farm animal, you squeeze and massage her drooling udders until they spurt out the excess fluid.");

		output("\n\n[bess.name]'s [bess.thighsLight] shake spastically as [bess.heShe] utterly creams himself");
		if (pc.hasCock() && pc.genitalSpot <= 1) output(" for a second time");
		output(", overstimulated by the frothy streams from her [bess.nippleLight].");
		if (bess.hasCock()) output(" [bess.HeShe] shoots a thick, steaming load of [bess.hisHer] spunk all over the ship's floor, splattering the surface beneath [bess.hisHer] feet.");
		else if (bess.hasVagina()) output(" [bess.HisHer] pussy squirts intermittent jets of [bess.hisHer] [bess.girlCumLight] all over the ship's floor, splattering the surface beneath [bess.hisHer] feet.");

		bess.breastRows[0].breastRatingRaw = newSize;

		output("\n\nAfter the rather intense experience, [bess.name] strokes [bess.hisHer] new [bess.cupSize] breasts. [bess.HisHer] surroundings are an utter mess from the experience and [bess.heShe]");
		if (!bessIsDom()) output(" flushes with embarrassment.");
		else output("shoots you a commanding look.");

		if (bessIsEqual())
		{
			output("\n\n<i>“... Ahem. I'd better get a mop for all this.”</i> [bess.name] coughs, looking about for one.");
			// {if (Celise Companion true
			if (9999 == 0) output(" <i>“...Oh wait, I'll just get Celise! CELLLIIISE! FREE PROTEIN!”</i> [bess.HeShe] shouts out.");
		}
		else if (bessIsDom())
		{
			output("\n\n<i>“Looks like you've got a lot to clean up.");
			if (pc.isBiped()) output(" Hands and knees");
			else output(" On the ground");
			output(", now.”</i> [bess.name] spanks your ass and forces you to lap up [bess.hisHer] milk");
			if (bess.hasCock()) output(" and [bess.cumFlavor] semen");
			if (pc.isBiped()) output(" on all fours");
			else output(" with your tongue");
			output(". [Bess.HeShe] make sure you don't miss a single spot.");

			// {if Celise companion
			if (9999 == 0) output("\n\nCelise comes across you licking up [bess.hisHer] liquids and pouts. <i>“Aww, lucky--! Why don't I get a free meal like that?”</i>");
		}
		else
		{
			output("\n\n<i>“Looks like you’ve got a lot to clean up. Hands and knees, now.”</i> You spank [bess.name]’s ass and force [bess.himHer] to lap up her own milk on [bess.hisHer] on all fours");
			if (bess.hasCock()) output(", as well as [bess.hisHer] own [bess.cumFlavor] semen.”</i>");
			output(" You make sure [bess.heShe] doesn’t miss a single spot.");

			// {if Celise companion 
			if (9999 == 0) output("\n\nCelise comes across [bess.name] licking up [bess.hisHer] liquids and pouts. <i>“Aww, lucky--! Why don't I get a free meal like that?”</i>");
		}

		output("\n\n<b>[bess.name] now has a pair of [bess.breastCupSize] breasts!<\b>");

		bessFunctionsMenu();
	}
	else
	{
		output("\n\n<i>“A decrease? That’s a little trickier. You’ll need to milk me if you want to reduce their size. All that excess liquid has got to go somewhere.”</i> [bess.name] cups [bess.hisHer] [bess.breasts] and emphasises their weight.");

		clearMenu();
		if (!bessIsDom()) addButton(0, "MilkUdders", );
		else addDisabledButton(0, "MilkUdders");
		addButton(1, "Nurse", );
		addButton(2, bess.mf("Him", "Her") + "self", bessMilkYoself, newSize)
	}
}

public function bessMilkYoself(newSize:int):void
{
	clearOutput();
	bessHeader();

	bess.breastRows[0].breastRatingRaw = newSize;

	output("[bess.name] takes some time off to milk [bess.hisHer] breasts down to size. When [bess.heShe] returns, [bess.heShe]");
	if (newSize == 0) output(" has a perfectly flat chest.");
	else output(" is sporting [bess.breastCupSize]s.");

	output("\n\n<b>[bess.name] now has");
	if (newSize > 0) output(" [bess.breastCupSize] breasts!");
	else output(" a flat chest!");
	output("</b>");

	bessFunctionsMenu();
}

public function talkToBessAboutNipples():void
{
	clearOutput();
	bessHeader();

	output("<i>“I suppose "+ bessNippleType() +" nipples aren’t to everyone’s taste. What kind would you like?”</i>");

	//Menu Options alter bess.nipples value. Nipple size is always set to < 1 (Prominent).
	/*
	Normal (0)
	Fuckable (1)
	Dick (3)
	Flat (4)
	Inverted (5)
	*/

	clearMenu();
	addButton(0, "Normal", bessSetNippleType, GLOBAL.NIPPLE_TYPE_NORMAL);
	addButton(1, "Fuckable", bessSetNippleType, GLOBAL.NIPPLE_TYPE_FUCKABLE);
	addButton(2, "Dick", bessSetNippleType, GLOBAL.NIPPLE_TYPE_DICK);
	addButton(3, "Flat", bessSetNippleType, GLOBAL.NIPPLE_TYPE_FLAT);
	addButton(4, "Inverted", bessSetNippleType, GLOBAL.NIPPLE_TYPE_INVERTED);

	addButton(14, "Back", bessFunctionsMenu);
}

public function bessSetNippleType(newType:int):void
{
	clearOutput();
	bessHeader();

	bess.breastRows[0].nippleType = newType;

	output("[bess.name] plays with them for a bit, and suddenly they become [bess.nipplesDesc]! It seems [bess.heShe] came with that particular function built in, so it’s an easy alteration to make.");

	output("\n\n<i>“There you go, two [bess.nipplesNoun]! Anything else..?”</i>");

	output("\n\n<b>Bess now has a pair of [bess.nipplesNoun]!</b>");

	bessFunctionsMenu();
}

public function talkToBessAboutLactation():void
{
	clearOutput();
	bessHeader();

	output("<i>“It’s simple to process synthetic milk and lactate it from my nipples. Both biologically and flavor wise, my milk is indistinguishable from the real thing.”</i> [bess.name] sounds rather proud of that fact.");

	clearMenu();

	if (bess.biggestTitSize() > 0) addButton(0, "Lactate", bessStartLactation);
	else addDisabledButton(0, "Lactate", "Start Lactation", "[bess.name] first needs at least some breastflesh in order to lactate.");

	addButton(1, "StopLactate", bessStopLactation);

	addButton(14, "Back", bessFunctionsMenu);
}

public function bessStartLactation():void
{
	clearOutput();
	bessHeader();

	bess.milkMultiplier = 50;
	bess.milkFullness = 100;

	if (bessIsSub()) output("You order [[bess.name] to start lactating");
	else output("You request that [bess.name] start lactating");
	output(" and [bess.heShe] seems happy to");
	if (bessIsDom()) output(" indulge you.");
	else output(" comply.");

	output("\n\n");
	if (bessIsDom()) output("<i>“For SOME");
	else output("<i>“Um, for </i>some<i>");
	output(" reason my designers made the way I activate my lactation mode quite involved, so this may take a moment.”</i> [bess.name]");
	if (bessIsDom()) output(" huffs");
	else output(" apologises in advance");
	output(", and then gets to it.");

	bessTopStripScene();

	output("\n\nIt seems [bess.name] needs to induce lactation in a very similar way to a nursing mother. There’s a good chance JoyCo, being a medical company, thought it was important for [bess.name] to know this particular method. That, or the more likely scenario; [bess.name]’s developers were just a bunch of pregophiles.");

	output("\n\nCupping one of [bess.hisHer] [bess.breastLight] in one hand, [bess.name] begins to gently stroke it like a mother stimulating prolactin. [bess.HeShe] methodically massages each and every part with a flushing expression.");

	output("\n\nThe");
	if (bess.hairLength > 0) output(" [bess.hairColor] haired");
	else output(" bald");
	output(" synthetic seems keenly aware of your eyes on [bess.hisHer] every action, lewdly watching [bess.himHer] massage [bess.hisHer]");
	// var options:Array = [0, 1, 2, 3, 4, 7, 11, 15, 19, 24];
	if (bess.biggestTitSize() >= 19) output(" mountainous");
	else if (bess.biggestTitSize() >= 11) output(" ample");
	else if (bess.biggestTitSize() >= 3) output(" modest");
	else output(" tiny");
	output(" mounds.");

	output("\n\n<i>“Kind of feels weird having you watch me like this. I feel a bit tingly...”</i> [bess.name] remarks as [bess.heShe] touches [bess.himHer]self in front of you. You remark that [bess.heShe] is spending a lot of time on one breast, and the " + bess.mf("male android","android girl")+" huffs.");

	output("\n\n<i>“Well of course, I’ve only got two hands!”</i> That’s an easily solved problem. You move up behind [bess.himHer] and reach around, gently caressing her other [bess.breastNoun].");

	output("\n\nYou feel [bess.himHer] stiffen up at first in surprise, and then relax into your chest with a pleasured sigh. With [bess.himHer] massaging one and you the other, it’s going to take half the time.");
	
	output("\n\nIt’s not long before you feel [bess.name]’s "+bessAssSize()+" ass unconsciously rubbing against your crotch. [Bess.HeShe] seems to be getting really worked up by having [bess.hisHer] [bess.breastsLight] milked.");

	output("\n\nYou’re getting all worked up by [bess.hisHer] heated moans and trembling thighs");
	if (pc.hasCock()) output(", and especially [bess.hisHer] [bess.assTone] buttocks squeezing and caress the underside of your [pc.cocksNounSimple].");
	else if (bess.hasCock()) output(". [bess.HisHer] [bess.cock] is pressed hard and erect against [bess.hisHer] [bess.belly].");
	else if (pc.hasVagina()) output(", your [pc.pussyLight] getting all wet.");
	else output(".");
	output(" The simple breast massage has gotten fairly intense, and now both of you are looking for sexual relief.");

	output("\n\nSliding your arms around [bess.hisHer] waist, you seize [bess.hisHer] [bess.nipples] in your fingers and give them a gentle tug. Immediately [bess.name] turns into a quivering mess and lets an incoherent yet pleased noise, clearly loving them being toyed with.");
	if (bessIsDom()) output(" <i>“Tug”</i>");
	else output(" <i>“Please tug”</i>");
	output(" and milk my udders, "+ bessPCSexName() +"!”</i>");

	output("\n\n[Bess.HisHer] own hands shift underneath [bess.hisHer] [bess.breastsLight] and begin to massage them while you tease [bess.hisHer] [bess.nipples]. It’s not long before they’re bubbling with [bess.milk], [bess.hisHer] frothy fluid pouring down her supple breast flesh and running across your teasing fingers.");

	output("\n\n<i>“Just like that, "+ bessPCSexName() +" - milk my naughty udders!”</i> [bess.name]");
	if (bessIsDom()) output(" orders");
	else output(" breathily begs");
	output(" you. You squeeze [bess.hisHer] [bess.nipples] between your thumb and fingers, milking her like a farm animal as [bess.hisHer] [bess.milk] lewdly sprays out. You could fill a bucket with [bess.hisHer] it!");

	if ((pc.hasCock() || pc.hasVagina()) && pc.genitalSpot <= 1)
	{
		output("\n\nNow that she’s started lactating, [bess.name] turns to you with a lusty look in [bess.hisHer] eyes. <i>“You should sit down, "+ bessPCSexName() +",");
		if (!pc.isNude()) output(" and take off your clothes");
		else if (pc.biped()) output(" and spread your legs");
		else output(" and prepare yourself");
		output(".”</i>");
		if (bessIsSub()) output(" For a change of pace you do as [bess.heShe] requests.");
		else output(" You do as [bess.heShe] requests, though you wonder what [bess.heShe] has in mind.");

		output("\n\nDropping to [bess.hisHer] knees in front of you, [bess.name] continues to stroke [bess.hisHer] freshly lactating tits, caressing [bess.hisHer] [bess.nipples] with [bess.hisHer] fingers. At the same time, [bess.heShe]");
		if (pc.hasCock()) output(" takes [pc.oneCock] into [bess.hisHer] mouth, sucking on it <i>long</i> and <i>hard</i>.");
		else output(" buries [bess.hisHer] face in your [bess.pussyNounSimple], sticking [bess.hisHer] tongue and lapping hungrily inside.");

		output("\n\nTaken aback by [bess.hisHer] boldness, you reel in the sensations of [bess.himHer] going down on your");
		if (pc.hasCock()) output(" achingly erect cock");
		else output(" thoroughly wet gash");
		output(". [Bess.HeShe] passionately");
		if (pc.hasCock()) output(" sucks you off");
		else output(" laps at your folds");
		output(" as [bess.heShe] massages and squeezes [bess.hisHer] freshly drooling udders, spurting [bess.hisHer] [bess.milk] on the ground beneath you.");

		if (pc.hasCock())
		{
			output("\n\nIt’s not long before you’re arching your back and burying your [pc.cockLight] in [bess.hisHer] throat hole. You shoot your [bess.cumFlavor] [bess.cumNoun] without restraint into her gaping synthetic neck, spilling your hot seed directly down into [bess.hisHer] stomach. Your hands reach up and grab the back of [bess.hisHer] head, holding onto it as you utterly blow your load.");
		}
		else
		{
			output("\n\nIt’s not long before you’re arching your back and pushing your [pc.pussyLight] right into [bess.hisHer] face. You cream yourself right in [bess.hisHer] face, your [pc.girlCum] splattering right against [bess.hisHer] mouth in a ecstatic, gooey gush. Your hands reach up and grab the back of [bess.hisHer] head, holding onto it as you explosively cum against [bess.hisHer] lips.");
		}

		output("\n\n[bess.name] lets out a low, trembling moan as [bess.heShe] takes your");
		if (!pc.hasCock()) output(" girl");
		output(" spunk to the face. In the process of you cumming and playing with [bess.hisHer] tits [bess.heShe] also creams [bess.himHer]self");
		if (bess.hasCock()) output(", [bess.hisHer] [bess.cock] shooting [bess.hisHer] [bess.cum] all over the place.");
		else if (bess.hasVagina()) output(", [bess.hisHer] [bess.pussy] shooting [bess.hisHer] [bess.girlCum] all over the place.");
		else output(".");
		output(" [Bess.HisHer] [bess.nipples] fire spastic spurts of [bess.milk] everywhere, almost like a separate ejaculation of their own.");

		output("\n\nAfterwards [bess.name] wipes off [bess.hisHer] face. There is a truly intoxicated look in [bess.hisHer] [bess.eyeColor] eyes, almost as if [bess.heShe]’s utterly drunk off playing with [bess.hisHer] [bess.nipplesNoun] and giving you head.");
	}
	else
	{
		output("\n\n[bess.name] shudders in your arms and suddenly creams [bess.himHer]self. It seems [bess.hisHer] nipples really are sensitive, especially when [bess.heShe]’s lactating!");
	}

	output("\n\n<i>“I guess that that, then? Maybe my designers weren’t so crazy after all.</i> [bess.name] states in a dreamy voice, [bess.milk] drooling from [bess.hisHer] [bess.nipplesLight]. It’s definitely a different kind of ‘on’ switch.");

	output("\n\n<b>[bess.name] is now lactating from [bess.hisHer] [bess.nipplesNoun]!</b>");

	pc.orgasm();
	bess.orgasm();
	bessFunctionsMenu();
}

public function bessStopLactation():void
{
	clearOutput();
	bessHeader();

	output("<i>“Wha- don’t lactate any more?</i> [bess.name] sounds thoroughly disappointed. It seems the "+ bess.mf(" male synthetic", "synthetic girl") +" really likes leaking [bess.milk] from [bess.hisHer] breasts.");

	output("\n\n<i>“... Oh well. I guess it </i>is<i> a waste of my resources if you aren’t going to enjoy it,”</i> [bess.heShe] grudgingly concedes. With a simple tweak of [bess.hisHer] nipples, [bess.hisHer] milk suddenly stops flowing.");

	bess.milkMultiplier = 0;
	bess.milkFullness = 0;

	output("\n\n... What, <i>that’s it</i>? No kinky breast massages, nothing? Seems it’s a lot simpler to turn that mode on than it is to turn it off again.");

	output("\n\n");
	if (bess.isFeminine()) output("Wearing the world's biggest pout");
	else output("With a downhearted sigh");
	output(", [bess.name] goes off to look for something else to do. At least the ship will be saving money on breast pads.");

	bessFunctionsMenu();
}

public function talkToBessAboutBodyShape():void
{
	clearOutput();
	bessHeader();

	output("<i>“My body shape is easily changed. What would you like me to alter...?</i>");

	clearMenu();
	addButton(0, "Hips", talkToBessAboutHips);
	addButton(1, "Butt", talkToBessAboutButt);
	addButton(2, "Tone", talkToBessAboutTone);
	addButton(3, "Stomach", talkToBessAboutStomach);
	addButton(4, "Thickness", talkToBessAboutThickness);

	addButton(14, "Back", bessFunctionsMenu);
}

public function talkToBessAboutHips():void
{
	clearOutput();
	bessHeader();

	output("<i>“You know what they say; it’s all in the hips! What size were you thinking of, "+ bessPCName() +"?”</i>");

	clearMenu();
	addButton(0, "Boyish", setBessHipSize, 0);
	addButton(1, "Slender", setBessHipSize, 2);
	addButton(2, "Average", setBessHipSize, 4);
	addButton(3, "Ample", setBessHipSize, 8);
	addButton(4, "Voluptuous", setBessHipSize, 10);
	addButton(5, "Massive", setBessHipSize, 16);

	addButton(14, "Back", bessFunctionsMenu);
}

public function setBessHipSize(newRating:int):void
{
	changeBessCurvy(newRating, BESS_CURVE_HIPS);
}

public function talkToBessAboutButt():void
{
	clearOutput();
	bessHeader();

	output("<i>“My ass, huh? Were you thinking of putting some junk in this trunk, or taking some out, "+ bessPCName() +"?”</i>");

	clearMenu();
	addButton(0, "Boyish", setBessButtSize, 0);
	addButton(1, "Slender", setBessButtSize, 2);
	addButton(2, "Average", setBessButtSize, 4);
	addButton(3, "Ample", setBessButtSize, 8);
	addButton(4, "Voluptuous", setBessButtSize, 10);
	addButton(5, "Massive", setBessButtSize, 16);

	addButton(14, "Back", bessFunctionsMenu);
}

public function setBessButtSize(newRating:int):void
{
	changeBessCurvy(newRating, BESS_CURVE_BUTT);
}

public function talkToBessAboutTone():void
{
	clearOutput();
	bessHeader();

	output("<i>“Good thing I don’t have to do things the hard way like you organics. How toned were you thinking, "+ bessPCName() +"?”</i>");

	clearMenu();
	addButton(0, "Muscular", setBessTone, 100);
	addButton(1, "SemiMuscular", setBessTone, 70);
	addButton(2, "Average", setBessTone, 50);
	addButton(3, "SemiSoft", setBessTone, 30)
	addButton(4, "Soft", setBessTone, 0);

	addButton(14, "Back", bessFunctionsMenu);
}

public function setBessTone(newTone:int):void
{
	changeBessToneThickness(newTone, true);
}

public function talkToBessAboutThickness():void
{
	clearOutput();
	bessHeader();

	output("<i>“Good thing I don’t have to do things the hard way like you organics. How thick were you thinking, "+ bessPCName() +"?”</i>");

	clearOutput();
	addButton(0, "Thick", setBessThickness, 100);
	addButton(1, "SemiThick", setBessThickness, 70);
	addButton(2, "Average", setBessThickness, 50);
	addButton(3, "SemiThin", setBessThickness, 30);
	addButton(4, "Thin", setBessThickness, 0);

	addButton(14, "Back", bessFunctionsMenu);
}

public function setBessThickness(newThickness:int):void
{
	changeBessToneThickness(newThickness, false);
}

public function changeBessToneThickness(newValue:int, asTone:Boolean):void
{
	clearOutput();
	bessHeader();

	output("Changing [bess.hisHer] " + (asTone ? "tone" : "body thickness") + " is a rather quick process. [bess.name] simply shifts around the insides of [bess.hisHer] FlexMetal body, and before you know it, [bess.heShe]");
	if (asTone)
	{
		if (newValue == 100) output(" is completely ripped");
		if (newValue == 70) output(" has a nice set of muscles");
		if (newValue == 50) output(" is a nice mix of soft curves and toned muscle");
		if (newValue == 30) output(" is nice and plushy, without being overly so");
		else output(" is soft and flesh");
	}
	else
	{
		if (newValue == 100) output(" is incredibly broad");
		if (newValue == 70) output(" is thicker than average");
		if (newValue == 50) output(" is of average size");
		if (newValue == 30) output(" is thinner than average");
		else output(" is incredibly thin");
	}
	output(".");

	output("\n\n<b>[bess.name] now has a ");
	if (asTone) output(bessTone());
	else output(bessThickness());
	output(" body!</b>");

	bessFunctionsMenu();
}

public function talkToBessAboutStomach():void
{
	clearOutput();
	bessHeader();

	output("<i>“My stomach, huh? Well, I can change that fairly easily. What size were you thinking, , "+ bessPCName() +"?”</i>");

	clearMenu();
	addButton(0, "Normal", setBessBelly, 0);
	addButton(1, "Cushy", setBessBelly, 10);
	addButton(2, "Pudgy", setBessBelly, 15);
	addButton(3, "Large", setBessBelly, 20);
	addButton(4, "Pregnant", setBessBelly, 30);
	addButton(5, "Full", setBessBelly, 40);
	addButton(6, "Expansive", setBessBelly, 50);
	addButton(7, "Excessive", setBessBelly, 60);
	addButton(8, "Over-inflated", setBessBelly, 80);
	addButton(9, "Massive", setBessBelly, 90);
	addButton(10, "StupidlyHuge", setBessBelly, 100);
	
	addButton(14, "Back", bessFunctionsMenu);
}

public function setBessBelly(newRating:int):void
{
	changeBessCurvy(newRating, BESS_CURVE_BELLY);
}

private static const BESS_CURVE_BUTT:uint = 0;
private static const BESS_CURVE_HIPS:uint = 1;
private static const BESS_CURVE_BELLY:uint = 2;

public function changeBessCurvy(newRating:int, targetRating:uint):void
{
	clearOutput();
	bessHeader();

	var currRating:Number = -1;

	if (targetRating == BESS_CURVE_BUTT) currRating = bess.buttRatingRaw;
	else if (targetRating == BESS_CURVE_HIPS) currRating = bess.hipRatingRaw;
	else targetRating = bess.bellyRatingRaw;

	// Increase
	if (newRating > currRating)
	{
		output("<i>“A size increase, huh? Easily done. Let me just properly allocate the right amount of MeldMilk, then i’ll need to shift it using my JoyCord.”</i> [bess.name] remarks.");

		if (flags["BESS_CHANGED_CURVES"] == undefined)
		{
			output("\n\nShift it using her JoyCord? You’re not sure what [bess.heShe] means...");
		}

		output("\n\nThe " + bess.mf("male synthetic", "synthetic girl") +" lies on [bess.hisHer] back and spreads [bess.hisHer] thighs. [Bess.HeShe] then raises [bess.hisHer] ass and hips off the ground, lewdly exposing [bess.hisHer] [bess.crotch] to you.");
		
		output("\n\n<i>“... I’ve got to directly pump it into my");
		if (targetRating == BESS_CURVE_BUTT || !bess.hasVagina()) output(" [bess.assNoun]");
		else output(" [bess.pussyNoun]");
		output(" using my JoyCord. You can watch if you want.”</i> [bess.name] winks at you as [bess.heShe] slips [bess.hisHer] silvery, phallic-tipped tail around and between [bess.hisHer] thighs.");
		
		output("\n\nYou can’t help but be turned on as you watch [bess.hisHer] glistening glans naughtily rub against [bess.hisHer]");
		if (targetRating == BESS_CURVE_BUTT || !bess.hasVagina()) output(" [bess.ass]. [bess.name] reaches down and parts [bess.hisHer] cheeks with [bess.hisHer] hands, flashing [bess.hisHer] [bess.asshole] at you.");
		else output(" [bess.pussyNoun]. [bess.name] reaches down and parts [bess.hisHer] puffy lower lips with [bess.hisHer] fingers, flashing [bess.hisHer] moist inner folds at you.");
		
		output("\n\nAs it slowly slides inside of [bess.hisHer] silvery");
		if (targetRating = BESS_CURVE_BUTT || !bess.hasVagina()) output(" pucker");
		else output(" snatch");
		if (bess.hasCock()) output(" [bess.hisHer] [bess.cockLight] jerks and spasms with delight. Dollops of pre-cum drool from [bess.hisHer] [bess.cockHeadLight] and drool onto [bess.hisHer] synthetic belly.");
		else output(" [bess.heShe] lets out a pleasured little moan and arches [bess.hisHer] back. [Bess.HeShe] is enjoying every second of [bess.hisHer] pulsing phallus pushing inside [bess.himHer]self and [bess.heShe] isn’t afraid to show it.");

		output("\n\nOnce it is fully inside of [bess.himHer] you hear an audible sloshing noise. Suddenly lumps are moving along the prehensile pipe and pumping directly into [bess.hisHer]");
		if (targetRating == BESS_CURVE_BUTT || !bess.hasVagina()) output(" [bess.ass]");
		else output(" [bess.pussy]");
		output(". The delightful pressure inside [bess.hisHer] sensitive inner walls forces [bess.hisHer] eyes to roll back. It seems [bess.heShe] is in a state of incalculable bliss right now.");
		
		output("\n\nAdding to the mix and unwilling to be a passive observer, you");
		if (bess.hasCock()) output(" grab [bess.hisHer] [bess.cockNounSimple] and begin to jerk [bess.himHer] off.");
		else if (bess.hasVagina() && targetRating == BESS_CURVE_BUTT) output(" grab [bess.hisHer] tail and begin to use it like a dildo, fucking [bess.himHer] with it as [bess.heShe] is simultaneously inflated.");
		else output(" stick your fingers inside of [bess.hisHer] defenseless [bess.ass] and begin to screw [bess.himHer] with them.");
		output(" [bess.name] lets out a sweet cry and immediately creams");
		if (bess.hasCock()) output("all over [bess.hisHer] stomach and around [bess.hisHer] own cock. [Bess.HeShe] squeezes and spasms lewdly around [bess.hisHer] own extensive length as it simultaneously shoots [bess.hisHer] juice into [bess.himHer].");
		
		output("\n\nAt the same time [bess.name]’s");
		if (targetRating == BESS_CURVE_HIPS) output(" thighs begin");
		else if (targetRating == BESS_CURVE_BUTT) output(" ass begins");
		else output(" stomach begins");
		output(" to swell in size. The transformation seems to turn [bess.himHer] on as [bess.heShe] can’t stop cumming around [bess.hisHer] own tail cock as [bess.hisHer] body bloats up.");
		
		output("\n\nIn the end [bess.hisHer] own spurting cock is dislodged from the pressure of [bess.hisHer] gushing fluid, bursting out of [bess.hisHer]");
		if (targetRating == BESS_CURVE_BUTT || !bess.hasVagina()) output(" ass");
		else output(" pussy");
		output(" and spilling all over the floor. [bess.name] lies there with a thoroughly inflated");
		if (targetRating == BESS_CURVE_HIPS) output(" set of hips and thighs");
		else if (targetRating == BESS_CURVE_BUTT) output(" set of asscheeks");
		else output(" belly");
		output(".");
		
		output("\n\n<b>[bess.name] now has");
		if (targetRating == BESS_CURVE_BUTT)
		{
			bess.buttRatingRaw = newRating;
			output(" a " + bessAssSize() + " ass!");
		}
		else if (targetRating == BESS_CURVE_HIPS)
		{
			bess.hipRatingRaw = newRating;
			output(" " + bessThighSize() + " thighs and hips!");
		}
		else
		{
			bess.bellyRatingRaw = newRating;
			output(" a " + bessBellySize() + " belly!");
		}
		output("</b>");
	}
	else
	{
		output("<i>“A size decrease, huh? I can do that. It’s uh... best done in private, though.”</i> [bess.name] remarks,");
		if (!bessIsDom()) output(" flushing");
		else output(" coughing");
		output(" a little. [Bess.HeShe] does grab a pump before [bess.heShe] leaves.");
		
		output("\n\nWhen [bess.heShe] comes back, [bess.heShe] has a much smaller");
		if (targetRating == BESS_CURVE_HIPS)
		{
			bess.hipRatingRaw = newRating;
			output(" set of hips and thighs");
		}
		else if (targetRating == BESS_CURVE_BUTT)
		{
			bess.buttRatingRaw = newRating;
			output(" set of asscheeks");
		}
		else
		{
			bess.bellyRatingRaw = newRating;
			output(" belly");
		}
		output(". <i>“What do you think...?”</i> [bess.name] models [bess.hisHer] new, more compact look for you.");
		
		output("\n\n<b>[bess.name] now has");
		if (targetRating == BESS_CURVE_HIPS) output(" " + bessThighSize() + " thighs and hips!");
		else if (targetRating == BESS_CURVE_BUTT) output(" a " + bessAssSize() + " ass!");
		else output(" a " + bessBellySize() + " belly!");
		output("</b>");
	}

	flags["BESS_CHANGED_CURVES"] = 1;
	bessFunctionsMenu();
}

public function talkToBessAboutGenitals():void
{
	clearOutput();
	bessHeader();

	output("<i>“Interested in changing things down there?”</i>");

	clearMenu();
	addButton(0, "Cock", talkToBessAboutCock);
	addButton(1, "Pussy", talkToBessAboutPussy);
	if (bess.hasCock()) addButton(2, "Knot", talkToBessAboutKnot, undefined, "Cock Knot", "Whenever [bess.name] penetrates you with [bess.hisHer] cock, it will swell and lock inside until [bess.heShe] has finished cumming inside.");
	else addDisabledButton(2, "Knot", "Knot State", "[bess.name] needs to be sporting a cock to configure it's knottyness!");

	addButton(14, "Back", bessFunctionsMenu);
}

public function talkToBessAboutCock():void
{
	clearOutput();
	bessHeader();

	output("<i>“I have the ability to equip a cock extension to better pleasure you, "+ bessPCName() +". Would you like me to do that?”</i>");

	// All cocks except for Dino cock have girth and length = ½ pc orifice capacity.

	clearMenu();
	addButton(0, "None", 			setBessCockType, -1);
	addButton(1, "Normal", 			setBessCockType, GLOBAL.TYPE_HUMAN);
	addButton(2, "Normal+Balls", 	setBessCockType, -2);
	addButton(3, "Dino", 			setBessCockType, GLOBAL.TYPE_SAURIAN);
	addButton(4, "Equine", 			setBessCockType, GLOBAL.TYPE_EQUINE);
	addButton(5, "Canine", 			setBessCockType, GLOBAL.TYPE_CANINE);
	addButton(6, "Vulpine", 		setBessCockType, GLOBAL.TYPE_VULPINE);
	addButton(7, "Demonic", 		setBessCockType, GLOBAL.TYPE_DEMONIC);
	addButton(8, "Tentacle", 		setBessCockType, GLOBAL.TYPE_TENTACLE);
	addButton(9, "Feline", 			setBessCockType, GLOBAL.TYPE_FELINE);
	addButton(10, "Draconic", 		setBessCockType, GLOBAL.TYPE_DRACONIC);
	addButton(11, "Goo", 			setBessCockType, GLOBAL.TYPE_GOO);
	addButton(12, "Plant", 			setBessCockType, GLOBAL.TYPE_PLANT);

	addButton(14, "Back", bessFunctionsMenu);
}

public function setBessCockType(newType:int):void
{
	clearOutput();
	bessHeader();

	if (newType == GLOBAL.TYPE_SAURIAN)
	{
		if (!bess.hasCock()) bess.cocks.push(new CockClass());
		bess.cocks[0].cType = GLOBAL.TYPE_SAURIAN;
		bess.cocks[0].cLengthRaw = 20;
		bess.cocks[0].cThicknessRatioRaw = 3;
		bess.cocks[0].clearFlags();

		bess.balls = 2;
		bess.ballSizeRaw = 8;

		output("You decide you’d like to equip [bess.name] with the dino cock attachment you purchased from JoyCo. It takes some work to equip [bess.name] with it; it’s a two-person effort just to get it attached. Once you’re done, [bess.heShe] models off [bess.hisHer] prehistorically massive member and balls for your enjoyment. Its girth is clearly something else - you’ve seen smaller tree trunks.");

		output("\n\nThe head of the cock is entirely covered in rounded spikes or nubs. They’re big enough that they look like you could hold on to them. [bess.HisHer] urethra is so big that a regular cock could fit inside of it. The shaft is segmented; each part looks like it has a muscle for squeezing or stretching.");

		output("\n\n<i>“Umm, "+ bessPCName() +", I’m not sure this is going to fit inside you. It seems like it’s used for insemination of city-destroying monsters...”</i> [bess.name] voices [bess.hisHer] concerns about the size of [bess.hisHer] positively preposterous phallus. <i>“Have you checked to see if your health insurance covers this kind of thing?”</i><b> [bess.name] now has a dino cock and balls!</b>");

		if (silly) output("\n\n<b>[bess.name] now has a gigantic ogre cock!</b>");
		else output("\n\n<b>[bess.name] now has a saurian cock!</b>")
	}
	else if (newType == GLOBAL.TYPE_EQUINE)
	{
		if (!bess.hasCock()) bess.cocks.push(new CockClass());
		bess.cocks[0].cType = GLOBAL.TYPE_EQUINE;
		bess.cocks[0].cLengthRaw = 16;
		bess.cocks[0].cThicknessRatioRaw = 2.5;
		bess.cocks[0].clearFlags();
		bess.cocks[0].addFlag(GLOBAL.FLAG_FLARED);

		bess.balls = 2;
		bess.ballSizeRaw = 7;

		output("You decide you’d like to equip [bess.name] with the horse cock attachment you purchased from JoyCo. It takes some work to equip [bess.name] with it, it’s a two-person effort just to get it attached. Once you’re done, [bess.heShe] models off [bess.hisHer] newly fastened horse phallus and balls for your enjoyment.");
		
		output("\n\n[bess.HisHer] new equine cock flares at you, it looks ready and raring to go. <i>“What do you think, "+ bessPCName() +", did you want to take a ride?”</i><b> [bess.name] now has a horse cock and balls!</b>");

		output("\n\n<b>[bess.name] now has an equine cock and balls!</b>");
	}
	else if (newType == GLOBAL.TYPE_CANINE)
	{
		var knot:Boolean = bess.hasKnot();

		if (!bess.hasCock()) bess.cocks.push(new CockClass());
		bess.cocks[0].cType = GLOBAL.TYPE_CANINE;
		bess.cocks[0].cLengthRaw = 12;
		bess.cocks[0].cThicknessRatioRaw = 2;
		bess.cocks[0].clearFlags();
		if (knot) bess.cocks[0].addFlag(GLOBAL.FLAG_KNOTTED);
		bess.cocks[0].addFlag(GLOBAL.FLAG_TAPERED);

		bess.balls = 2;
		bess.ballSizeRaw = 5;

		output("You decide you’d like to equip [bess.name] with the canine cock attachment you purchased from JoyCo. It’s not that hard to attach, though it is interesting feeling where the knot should go. Once you’re done, [bess.heShe] models off [bess.hisHer] newly fastened canine cock and balls, replete with tapered tip and knot.");

		if (!bess.hasKnot())
		{
			output("\n\nSince you don’t like knots, [bess.name] immediately de-swells it. <i>“Kind of interesting to have a canine cock without a knot. Feels very... spear-like.”</i>");
		}
		else
		{
			output("\n\nAs [bess.heShe] flexes it, [bess.himHer] base expands and [bess.hisHer] eyes do the same. <i>“Whoa, I have the feeling if I stuck into you I could turn around and not slip out. What do you think, time to get a little bit ‘ruff’, "+ bessPCName() +"?”</i>");
		}

		output("\n\n<b>[bess.name] now has a dog cock and balls!</b>");
	}
	else if (newType == GLOBAL.TYPE_TENTACLE)
	{
		if (!bess.hasCock()) bess.cocks.push(new CockClass());
		bess.cocks[0].cType = GLOBAL.TYPE_TENTACLE;
		bess.cocks[0].cLengthRaw = 24;
		bess.cocks[0].cThicknessRatioRaw = 1.5;
		bess.cocks[0].clearFlags();
		bess.cocks[0].addFlag(GLOBAL.FLAG_PREHENSILE);

		bess.balls = 0;
		bess.ballSizeRaw = 0;

		output("You decide you’d like to equip [bess.name] with the tentacle cock attachment you purchased from JoyCo. It’s a slippery sucker to attach (literally) as you fasten the strange <i>“phallus”</i> between [bess.himHer] legs.");
		
		output("\n\nIt swings about as [bess.heShe] swells and shrinks it at will, there’s not many things it couldn’t probe or penetrate. At its tip is a slit where [bess.hisHer] seed can be pumped out into any orifice.");
		
		output("\n\n<i>“Wow, where’s a school-girl when you need one, eh, "+ bessPCName() +"?”</i> [bess.name] cheekily remarks, marvelling at [bess.hisHer] prehensile phallus.");
		
		output("\n\n<b> [bess.name] now has a dangerous looking tentacle cock!</b>");
	}
	else if (newType == GLOBAL.TYPE_GOO)
	{
		if (!bess.hasCock()) bess.cocks.push(new CockClass());
		bess.cocks[0].cType = GLOBAL.TYPE_GOO;
		bess.cocks[0].cLengthRaw = 16;
		bess.cocks[0].cThicknessRatioRaw = 1.5;
		bess.cocks[0].clearFlags();

		bess.balls = 0;
		bess.ballSizeRaw = 0;

		output("You decide you’d like to equip [bess.name] with the goo cock attachment you purchased from JoyCo. You pull out a small ring that seems to be some kind of compact material manipulator. As soon as you attach it to her, [bess.name]’s Meld-Milk insides pour out and form a semi-transparent, metallic looking goo cock!");
		
		output("\n\n<i>“Wow, guess my insides are kind of like that of a metallic goo [bess.boyGirl]...! Imagine the naughty things I can do with this, "+ bessPCName() +", I could probably penetrate even the smallest cracks.”</i> [bess.HeShe] strokes [bess.hisHer] silver gelatinous cock as it ripples about. [bess.HeShe] seems to be able to harden the liquid substance at will.");
		
		output("\n\n<b>[bess.name] now has a goo cock!</b>");
	}
	else if (newType == GLOBAL.TYPE_PLANT)
	{
		if (!bess.hasCock()) bess.cocks.push(new CockClass());
		bess.cocks[0].cType = GLOBAL.TYPE_PLANT;
		bess.cocks[0].cLengthRaw = 12;
		bess.cocks[0].cThicknessRatioRaw = 1.5;
		bess.cocks[0].clearFlags();
		bess.cocks[0].addFlag(GLOBAL.FLAG_PREHENSILE);
		bess.cocks[0].addFlag(GLOBAL.FLAG_TAPERED);

		bess.balls = 0;
		bess.ballSizeRaw = 0;

		output("You decide you’d like to equip [bess.name] with the plant cock attachment you purchased from JoyCo. Technically it’s not a plant cock so much as a ‘bio-organic construct’ grown in a lab, and genetically designed to feed off of [bess.name]’s internal Meld-Milk supply.");
		
		output("\n\nPulling it out of the cryo-stasis canister it came in, you then fasten it to [bess.name]’s crotch extension slot, watching it slowly awaken and bury its roots into [bess.hisHer] body.");
		
		output("\n\nThe packaging said it was based on an organism discovered on one of the outer rim planets, known for mating with both plant and mammalian life-forms. [bess.HisHer] base is a giant open blossom, while in the middle of the petals is a phallic looking stamen with a bulbous head.");
		
		output("\n\nAs the mysterious organism feeds off [bess.hisHer] Meld-Milk it begins to generate pollen contained in a gooey sap. The amber fluid leaks freely from [bess.hisHer] pod-like tip or ‘anther’, and dribbles down [bess.hisHer] new shaft.");
		
		output("\n\n<i>“It kind of tingles, "+ bessPCName() +". I can feel it suckling off me - I can’t say it’s unpleasant.”</i> [bess.name] informs you, testing and flexing [bess.hisHer] symbiotic rod. <i>“I can’t believe they grew this; isn’t JoyCo just amazing?”</i>");
		
		
		output("\n\n<b> [bess.name] now has a Plant Cock!</b>");
	}
	else if (newType == GLOBAL.TYPE_DRACONIC)
	{
		if (!bess.hasCock()) bess.cocks.push(new CockClass());
		bess.cocks[0].cType = GLOBAL.TYPE_DRACONIC;
		bess.cocks[0].cLengthRaw = 16;
		bess.cocks[0].cThicknessRatioRaw = 2;
		bess.cocks[0].clearFlags();
		bess.cocks[0].addFlag(GLOBAL.FLAG_PREHENSILE);

		bess.balls = 0;
		bess.ballSizeRaw = 0;

		output("You decide you’d like to equip [bess.name] with the draconic cock attachment you purchased from JoyCo. When you see it, your immediate impression is this cock is positively majestic in its appearance; truly the phallus of a mythical beast.");
		
		output("\n\nThe draconic cock’s tapered tip hooks like a crescent curving upwards - you imagine there’s very few holes it couldn’t stick into. The muscled and studded base is considerably thicker than the head, it considerably thickens and curves as your eyes travel down the muscled, studded base, each throbbing curve a promise of intense sexual pleasure.");

		if (!bess.hasKnot())
		{
			output("\n\n[bess.name]’s dragon cock has a knot, but since you don’t like them [bess.heShe] immediately shrinks it away.");
		}
		else
		{
			output("\n\nDown near the base is a draconic bulb-like knot. Just beyond the base is a sudden lack of girth before [bess.hisHer] cock connects to [bess.hisHer] waist - here the cock is half the size of the actual knot. If one wasn’t careful, a clenching orifice might hook into this deep spot and refuse to unfasten until the fierce phallus has become completely flaccid.");
		}

		output("\n\nOnce it is attached, [bess.name] flexes [bess.hisHer] new cock. As it expands [bess.hisHer] eyes do the same. <i>“This is really something else, "+ bessPCName() +"! I kind of feel fierce when I’m wearing this, like nothing can stop me...”</i>");

		output("\n\n<b>[bess.name] now has a draconic cock and balls!</b>");
	}
	else
	{
		if (newType == -1)
		{
			if (bess.hasCock()) bess.removeCock();
			bess.balls = 0;
			bess.ballSizeRaw = 0;
		}
		else
		{
			if (!bess.hasCock()) bess.cocks.push(new CockClass());
			bess.cocks[0].cType = newType;
			bess.cocks[0].cLengthRaw = 12;
			bess.cocks[0].cThicknessRatioRaw = 1.5;
			bess.cocks[0].clearFlags();

			bess.balls = 2;
			bess.ballSizeRaw = 4;
		}

		if (newType == -2)
		{
			bess.balls = 0;
			bess.ballSizeRaw = 0;
		}

		output("\n\n<i>“Just one second, "+ bessPCName() +", while I make the adjustments.”</i> [bess.name] darts off and when [bess.heShe] comes back,");
		if (newType == -1) output(" [bess.hisHer] cock is gone - though where [bess.heShe]’s stored it is a mystery. <i>“Do you like me better this way, "+ bessPCName() +"?”</i>\n\n<b>[bess.name] has removed [bess.hisHer] cock!</b>");
		else output(" she’s sporting "+ bessCockType() +"! [bess.HeShe] eagerly models it off for you. <i>“Do you like it, "+ bessPCName() +"?”</i> <b>[bess.name] now has a [bess.cock]!</b>”</i>");
	}

	bessFunctionsMenu();
}

public function talkToBessAboutPussy():void
{
	clearOutput();
	bessHeader();

	output("<i>“Did you want me to");
	if (!bess.hasVagina()) output(" have a pussy");
	else output(" get rid of my pussy");
	output(", "+ bessPCName() +"?”</i> [bess.name] asks.");

	clearMenu();
	
	if (!bess.hasVagina()) addButton(0, "GetPussy", bessGainPussy);
	else addDisabledButton(0, "GetPussy");

	if (bess.hasVagina()) addButton(1, "LosePussy", bessRemovePussy);
	else addDisabledButton(1, "LosePussy");

	addButton(14, "Back", bessFunctionsMenu);
}

public function bessRemovePussy():void
{
	clearOutput();
	bessHeader();

	output("In what can only be described as bizarre to watch, [bess.name]’s silvery vagina moves up just slightly into her body. A skin covered panel then slides down and out, pressing into the empty spot and filling the gap. What is left is a perfectly smooth groin area.");
	
	output("\n\n<b>[bess.name] no longer has a [bess.pussyNounLight]!</b>");

	bess.removeVagina();

	bessFunctionsMenu();
}

public function bessGainPussy():void
{
	clearOutput();
	bessHeader();

	output("In what can only be described as bizarre to watch, [bess.name]’s flat groin slides in and up, like a hatch opening. From inside a silvery vagina pushes out, filling the gap.");

	bess.vaginas.push(new VaginaClass());
	
	output("\n\n<b>[bess.name] now has a [bess.pussyNounLight]!</b>");

	bessFunctionsMenu();
}

public function talkToBessAboutKnot():void
{
	clearOutput();
	bessHeader();

	output("<i>“Did you want me to");
	if (bess.hasKnot()) output(" get rid of my knot");
	else output(" have a knot");
	output(", "+ bessPCName() +"?”</i> [bess.name] asks.");

	clearMenu();

	if (!bess.hasKnot())
	{
		addButton(0, "GainKnot", bessGainKnot);
		addDisabledButton(1, "LoseKnot");
	}
	else
	{
		addDisabledButton(0, "GainKnot");
		addButton(1, "LoseKnot", bessRemoveKnot);
	}

	addButton(14, "Back", bessFunctionsMenu);
}

public function bessGainKnot():void
{
	clearOutput();
	bessHeader();

	output("[bess.name]’s [bess.cock] suddenly begins to flare at the base. The entire process takes mere moments. Afterwards. [bess.heShe] has a muscular lump at the stem of [bess.hisHer] [bess.cockNounSimple].");

	output("\n\nFlexing it and watching it swell and recede, [bess.name] gives a small grin. <i>“Wow, I could trap anyone with this! Fancy a ride, "+ bessPCName() +"?”</i>");

	bess.cocks[0].addFlag(GLOBAL.FLAG_KNOTTED);

	output("\n\n<b>[bess.name]’s [bess.cockNounSimple] now has a [bess.knot]!</b>");

	bessFunctionsMenu();
}

public function bessRemoveKnot():void
{
	clearOutput();
	bessHeader();

	output("Within seconds of your request being issued, [bess.name]’s [bess.knot] shrinks until it is completely gone. The signiture lump is now missing from the base of [bess.hisHer] [bess.cockNounSimple].");
	
	output("\n\n<b>[bess.name] no longer has a knot!</b>");

	bess.cocks[0].removeFlag(GLOBAL.FLAG_KNOTTED);

	bessFunctionsMenu();
}

public function talkToBessAboutCum():void
{
	clearOutput();
	bessHeader();

	output("<i>“My cum? Which one in particular...?”</i> [bess.name] asks.");

	if (bess.hasCock()) addButton(0, "CumFlavor", talkToBessAboutCumFlavour, true);
	else addDisabledButton(0, "CumFlavor");

	if (bess.hasVagina()) addButton(1, "GirlCum F", talkToBessAboutCumFlavour, false);
	else addDisabledButton(1, "GirlCum F");

	addButton(14, "Back", bessFunctionsMenu);
}

public function talkToBessAboutCumFlavour(asCock:Boolean):void
{
	clearOutput();
	bessHeader();

	output("<i>“Flavoring is a cinch. Any particular taste you’d fancy? I could give you test tastings, if you want.”</i> [bess.name] offers.");

	var opts:Array = ["normal", "chocolate", "candy", "coffee", "vanilla", "strawberry", "caramel", "banana", "coconut", "maple syrup", "cherry", "choc-vanilla", "whisky", "honey", "rum", "vodka", "beer", "orange", "blueberry", "raspberry", "lime"];
	var vals:Array = [0, GLOBAL.FLUID_TYPE_CHOCOLATE_MILK, GLOBAL.FLUID_TYPE_CANDY, GLOBAL.FLUID_TYPE_COFFEE, GLOBAL.FLUID_TYPE_VANILLA, GLOBAL.FLUID_TYPE_STRAWBERRY_MILK, GLOBAL.FLUID_TYPE_CARAMEL, GLOBAL.FLUID_TYPE_BANANA, GLOBAL.FLUID_TYPE_COCONUT, GLOBAL.FLUID_TYPE_MAPLESYRUP, GLOBAL.FLUID_TYPE_CHERRY, GLOBAL.FLUID_TYPE_CHOCVANILLA, GLOBAL.FLUID_TYPE_WHISKY, GLOBAL.FLUID_TYPE_HONEY, GLOBAL.FLUID_TYPE_RUM, GLOBAL.FLUID_TYPE_RUM, GLOBAL.FLUID_TYPE_VODKA, GLOBAL.FLUID_TYPE_BEER, GLOBAL.FLUID_TYPE_ORANGE, GLOBAL.FLUID_TYPE_BLUEBERRY, GLOBAL.FLUID_TYPE_RASPBERRY, GLOBAL.FLUID_TYPE_LIME];

	clearMenu();

	var optSlot:int = -1;
	for (var i:int = 0; optSlot < opts.length; i++)
	{
		if (i > 0 && (i + 1) % 15 == 0)
		{
			addButton(i, "Back", bessFunctionsMenu);
			continue;
		}
		else
		{
			optSlot++;
		}

		addButton(i, StringUtil.toTitleCase(opts[optSlot]), bessSetCumFlavor, [asCock, vals[optSlot]]);
	}
}

public function bessSetCumFlavor(opts:Array):void
{
	clearOutput();
	bessHeader();

	var asCock:Boolean = opts[0];
	var flav:int = opts[1];

	output("There are no obvious outward signs other than a short period of blinking by the " + bess.mf("male synthetic", "android girl") +".");

	output("\n\n<i>“... All done! Next time I cum, it will taste ");
	if (asCock)
	{
		bess.cumType = flav;
		output(bessCumFlavor());
	}
	else
	{
		bess.girlCumType = flav;
		output(bessGirlCumFlavor());
	}
	output(" !</i> [bess.name] cheerfully exclaims.");
	
	output("\n\n<b>[bess.name]’s");
	if (asCock) output(" cum");
	else output(" girl cum");
	output(" now tastes like ");
	if (asCock) output(bessCumFlavor());
	else output( bessGirlCumFlavor());
	output("!</b>");

	bessFunctionsMenu();
}


Clothing & Acc

You ask [bess.name] to open [bess.hisHer] closet so that you can select a new outfit and accessories for [bess.himHer]. [bess.HeShe] shows you all the clothes that[bess.heShe] owns.

// Bess always has access to "Nude". Others are bought from the JoyCo catalogue. many of these are new additions (See Clothing Additions section towards the end of the document).

// Ears, Horns, Tails and Wings can be purchased in 'sets' from the JoyCo catalogue and then individually activated. If none are purchased, Bess only has the default. 

// Choosing the Glasses or Katana triggers bessGlasses or bessKatana boolean true or false (equipped or unequipped).



[Outfits] [Underwear Tops] [Underwear Bottoms] [Ears] [Horns]
[Tails] [Wings] [Items]


Outfits (25)

Casual Clothes
Protective Jacket
UGC Uniform
Sleep Shirt
Top And Skirt
Business Clothes
Librarian Outfit
Latex Bodysuit
China Dress
Kimono
Short Kimono
Maid Outfit
Nurse Outfit
Miko Outfit
Apron
Seifuku
Schoolgirl Outfit
Cheerleader Uniform
Waitress Uniform
Bunny Outfit
Battle Ballgown
Military Outfit
Space Pirate Outfit
Goth-Lolita Outfit
Tank-Top & Mini Skirt


Underwear Tops (16)

Normal Bra
White bra
Striped Bra
Frilly Bra
Girly Bra
String Tie Top
Furry Bra
Sarashi
Corset
Underbust Corset
Sports Bra
Shibari Top
Pasties
Babydoll
Lacy Bra
Black Lace Bra


Underwear Bottoms (13)

Normal Underwear
Stockings & Panties
String Tie Bottoms
Boxers
Thong
Frilly Panties
Girly Panties
White Panties
Shibari Bottom
Striped Panties
Lowrider Panties
Furry Panties
Black Lace Panties
Boy Shorts


Change Clothes Message

<b>[bess.name] is now {wearing [bess.gear]/naked}!</b>


Ears

Human (Default)
Equine - 1
Bovine - 2
Canine - 3
Feline - 4
Vulpine - 5
Elfin/Pointy Ears = 8
Draconic Ears = 11
Deer - 21
Mouse - 26
Bunny - 9

Horns
None (Default)
Bovine - 2
Draconic - 11
Demonic - 15
Deer - 21

Tails
None (Default)
Equine - 1
Bovine - 2
Canine - 3
Feline - 4
Vulpine - 5
Draconic - 11
Demonic - 15
Shark - 19
Deer - 21
Mouse - 26
Bunny - 9
Kitsune (Tail type 5, tails = 9)

Wings
None (Default)
Bee - 6
Draconic - 11
Demonic - 15
Angel / Feathered - None Yet

Items

Katana - sets bessKatana = true or false
Glasses - sets bessGlasses = true or false



Change Accessories Message

<b>Bess now has {[bess.ears]/[bess.horns]/[bess.wings]/[bess.tails]/a katana/glasses on}!</b>

OR

<b>Bess has removed [bess.hisHer] {horns/wings/tail/katana/glasses}!</b>





Product Catalogue

You download the latest JoyCo product catalogue for {Bess-13/Ben-14_ units into one of the ship's terminals. A holographic projection of specialized clothing, accessories, and upgrades appear on the screen. 

What are you interested in purchasing?

//Purchases alter which options unlock in the Functions -> Clothing & Acc Menu (where the clothes and accessories can actually be changed). 




[Outfits] [Underwear Tops] [Underwear Bottoms] [Accessory Sets] [Items] [Cocks]

Outfits / Underwear Tops / Underwear Bottoms

// See the Functions -> Clothing and Acc Menu for a list of all the purchasable clothes and accessories for Bess/Ben!

Accessory Sets

What set would you like to purchase?

Equine set (Allows Bess to set Equine Tail and Ears) - 250 Creds
Bovine Set (Allows Bess to set Bovine Tail, Ears and Horns) - 250 Creds
Canine Set (Allows Bess to set Canine Tail and Ears) - 250 Creds
Feline Set (Allows Bess to set Feline Tail and Ears) - 250 Creds
Vulpine Set (Allows Bess to set Vulpine Tail and Ears) - 250 Creds
Bunny Set (Allows Bess to set Leporine Tail, Ears) - 250 Creds
Bee Set (Allows Bess to set Bee Wings) - 250 Creds
Draconic Set (Allows Bess to set Draconic Ears, Tail, Wings and Horns). - 500 Creds
Demonic Set (Allows Bess to set Demonic Ears, Tail, Wings and Horns) - 500 Creds
Shark Set (Allows Bess to set Shark Ears and Tail) - 250 Creds
Deer Set (Allows Bess to set Deer Ears, Tail and Horns) - 250 Creds
Mouse Set (Allows Bess to set Mouse Ears and Tail) - 250 Creds
Angel Set (Allows Bess to set Angel/White Feathered Wings) - 500 Creds

Items

What JoyCo product would you like to purchase for [bess.name]?

Katana (Allows Bess to equip Katana in Accessory Menu) - 1000 Creds
Glasses (Allows Bess to equip Glasses in Accessory Menu) - 500 Creds


Cocks

What kind would you like to purchase?

//Purchases alter which cock options unlock in the Functions -Menu (where the upgrades can actually be activated). See Functions Menu / Cock or value guide for details.

Dino Cock - 1500 credits
Horse Cock - 500 credits
Dog Cock - 500 credits
Fox Cock - 500 Credits
Demon Cock - 500 credits
Tentacle Cock - 1000 credits
Cat Cock - 500 credits
Goo Cock - 1000 credits
Plant Cock - 1000 credits
Dragon Cock - 1000 credits


Purchase Message (All)

You transfer the credits to JoyCo and place your order. It’s not long before a warp-space delivery service is dropping off a package to your spaceship hangar.


New Pussy Type: Synthetic

Adjective List Below:
metallic
synthetic
artificial
inorganic
mechanical
automated
designer made
robotic
chrome
silvery
sleek
polished
chrome 
tinny
gynoid
steely
plated

New Cock Type: Synthetic

Adjective List Below:
metallic
synthetic
artificial
inorganic
mechanical
automated
designer made
robotic
chrome
silvery
sleek
polished
chrome 
tinny
android
steely
mineral
motorized
vibrating
humming

New Cock Type: Goo
Description: Cock that is a semi-solid liquid, generally soft and gelatinous when unaroused and stiffer when erect. Able to penetrate most crevasses. Often shoots goo sperm (Either a self-generated sperm-like compound, or seperating bits off the goo-cock and shooting it inside).

Adjective List Below:
gelatinous
gooey
slimey
jellied
glutinous
jellied
jelly-like
amorphous
gummy
semi-solid
squishy
smooth
gloppy
viscid
viscous
spongy
gel-like

New Cum Type: goocum
Description: Goo-like cum, usually shot from goo cocks. Used in Bess/Ben cum scenes as a semi-sentient substance that feeds off cum and girlcum, expands and multiplies. Likes to creep into the womb or deep bowels and release aphrodisiacs and massage, milking its host for more liquid. Obviously does not have to work like this, but Bess/Ben's goo cum does.

Adjective List Below:
jelly jism
slime spunk
goo cum
New Cock Type: Saurian
Description: A cock that is typically mammoth in size. Human shaped with rounded spikes/bumps/nubs around the glans and a segmented shaft. The shaft segments contract and expand to push cum out (also milk cocks when used for urethra fucking).


Adjectives:
saurian
dino
reptilian
prehistoric
archaic
jurassic
scaley
nubbly
spikey
bumpy
pulsing
ripply
segmented

New Cock Type: Plant
Description: Base is a giant open blossom, in the middle of the petals is a phallic looking stamen with a bulbous head. Pollen-filled sap drips constantly from the pod-like tip or "anther", dribbling down the shaft. The shaft is like a collection of vines. The vines often grow when moist, thickening and stretching. 
The sap is stickier than regular semen, meaning once it fills an orifice very little dribble outs. Instead, the sap needs to break down naturally.

Adjectives:
viney
plant
botanic
sap-covered
flowery
organic
blossom
tendril
flourishing
blooming
floral

Clothing Additions


Armor (Outfits)

Sleep Shirt
Class Name: Sleepshirt
ShortName: Sleep Shirt
LongName: sleep shirt
thisDescription: a long, comfortable sleep shirt
thisTooltip: This is a long, comfortable looking sleep shirt. It is made of incredibly soft fabric.

Top And Skirt
Class Name: TopAndSkirt
ShortName: Top And Skirt
LongName: cute top and skirt
thisDescription: a cute top and skirt
thisTooltip: This is a cute top that looks comfortable to wear, accompanied by a short chic skirt. 

Business Clothes
Class Name: BusinessClothes
ShortName: Business Clothes
LongName: business clothes
thisDescription: a set of high-powered business clothes
thisTooltip: These business clothes are perfect for any high-powered corporate function. They're also perfect for someone aiming to make their way up the food chain. 
Librarian Outfit
Class Name: Librarian
ShortName: Librarian Outfit
LongName: librarian outfit
thisDescription: a librarian outfit
thisTooltip: This long sleeve shirt, cardigan, and knee length skirt rides the line between conservative and sexy. Which side it falls on depends on how many buttons you have done up. 

Latex Bodysuit
Class Name: LatexBodysuit
ShortName: Latex Bodysuit
LongName: latex bodysuit
thisDescription: a shiny, full-body latex bodysuit
thisTooltip: This snug fitting full-body latex bodysuit leaves nothing up to the imagination. It is also very shiny. There is a zipper starting at the neck and ending just above the crotch. 

China Dress
Class Name: ChinaDress
ShortName: China Dress
LongName: china dress
thisDescription: a body hugging, one-piece Chinese dress
thisTooltip: This body hugging, one-piece Chinese dress (also known as a "cheongsam") With a high collar, short sleeves, and knee length skirt, it is very eye catching - especially the split on either side trailing up the thigh. 

Kimono
Class Name: Kimono
ShortName: Kimono
LongName: kimono
thisDescription: an elegantly designed Japanese kimono 
thisTooltip: This kimono is designed of fine silk with brilliant patterns adorning every inch of fabric. It is worn with a specially designed waist sash or "obi". 

Short Kimono
// Useful for those who want a kimono plus some push up skirt & sex action.
Class Name: ShortKimono
ShortName: Short Kimono
LongName: short kimono
thisDescription: a short silk kimono
thisTooltip: This is a fetishized kimono made of silk that only reaches down to the mid thigh. It is worn with a specially designed waist sash or "obi". Often worn by female ninjas. 

Maid Outfit
Class Name: Maid
ShortName: maid outfit
LongName: maid outfit
thisDescription: a frilly French maid outfit
thisTooltip: A sexy French maid outfit, the staple diet of cosplay fetishists everywhere. Every inch of this outfit is lined with frills, from the headpiece to the puffed out skirt. 

Nurse Outfit
Class Name: Nurse
ShortName: Nurse Outfit
LongName: nurse outfit
thisDescription: A tight fitting nurse outfit
thisTooltip: A sexy white and red nurse outfit. It hugs the body and barely covers the crotch, designed to emphasise any natural assets a wearer may have. It comes complete with a nurse's cap, stethoscope, and frilly stockings. 

Miko Outfit
Class Name: Miko
LongName: Miko Outfit
LongName: miko outfit
thisDescription: a white and red Miko outfit
thisTooltip: This is a Japanese Shrine Maiden or "Miko" outfit. It consists of a white haori, red hakama, and white socks with sandals. 

Apron
Class Name: Apron	
ShortName: Simple Apron
LongName: simple apron
thisDescription: a simple cooking apron
thisTooltip: This is a simple cooking apron. Rather plain when worn with clothes and extremely sexy when worn without them.

Seifuku
Class Name: Seifuku
ShortName: Seifuku
LongName: Japanese schoolgirl outfit
thisDescription: a Japanese Schoolgirl outfit
thisTooltip: This is a Japanese school girl outfit or 'seifuku'. It consists of a traditional blouse with a sailor style collar and pleated skirt. There is a ribbon tied just above the chest. 

Schoolgirl Outfit
Class Name: Schoolgirl
ShortName: Schoolgirl Outfit
LongName: schoolgirl outfit
thisDescription: a sexy Schoolgirl outfit
thisTooltip: This is a highly fetishized western schoolgirl outfit. It consists of an incredibly tight white blouse, short tartan skirt and low hanging tie. Nobody would ever mistake this for a real school outfit!

Cheerleader Uniform
Class Name: Cheerleader
ShortName: Cheerleader Uniform
LongName: cheerleader uniform
thisDescription: a cheerleader uniform
thisTooltip: An incredibly sexy cheerleader uniform. It consists of a tight colorful top, short pleated skirt, and pom-poms!
Waitress Uniform
Class Name: Waitress
ShortName: Waitress Uniform
LongName: waitress uniform
thisDescription: a waitress uniform
thisTooltip: A highly fetishized waitress uniform. It consists of an underbust corset, frilly short-sleeved top, mid-thigh length skirt, and half apron.

Bunny Outfit
Class Name: BunnyOutfit
ShortName: Bunny Outfit
LongName: bunny outfit
thisDescription: a one-piece bunny outfit
thisTooltip: This is a "HumpHard Bunny" outfit. It's not a full bunny outfit - there's only satin ears and a fluffy tail. The rest of the outfit is hardly furry; a strapless one-piece bikini, black pantyhose, high heels, a collar with bow tie, and cuffs with cuff links. Wear it and be a HumpHard Bunny!

Battle Ballgown
Class Name: BattleBallgown
ShortName: Battle Ballgown
LongName: battle ballgown
thisDescription: a dazzling battle ballgown
thisTooltip: This is a battle ballgown. It consists of a resplendent dress with an armored breastplate, skirting, and arms. The armor is made of a lightweight space-age metal making for easy movement.

Military Outfit
Class Name: MilitaryOutfit	
ShortName: Military Outfit
LongName: military outfit
thisDescription: a military issue tank top and pants
thisTooltip: This military outfit is reminiscent of those worn on Earth in the 20th century. It consists of a tank top, bullet chain sling, and baggy camo pants. 

Space Pirate Outfit
Class Name: SpacePirate	
ShortName: Space Pirate Outfit
LongName: space pirate outfitt
thisDescription: a space pirate outfit made mostly of leather
thisTooltip: This is a space pirate outfit consisting of a lot of tight black leather. There's also a lot of tough looking patches with badass insignias. Great for any rebel with or without a cause. 

Goth-Lolita Outfit
Class Name: GothLolita	
ShortName: Goth Lolita Outfit
LongName: goth lolita outfit
thisDescription: a frilly goth lolita outfit
thisTooltip: This is a gothic lolita outfit. It consists of a very frilly black dress with white lace woven through the seams. There are lots of ribbons attached. Best worn with lots of makeup.

Tank-Top & Mini Skirt
Class Name: TankMini
ShortName: Tank And Mini
LongName: Tight tank top and mini skirt
thisDescription: A tight tank top and mini skirt with suspenders
thisTooltip: The signature outfit of a character from a famous video game series. It consists of an incredibly tight white top, black miniskirt, and asset pressing suspenders. 

Underwear (Top)

String Tie Top
Class Name: StringTieTop
ShortName: String-Tie Top
LongName: String-tie bikini top
thisDescription: A skimpy string-tie bikini top
thisTooltip: This is a skimpy string-tie bikini top, held in place by a looped knot at the small of the back. Two palm sized pieces of fabric cover the breasts - the rest is just string.

Frilly Bra

Class Name: FrillyBra
ShortName: Frilly Bra
LongName: frilly bra
thisDescription: frilly bra
thisTooltip: This frilly bra is made of an ultra-elastic fabric that breathes well. That, and they're damn hot when worn. 

Girly Bra

Class Name: GirlyBra
ShortName: Girly Bra
LongName: girly bra
thisDescription: girly bra
thisTooltip: You couldn't get a bra much more girly than this. It's pink, lace frilled, and littered with cute little bows.

White Bra
// Aware that colors are not usually mentioned, but the "white panties" and "black lace underwear" are almost sub-fetishes of underwear fetishism. I know because it's my kink and I'm trying to slip it in here. :)

Class Name: WhiteBra
ShortName: White Bra
LongName: white bra
thisDescription: white bra
thisTooltip: A nice, plain pure white bra. Available pretty much anywhere. 

Striped Bra

Class Name: StripedBra
ShortName: Striped Bra
LongName: striped bra
thisDescription: striped bra
thisTooltip: A striped bra. The stripes do a lot to enhance the bust.

Furry Bra

Class Name: FurryBra
ShortName: Furry Bra
LongName: Furry bra
thisDescription: furry bra
thisTooltip: A furry bra made of synthetic animal hide. It gives a very tribal "cave girl" look when worn. Good for showing off your primal side.


Black Lace Bra
// See "White Bra" for comment. 

Class Name: BlackLaceBra
ShortName: Black Lace Bra
LongName: black lace bra
thisDescription: black lace bra
thisTooltip: A sexy black lace bra. This kind of underwear has a sensual, mature, and risque feel to it.

Sarashi

Class Name: Sarashi
ShortName: Sarashi
LongName: sarashi
thisDescription: sarashi
thisTooltip: A chest cloth binding known as a "Sarashi", wrapped around the midsection. For women, it also binds the breasts close to the chest. 
Underwear (Bottom)

String Tie Bottoms
Class Name: StringTieBottom
ShortName: String-Tie Bottoms
LongName: string-tie bikini bottoms
thisDescription: Skimpy string-tie bikini bottoms.
thisTooltip: These are skimpy string-tie bikini bottoms, held in place by looped knots on each hip. Pulling them would cause this garment to quickly unravel.

Frilly Panties

Class Name: FrillyPanties
ShortName: Frilly Panties
LongName: frilly panties
thisDescription: frilly panties
thisTooltip: These frilly panties are made of an ultra-elastic fabric that breathes well. That, and they're damn hot when worn. 

Girly Panties

Class Name: GirlyPanties
ShortName: Girly Panties
LongName: girly panties
thisDescription: girly panties
thisTooltip: You couldn't get panties much more girly than these. They're pink, lace frilled, and littered with cute little bows.

White Panties
// See White bra.

Class Name: WhitePanties
ShortName: White Panties
LongName: white panties
thisDescription: white panties
thisTooltip: Never underestimate the appeal of a pair of pure white panties. Available pretty much anywhere. 

Striped Panties

Class Name: StripedPanties
ShortName: Striped Panties
LongName: striped panties
thisDescription: striped panties
thisTooltip: A pair of striped panties that cling deliciously to the thigh. The stripes really show off the contours of the wearer's rump.


Lowrider Panties

Class Name: LowriderPanties
ShortName: Lowrider Panties
LongName: lowrider panties
thisDescription: lowrider panties
thisTooltip: A pair of lowrider panties that barely cover the crotch and ass. If they were to slide down even an inch, something would be exposed.

Furry Panties

Class Name: FurryPanties
ShortName: Furry Panties
LongName: Furry panties
thisDescription: furry panties
thisTooltip: A pair of panties made of synthetic animal hide. They give a very tribal "cave girl" look when worn. Good for showing off your primal side.

Black Lace Panties
// See "White Bra" for comment. 

Class Name: BlackLacePanties
ShortName: Black Lace Panties
LongName: black lace panties
thisDescription: black lace panties
thisTooltip: A pair of sexy black lace panties. This kind of underwear has a sensual, mature, and risque feel to it.

//



Bess-13 Code Values

//Potentially at least. Just trying to make life easier by doing this part. List of possible value entries are listed further down.

 
Int Values

bessHair = 2;
// A value determining Bess/Ben's hair length. Default is 2 (Loose Chignon).

bess.chest = 3;
// Default.

bess.hipRating & bess.buttRating (and thigh, if applicable) = 4;


bessAffection = 0;
// A value determining Bess/Ben’s affection for the PC. See affection section.

bessSexRole = 0 (Default)
// A value that determines how Bess speaks and acts during sex. 0 is equal, 1 is dominant and 2 is submissive.

bessVocal = null.
// In scene 17, a number is rolled between 0 and 5 determining the PC’s singing ability. This is then attached to the bessVocal variable and referenced in scenes.


Boolean Values

bessGlasses = false;
// A boolean value determining if Bess/Ben has glasses equipped or not.

bessKatana = false
// A boolean value determining if the Bess/Ben has katana equipped or not.

bessTitCum = False;
// A boolean value determining if Bess/Ben cums out of their nipples or not.

bessCumDump = False;
// A boolean value determining if Bess/Ben secretes ‘semen-like’ juices from their mouth, pussy and ass. Also if his cock is perpetually covered in cum.

bessCockTail = False
// Boolean value determining if Bess/Ben's JoyCord is active.

bessCuntTail = False
// Boolean value determining if Bess/Ben's detaching pussy is active.

flags["BESS_LOVER"] = False
// Boolean triggered when the player professes mutual love for Bess/Ben.

bessFriend = False
// Boolean triggered when you reach high affection with Bess/Ben

bessDream = false
// Whether Bess/Ben has installed their dream software or not. Activated by Approach Scene 27.

bessFertile = false.
// Flag placeholder. When Bess/Ben gets [bess.himHer] GX upgrade (Gene Splicer) that allows them to get PCs pregnant or become pregnant by others, this becomes "true". GX upgrade will be modular content. This flag is used in some sex scenes.

String Values

bessHairStyle = chignon;
// A string value determining [bess.himHer] hair style. New hair styles are included as options modifying the string value in the customization menu.

bessAcc = null;
// A string value that contains the current worn accessory set. If the value is null, no accessory set is worn.

bSexNamePC = [pc.Master]
// String that determines what Bess/Ben calls the PC during sex; default [pc.Master]. Alterable from Discuss menu. 

bNamePC = [pc.Master]
// String that determines what Bess/Ben calls the PC during non-sex scenes; default [pc.Master]. Alterable from Discuss menu.

bName = [bess.name]
// String that determines what the PC calls Bess/Ben during non-sex scenes; default [bess.name]. Alterable from Discuss menu.

bSexName = [bess.name]
// String that determines what the PC calls Bess/Ben during sex; default [bess.name]. Alterable from Discuss menu.

bessRole = null.
// A string that contains Bess/Ben's role as part of the ship’s crew, should the PC decide to make thema fully fledged crew member.

bessColor = null.
// A string recording the PC’s favorite color, according to a question asked in Bess/Ben Approach Scene 06

bessDrink = null.
// A string recording the PC’s favorite drink, according to a question asked in Bess/Ben Approach Scene 06

bessGenre= null.
// A string recording the PC’s favorite genre of movie, according to a question asked in Bess/Ben Approach Scene 06

bessMusic = null.
// A string recording the PC’s favorite kind of music, according to a question asked in Bess/Ben Approach Scene 06.



/*
Values Guide
Where different Bess modification values are listed for quick reference.
 

bess.chest

Flat (0) - Default if Bess-14
A Cup (1)
B Cup. (2)
C Cup (3) - Default if Bess-13
D Cup (4) 
E Cup (7)
F Cup (11)
G Cup (15)
H Cup (19)
I Cup (24)

bess.tone

100 - Muscly as fuck
70 - Pseudo muscle - Default for Ben-14)
50 - Average (Default for Bess-13)
30 - Jiggly
0 - Bouncy gal!


bessCurves (Set bess.hipRating, bess.assRating and thighs)

Boyish (0)
Slender (2)
Average (4) - Default.
Ample (8)
Voluptuous (10)
Massive (16)


Bess Accessory Sets (Can Purchase)

Equine set (Allows Bess to set Equine Tail and Ears) 
Bovine Set (Allows Bess to set Bovine Tail, Ears and Horns) 
Canine Set (Allows Bess to set Canine Tail and Ears) 
Feline Set (Allows Bess to set Feline Tail and Ears) 
Vulpine Set (Allows Bess to set Vulpine Tail and Ears)
Bunny Set (Allows Bess to set Leporine Tail, Ears) 
Bee Set (Allows Bess to set Bee Wings) 
Draconic Set (Allows Bess to set Draconic Ears, Tail, Wings and Horns).
Demonic Set (Allows Bess to set Demonic Ears, Tail, Wings and Horns)
Shark Set (Allows Bess to set Shark Ears and Tail
Deer Set (Allows Bess to set Deer Ears, Tail and Horns)
Mouse Set (Allows Bess to set Mouse Ears and Tail)
Angel Set (Allows Bess to set Angel/White Feathered Wings)


bess.ears

Human (Default)
Equine - 1
Bovine - 2
Canine - 3
Feline - 4
Vulpine - 5
Draconic - 11
Demonic -15
Shark - 19
Deer - 21
Mouse - 26
Bunny - Unknown

bess.horns

None (Default)
Equine - 1
Bovine - 2
Draconic - 11
Demonic - 15
Deer - 21

bess.tails

None (Default)
Equine - 1
Bovine - 2
Canine - 3
Feline - 4
Vulpine - 5
Draconic - 11
Demonic - 15
Shark - 19
Deer - 21
Mouse - 26
Bunny - Unknown

bess.wings

None (Default)
Bee - 6
Draconic - 11
Demonic - 15
Angel / Feathered - None Yet


bess.nipples

Normal (0) - Default
Fuckable (1)
Lipples (2)
Dick (3)
Flat (4)
Inverted (5)
Tentacled (6)



bNamePC
bSexNamePC
bName
bSexName
See Bess/Ben Titles Section



bess.cockType

// All cocks except for Dino cock have girth and length = ½ pc orifice capacity.

No Cock: Null value
Regular Cock: Synthetic Type
Regular Cock & Balls: Synthetic Type
Dino Cock: Saurian Type, 12 inches thick, 20 inches long. Balls are 8 inches wide.
Horse Cock: Equine type.
Dog Cock: Canine Type.
Fox Cock: Vulpine Type.
Demon Cock: Demonic Type
Tentacle Cock: Tentacle Type
Cat Cock: Feline Type
Draconic Cock: Draconic Type
Goo Cock: Goo Type
Plant Cock: Plant Type

bessHairStyle
// Potential values for bessHairStyle string

a simple part
spikes
a messy chignon (Bess Default)
a tight chignon
a ponytail
a bob
a single braid
a mess of curls
a crown braid
a set of twintails
a side plait
pigtail buns
a hime cut
ruffled layers
a front wave
a side part
a backwards slick (Ben Default)

bess.hairLength

None (0)
Short (2) - Default for Ben-14
Moderately Long (8) - default for Bess-13
Shoulder Length (18)
Ass Length (40)
Floor Length (60)


bess.hairColor String options (All lower case)

Silver (Default)
Black
Brown
Red
Blonde
White
Green
Blue
Orange
Pink
Purple
Violet
Magenta
Cyan
Red and Black
Clear
 

bess.eyeColor String Options

Silver - Default
Black
Brown
Green
Hazel
Blue
Red
Purple
Violet
Aquamarine
Orange
Pink
Golden
Clear
/*




