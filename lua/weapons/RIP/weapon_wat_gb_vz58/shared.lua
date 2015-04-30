
AddCSLuaFile( "shared.lua" )


local SoundData = 
{
	name = "Weapon_VZ58.Single",
	channel =		CHAN_WEAPON,
	soundlevel =	SNDLVL_GUNFIRE,
	pitch =	PITCH_NORM,
	sound = "weapons/VZ58/vz58-1.wav"
}
sound.Add(SoundData)

local SoundData = 
{
	name = "VZ58.Clipin",
	channel = CHAN_ITEM,
	volume =	0.8,
	sound =		"weapons/VZ58/vz58_clipin.wav"
}
sound.Add(SoundData)

local SoundData = 
{
	name = "VZ58.Clipout",
	channel =	CHAN_ITEM,
	volume =	0.8,
	sound =		"weapons/VZ58/vz58_clipout.wav"
}
sound.Add(SoundData)

local SoundData = 
{
	name = "VZ58.Boltback",
	channel =	CHAN_ITEM,
	volume =	0.7,
	sound =		"weapons/VZ58/vz58_boltback.wav"
}
sound.Add(SoundData)

local SoundData = 
{
	name = "VZ58.Boltforward",
    channel =       CHAN_ITEM,
    volume =        0.7,
    sound =          "weapons/VZ58/vz58_boltforward.wav"
}
sound.Add(SoundData)

local SoundData = 
{
	name = "VZ58.Cloth",
	channel =	CHAN_ITEM,
	volume =	0.8,
	sound =		"weapons/VZ58/vz58_cloth.wav"
}
sound.Add(SoundData)

local SoundData = 
{
	name = "VZ58.Deploy",
	channel =	CHAN_ITEM,
	volume =	0.8,
	sound =		"weapons/VZ58/vz58_deploy.wav"
}
sound.Add(SoundData)




---------
SWEP.PrintName 					= "VZ.58"
SWEP.Category 					= "Wattle GB"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel			= "models/weapons/v_rif_vz58.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_ak47.mdl"
SWEP.ViewModelFlip 				= false
SWEP.ViewModelFOV 				= 71

SWEP.Weight 					= 5
SWEP.AutoSwitchFrom 			= false
SWEP.AutoSwitchTo 				= false

SWEP.BobScale 					= 0
SWEP.SwayScale 					= 0
SWEP.BounceWeaponIcon 			= true
SWEP.DrawWeaponInfoBox 			= true
SWEP.DrawAmmo 					= true
SWEP.DrawCrosshair 				= false
//SWEP.RenderGroup 				= 
SWEP.Slot 						= 2
SWEP.SlotPos 					= 10
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= false
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 300
SWEP.Primary.DefaultClip 		= 1200
SWEP.Primary.Ammo 				= "smg1"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= false
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 55
SWEP.Primary.Sound				= Sound("Weapon_VZ58.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/800
SWEP.Primary.Cone				= 0.0015
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.ReloadClipInTime			= 1.9

SWEP.VMPosOffset 				= Vector(3,3,-1)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(10, -3, -5), Vector(9, -6, -6), Vector(10, -3, -5) }
SWEP.SprintAng					= { Angle(41, 57, 42), Angle(39, 58, 42), Angle(41, 59, 42) }
SWEP.WalkPos 					= { Vector(-0.15,0,0), Vector(0,0,0.5), Vector(0.15,0,0) }
SWEP.WalkAng					= {  Angle(-0.5,0.5,-1), Angle(0,0,0), Angle(-0.5,-0.5,0.5) }
SWEP.InspectPos 				= { Vector(11.208, 0.472, -0.675), Vector(-5.253, 2.663, 1.73) }
SWEP.InspectAng 				= { Angle(12.067, 56.402, 18.287), Angle(0, 0, -36.32) }
SWEP.IronSightsPos 				= Vector(-1.122, -1.361, 0.51)
SWEP.IronSightsAng 				= Angle(-0.015, 0, 0)
SWEP.SwayPosDiv					= 45
SWEP.SwayAngDiv					= 10

//SWEP.SprintPos	 				= { Vector(10.468, -2.633, -5.033), Vector(10.468, -2.633, -5.033), Vector(10.468, -2.633, -5.033) }
//SWEP.SprintAng					= { Angle(40.645, 61.626, 42.381), Angle(40.645, 61.626, 42.381), Angle(40.645, 61.626, 42.381) }
//SWEP.SprintPos	 				= { Vector(10, -3, -5), Vector(10, -3, -5), Vector(10, -3, -5) }
//SWEP.SprintAng					= { Angle(41, 62, 42), Angle(41, 62, 42), Angle(41, 62, 42) }

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 30
SWEP.SetFATOnShoot 				= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {"Semi"}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

function SWEP:SecondaryAttack()
	if(CurTime() < self:GetNextSecondaryFire()) then return end

	self:SetNextPrimaryFire(CurTime() + 0.35)
	self:SetNextSecondaryFire(CurTime() + 0.35)

	if(IsFirstTimePredicted()) then
		self.Owner:EmitSound("weapons/smg1/switch_single.wav")
	end
	
	if(self:GetSemi()) then
		self.Primary.Automatic = true
		self:SetSemi(false)
		self.VMPosOffset = Vector(3,3,-1)
	else
		self.Primary.Automatic = false
		self:SetSemi(true)
		self.VMPosOffset = Vector(2,3,-1)
	end
end

SWEP.OldSemi = false
function SWEP:WatCalcViewThink( ply, origin, angles, fov )
	if(self.OldSemi != self:GetSemi()) then
		if(self:GetSemi()) then
			self.VMPosOffset = Vector(2,3,-1)
		else
			self.VMPosOffset = Vector(3,3,-1)
		end
		self.OldSemi = self:GetSemi()
	end
end
