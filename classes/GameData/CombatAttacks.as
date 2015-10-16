package classes.GameData 
{
	import classes.Creature;
	import classes.GLOBAL;
	import classes.Engine.Combat.DamageTypes.DamageFlag;
	import classes.kGAMECLASS;
	
	/**
	 * Static library of combat attack implementations
	 * @author Gedan
	 */
	public class CombatAttacks 
	{
		public static function GetAttacksFor(target:Creature):Array
		{
			
		}
		
		private static var o:CombatAttacks;
		private static var a:Array;
		
		{
			a = new Array();
			o = new CombatAttacks();
		}
		
		private function CombatAttacks()
		{
			// Headbutt
			Headbutt = new SingleCombatAttack();
			Headbutt.ButtonName = "Headbutt";
			Headbutt.EnergyCost = 25;
			Headbutt.RequiresClass = GLOBAL.CLASS_MERCENARY;
			Headbutt.TooltipTitle = "Headbutt";
			Headbutt.TooltipBody = "A physique-based attack that does not benefit from weapon damage but has a chance of stunning your target.";
			Headbutt.Implementor = HeadbuttImpl; // headbutt
			a.push(Headbutt);
			
			// Rapidfire
			RapidFire = new SingleCombatAttack();
			RapidFire.ButtonName = "Rapid Fire";
			RapidFire.EnergyCost = 20;
			RapidFire.RequiresPerk = "Rapid Fire";
			RapidFire.DisabledIfEffectedBy = ["Disarmed"];
			RapidFire.TooltipTitle = "Rapid Fire";
			RapidFire.TooltipBody = "Perform a long range attack with two additional, low accuracy shots following it.";
			RapidFire.IsRangedBased = true;
			RapidFire.Implementor = RapidFireImpl; // rapidFire
			a.push(RapidFire);
			
			// Power Strike
			PowerStrike = new SingleCombatAttack();
			PowerStrike.ButtonName = "Power Strike";
			PowerStrike.EnergyCost = 20;
			PowerStrike.RequiresPerk = "Power Strike";
			PowerStrike.DisabledIfEffectedBy = ["Disarmed"];
			PowerStrike.TooltipTitle = "Power Strike";
			PowerStrike.TooltipBody = "Strike once with a melee weapon for 200% of normal damage.";
			PowerStrike.IsMeleeBased = true;
			PowerStrike.Implementor = PowerStrikeImpl; // powerStrike
			a.push(PowerStrike);
			
			// Take Cover
			TakeCover = new SingleCombatAttack();
			TakeCover.ButtonName = "Take Cover";
			TakeCover.EnergyCost = 20;
			TakeCover.RequiresPerk = "Take Cover";
			TakeCover.TooltipTitle = "Take Cover";
			TakeCover.TooltipBody = "Increased ranged evasion to 90% for three turns.";
			TakeCover.Implementor = TakeCoverImpl; // takeCover;
			TakeCover.RequiresTarget = false;
			a.push(TakeCover);
			
			// Carpet Grenades
			CarpetGrenades = new SingleCombatAttack();
			CarpetGrenades.ButtonName = "Carpet Grenades";
			CarpetGrenades.EnergyCost = 25;
			CarpetGrenades.RequiresPerk = "Carpet Grenades";
			CarpetGrenades.DisabledIfEffectedBy = ["Disarmed"];
			CarpetGrenades.TooltipTitle = "Carpet Grenades";
			CarpetGrenades.TooltipBody = "An attack that is extra effective against multiple foes. Its damage is increased by level and intelligence."; 
			CarpetGrenades.Implementor = CarpetGrenadesImpl; // carpetGrenades
			CarpetGrenades.RequiresTarget = false;
			a.push(CarpetGrenades);
			
			// Det. Charge
			DetonationCharge = new SingleCombatAttack();
			DetonationCharge.ButtonName = "Det. Charge";
			DetonationCharge.EnergyCost = 25;
			DetonationCharge.RequiresPerk = "Detonation Charge";
			DetonationCharge.DisabledIfEffectedBy = ["Disarmed"];
			DetonationCharge.TooltipTitle = "Detonation Charge";
			DetonationCharge.TooltipBody = "Deals a high amount of level and intelligence-based thermal damage against a single foe.";
			DetonationCharge.Implementor = DetonationChargeImpl; // detCharge
			a.push(DetonationCharge);
			
			// Second Wind
			SecondWind = new SingleCombatAttack();
			SecondWind.ButtonName = "Second Wind";
			SecondWind.RequiresLevel = 5;
			SecondWind.DisabledIfEffectedBy = ["Used Second Wind"];
			SecondWind.TooltipTitle = "Second Wind";
			SecondWind.TooltipBody = "Regenerate 50% of your maximum HP and energy once per battle! An invaluable ability for the mercenary in the field.";
			SecondWind.Implementor = SecondWindImpl;
			SecondWind.RequiresTarget = false;
			a.push(SecondWind);
			
			// Paralyzing Shock
			ParalyzingShock = new SingleCombatAttack();
			ParalyzingShock.ButtonName = "P. Shock";
			ParalyzingShock.EnergyCost = 25;
			ParalyzingShock.RequiresClass = GLOBAL.CLASS_ENGINEER;
			ParalyzingShock.TooltipTitle = "Paralyzing Shock";
			ParalyzingShock.TooltipBody = "An ability with an intelligence-based chance to paralyze a single foe. Enemies with higher physique scores will be more likely to resist its effects!";
			Volley.IsRangedBased = true;
			ParalyzingShock.Implementor = ParalyzingShockImpl;
			a.push(ParalyzingShock);
			
			// Volley
			Volley = new SingleCombatAttack();
			Volley.ButtonName = "Volley";
			Volley.EnergyCost = 20;
			Volley.RequiresPerk = "Volley";
			Volley.DisabledIfEffectedBy = ["Disarmed"];
			Volley.IsRangedBased = true;
			Volley.TooltipTitle = "Volley";
			Volley.TooltipBody = "Perform a ranged attack with an additional, low-accuracy attack added on. Can blind foes based upon aim and the target's reflexes, but only if done with <b>an energy weapon.</b>";
			Volley.Implementor = VolleyImpl;
			a.push(Volley);
			
			// Overcharge
			Overcharge = new SingleCombatAttack();
			Overcharge.ButtonName = "Overcharge";
			Overcharge.EnergyCost = 20;
			Overcharge.RequiresPerk = "Overcharge";
			Overcharge.DisabledIfEffectedBy = ["Disarmed"];
			Overcharge.RequiresDamageFlags = [DamageFlag.ENERGY_WEAPON];
			Overcharge.IsRangedBased = true;
			Overcharge.TooltipTitle = "Overcharge";
			Overcharge.TooltipBody = "A powerful ranged attack, Overcharge deals 150% damage and has a chance of stunning. Higher intelligence increases the chance of successfully stunning your foe.";
			Overcharge.Implementor = OverchargeImpl;
			a.push(Overcharge);
			
			// Deflector Regen
			DeflectorRegeneration = new SingleCombatAttack();
			DeflectorRegeneration.ButtonName = "D. Regen";
			DeflectorRegeneration.EnergyCost = 20;
			DeflectorRegeneration.RequiresPerk = "Deflector Regeneration";
			DeflectorRegeneration.TooltipTitle = "Deflector Regeneration";
			DeflectorRegeneration.TooltipBody = "Restores a portion of your shields every turn for four turns. Higher intelligence will increase the amount.";
			DeflectorRegeneration.RequiresTarget = false;
			DeflectorRegeneration.Implementor = DeflectorRegenerationImpl;
			a.push(DeflectorRegeneration);
			
			// Power Surge
			PowerSurge = new SingleCombatAttack();
			PowerSurge.ButtonName = "P. Surge";
			PowerSurge.EnergyCost = 33;
			PowerSurge.RequiresPerk = "Power Surge";
			PowerSurge.TooltipTitle = "Power Surge";
			PowerSurge.TooltipBody = "Restores a moderate amount of shields based on intelligence.";
			PowerSurge.RequiresTarget = false;
			PowerSurge.Implementor = PowerSurgeImpl;
			a.push(PowerSurge);
			
			// Thermal Disruptor
			ThermalDisruptor = new SingleCombatAttack();
			ThermalDisruptor.ButtonName = "T. Disrupt";
			ThermalDisruptor.EnergyCost = 25;
			ThermalDisruptor.RequiresPerk = "Thermal Disruptor";
			ThermalDisruptor.DisabledIfEffectedBy = ["Disarmed"];
			ThermalDisruptor.TooltipTitle = "Thermal Disruptor";
			ThermalDisruptor.TooltipBody = "Deals a large amount of intelligence-based thermal damage to a single target.";
			ThermalDisruptor.Implementor = ThermalDisruptorImpl;
			a.push(ThermalDisruptor);
			
			// Grav Disruptor
			GravidicDisruptor = new SingleCombatAttack();
			GravidicDisruptor.ButtonName = "G. Disrupt";
			GravidicDisruptor.EnergyCost = 25;
			GravidicDisruptor.RequiresPerk = "Gravidic Disruptor";
			GravidicDisruptor.DisabledIfEffectedBy = ["Disarmed"];
			GravidicDisruptor.TooltipTitle = "Gravidic Disruptor";
			GravidicDisruptor.TooltipBody = "Deals a moderate amount of intelligence-based, Unresistable damage to a single target.";
			GravidicDisruptor.Implementor = GravidicDisruptorImpl;
			a.push(GravidicDisruptor);
			
			// Shield Hack
			ShieldHack = new SingleCombatAttack();
			ShieldHack.ButtonName = "S. Hack";
			ShieldHack.EnergyCost = 25;
			ShieldHack.RequiresPerk = "Shield Hack";
			ShieldHack.TooltipTitle = "Shield Hack";
			ShieldHack.TooltipBody = "An attack that deals a high amount of electric-typed damage to a target's shields. Damage is increased by intelligence.";
			ShieldHack.Implementor = ShieldHackImpl;
			a.push(ShieldHack);
			
			// Weapon Hack
			WeaponHack = new SingleCombatAttack();
			WeaponHack.ButtonName = "W. Hack";
			WeaponHack.EnergyCost = 10;
			WeaponHack.RequiresPerk = "Weapon Hack";
			WeaponHack.TooltipTitle = "Weapon Hack";
			WeaponHack.TooltipBody = "Attempt to neutralize a foe's <b>energy weapon</b> using your intelligence. Smarter foes will resist your attempts.";
			WeaponHack.Implementor = WeaponHackImpl;
			a.push(WeaponHack);
			
			// PocketSand/Flash Grenade
			PocketSand = new SingleCombatAttack();
			PocketSand.ButtonName = "P. Sand";
			PocketSand.EnergyCost = 10;
			PocketSand.RequiresClass = GLOBAL.CLASS_SMUGGLER;
			PocketSand.TooltipTitle = "Pocket Sand";
			PocketSand.TooltipBody = "Produce some sand from your level and use it to blind your enemies! Better aim will help you land the attack.";
			PocketSand.Implementor = PocketSandImp;
			PocketSand.ExtendedDisplayabilityCheck = function(target:Creature):Boolean {
				return kGAMECLASS.silly;
			};
			a.push(PocketSand);
			
			FlashGrenade = new SingleCombatAttack();
			FlashGrenade.ButtonName = "F. Grenade";
			FlashGrenade.EnergyCost = 10;
			FlashGrenade.RequiresClass = GLOBAL.CLASS_SMUGGLER;
			FlashGrenade.TooltipTitle = "Flash Grenade";
			FlashGrenade.TooltipBody = "Produce a rechargable flash grenade and use it to blind your enemy. Better aim will increase the chance of success.";
			FlashGrenade.Implementor = FlashGrenadeImpl;
			FlashGrenade.ExtendedDisplayabilityCheck = function(target:Creature):Boolean {
				return !kGAMECLASS.silly;
			};
			a.push(FlashGrenade);
			
			// Low Blow
			LowBlow = new SingleCombatAttack();
			LowBlow.ButtonName = "Low Blow";
			LowBlow.EnergyCost = 15;
			LowBlow.RequiresPerk = "Low Blow";
			LowBlow.TooltipTitle = "Low Blow";
			LowBlow.TooltipBody = "A melee ability with a physique-based chance of stunning your target. It does low damage, and stronger foes will be more able to resist being stunned.";
			LowBlow.Implementor = LowBlowImpl;
			a.push(LowBlow);
			
			// Disarming Shot
			DisarmingShot = new SingleCombatAttack();
			DisarmingShot.ButtonName = "Disarm Shot";
			DisarmingShot.EnergyCost = 20;
			DisarmingShot.RequiresPerk = "Disarming Shot";
			DisarmingShot.DisabledIfEffectedBy = ["Disarmed"];
			DisarmingShot.Implementor = DisarmingShotImpl;
			DisarmingShot.TooltipTitle = "Disarming Shot";
			DisarmingShot.TooltipBody = "A single shot that will disable your target's usage of traditional weapons - if it hits. The strike has the same chance of hitting as any other shot. Note that this does not effect creatures or machines with integrated weaponry.";
			a.push(DisarmingShot);
			
			// Stealth
			StealthFieldGenerator = new SingleCombatAttack();
			StealthFieldGenerator.ButtonName = "Stealth Field";
			StealthFieldGenerator.EnergyCost = 20;
			StealthFieldGenerator.RequiresPerk = "Stealth Field Generator";
			StealthFieldGenerator.DisabledIfEffectedBy = ["Stealth Field Generator"];
			StealthFieldGenerator.Implementor = StealthFieldGeneratorImpl;
			StealthFieldGenerator.TooltipTitle = "Stealth Field Generator";
			StealthFieldGenerator.TooltipBody = "Creates a stealth field that greatly increases your evasion for a few turns.";
			StealthFieldGenerator.RequiresTarget = false;
			a.push(StealthFieldGenerator);
			
			// Grenade
			Grenade = new SingleCombatAttack();
			Grenade.ButtonName = "Grenade";
			Grenade.EnergyCost = 25;
			Grenade.RequiresPerk = "Grenade";
			Grenade.DisabledIfEffectedBy = ["Disarmed"];
			Grenade.Implementor = GrenadeImpl;
			Grenade.TooltipTitle = "Grenade";
			Grenade.TooltipBody = "Does a moderate amount of intelligence-based thermal and kinetic damage to a single opponent.";
			a.push(Grenade);
			
			// GasGren
			GasGrenade = SingleCombatAttack();
			GasGrenade.ButtonName = "Gas Grenade";
			GasGrenade.EnergyCost = 25;
			GasGrenade.RequiresPerk = "Gas Grenade";
			GasGrenade.DisabledIfEffectedBy = ["Disarmed"];
			GasGrenade.Implementor = GasGrenadeImpl;
			GasGrenade.TooltipTitle = "Gas Grenade";
			GasGrenade.TooltipBody = "An unavoidable attack that deals a fair amount of lust damage. Increases slightly with level.";
			a.push(GasGrenade);
			
			// Smuggled Stim
			SmuggledStimulant = new SingleCombatAttack();
			SmuggledStimulant.ButtonName = "S. Stimulant";
			SmuggledStimulant.DisabledIfEffectedBy = ["Used Smuggled Stimulant"];
			SmuggledStimulant.RequiresPerk = "Smuggled Stimulant";
			SmuggledStimulant.Implementor = SmuggleStimulatImpl;
			SmuggledStimulant.TooltipTitle = "Smuggled Stimulant";
			SmuggledStimulant.TooltipBody = "Inject yourself with a smuggled stimulant, causing you to recover 25 energy a turn for three turns.";
			SmuggledStimulant.RequiresTarget = false;
			a.push(SmuggledStimulant);
			
			// Burst of Energy
			BurstOfEnergy = new SingleCombatAttack();
			BurstOfEnergy.ButtonName = "Bst. Energy";
			BurstOfEnergy.DisabledIfEffectedBy = ["Used Burst of Energy"];
			BurstOfEnergy.RequiresPerk = "Burst of Energy";
			BurstOfEnergy.Implementor = BurstOfEnergyImpl;
			BurstOfEnergy.TooltipTitle = "Burst of Energy";
			BurstOfEnergy.TooltipBody = "Get a burst of energy, recovering 60 energy.\n\nYou may only do this once per encounter.";
			BurstOfEnergy.RequiresTarget = false;
			a.push(BurstOfEnergy);
			
			// Concussive Shot
			ConcussiveShot = new SingleCombatAttack();
			ConcussiveShot.ButtonName = "C. Shot";
			ConcussiveShot.DisabledIfEffectedBy = ["Disarmed"];
			ConcussiveShot.EnergyCost = 25;
			ConcussiveShot.IsRangedBased = true;
			ConcussiveShot.RequiresItemFlags = [GLOBAL.ITEM_FLAG_BOW_WEAPON];
			ConcussiveShot.TooltipTitle = "Concussive Shot";
			ConcussiveShot.TooltipBody = "Fire an explosive arrow at your target, potentially stunning them for 1-2 rounds.";
			a.push(ConcussiveShot);
		}
		
		public static const Headbutt:SingleCombatAttack;
		private static function HeadbuttImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const RapidFire:SingleCombatAttack;
		private static function RapidFireImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const PowerStrike:SingleCombatAttack;
		private static function PowerStrikeImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const TakeCover:SingleCombatAttack;
		private static function TakeCoverImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const CarpetGrenades:SingleCombatAttack;
		private static function CarpetGrenadesImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const DetonationCharge:SingleCombatAttack;
		private static function DetonationChargeImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const SecondWind:SingleCombatAttack;
		private static function SecondWindImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const ParalyzingShock:SingleCombatAttack;
		private static function ParalyzingShockImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const Volley:SingleCombatAttack;
		private static function VolleyImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const Overcharge:SingleCombatAttack;
		private static function OverchargeImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const DeflectorRegeneration:SingleCombatAttack;
		private static function DeflectorRegenerationImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const PowerSurge:SingleCombatAttack;
		private static function PowerSurgeImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const ThermalDisruptor:SingleCombatAttack;
		private static function ThermalDisruptorImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const GravidicDisruptor:SingleCombatAttack;
		private static function GravidicDisruptorImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const ShieldHack:SingleCombatAttack;
		private static function ShieldHackImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const WeaponHack:SingleCombatAttack;
		private static function WeaponHackImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const PocketSand:SingleCombatAttack;
		private static function PocketSandImp(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const FlashGrenade:SingleCombatAttack;
		private static function FlashGrenadeImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const LowBlow:SingleCombatAttack;
		private static function LowBlowImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const DisarmingShot:SingleCombatAttack;
		private static function DisarmingShotImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const StealthFieldGenerator:SingleCombatAttack;
		private static function StealthFieldGeneratorImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const Grenade:SingleCombatAttack;
		private static function GrenadeImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const GasGrenade:SingleCombatAttack;
		private static function GasGrenadeImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const SmuggledStimulant:SingleCombatAttack;
		private static function SmuggleStimulatImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const BurstOfEnergy:SingleCombatAttack;
		private static function BurstOfEnergyImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
		
		public static const ConcussiveShot:SingleCombatAttack;
		private static function ConcussiveShotImpl(fGroup:Array, hGroup:Array, attacker:Creature, target:Creature):void
		{
			
		}
	}

}