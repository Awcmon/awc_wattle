ENT.Type 		= "anim"
ENT.PrintName	= "Explosive C4"
ENT.Author		= "Worshipper"
ENT.Contact		= "Josephcadieux@hotmail.com"
ENT.Purpose		= ""
ENT.Instructions	= ""

/*---------------------------------------------------------
   Name: ENT:SetupDataTables()
   Desc: Setup the data tables.
---------------------------------------------------------*/
function ENT:SetupDataTables()  

	self:DTVar("Int", 0, "Timer")
end 

/*---------------------------------------------------------
   Name: ENT:Initialize()
---------------------------------------------------------*/
function ENT:Initialize()

	self.C4CountDown = self:GetDTInt(0)
	self.C4CountDownNumber = 0
	self.C4GonnaBLow = false
	self:CountDown()
	self.Entity:EmitSound("csgo/c4/c4_plant.wav")
end

/*---------------------------------------------------------
   Name: ENT:CountDown()
---------------------------------------------------------*/
function ENT:CountDown()

	if self.C4CountDown > 1 then

		self.C4CountDownNumber = self.C4CountDownNumber + 0.03
		self.C4CountDown = self.C4CountDown - 1

		timer.Create("self.Entity", 1, 0, function()
			self:CountDown()
		end)
		timer.Create("Penisesrcoolio", 1-self.C4CountDownNumber, 0, function()
			if !IsValid(self.Entity) then return end
			if self.C4CountDown > 2 then
			//self.Entity:EmitSound("csgo/c4/c4_click.wav",340)
			else
			self.C4GonnaBLow = true
			end
		end)
		if self.C4GonnaBLow == true && self.C4CountDown == 1 then
		//self.Entity:EmitSound("csgo/c4/arm_bomb.wav",340)
		end
	else
		self.C4CountDown = 0
		timer.Destroy("CountDown")
	end
end
/*---------------------------------------------------------
   Name: ENT:OnRemove()
---------------------------------------------------------*/
function ENT:OnRemove()

	timer.Destroy("self.Entity")
end
