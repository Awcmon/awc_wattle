AddCSLuaFile()

if(SERVER) then
	
	resource.AddFile("materials/overlays/scope_lens.vmt")
	resource.AddFile("materials/sprites/scope_arc.vmt")
	
	resource.AddFile("models/weapons/c_csgo_g3sgn.mdl")
	resource.AddFile("sound/weapons/g3/g3-1.wav")
	
end

if (CLIENT) then
	surface.CreateFont( "CV",
	{
		font      = "coolvetica",
		size      = ScreenScale(200),
		weight    = 500,
		antialias 	= true,
		blursize 	= 0,
		scanlines 	= 0,
		underline 	= false,
		italic 		= false,
		strikeout 	= false,
		symbol 		= false,
		rotary 		= false,
		shadow 		= false,
		additive 	= false,
		outline 	= false
	})
end