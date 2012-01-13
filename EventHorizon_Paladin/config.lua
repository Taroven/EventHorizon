local usemouseover = true	-- Make this false or nil (or just delete the line altogether) to make your healing bars not change when you mouse over something.

function EventHorizon:InitializeClass()
	self.config.gcdSpellID = 635 -- Holy Light
	self.config.hastedSpellID = {7328,10} -- Redemption, probably not needed at all
	
	-- General - Judgement + Judgements of the Pure
	self:NewSpell({
		spellID = 20271,
		playerbuff = 53655,
		cooldown = true,
		requiredLevel = 3,
		requiredTree = {0,1,3},
	})
	
	-- Crusader Strike / Hammer of the Righteous + AoW
	self:NewSpell({
		spellID = 35395,
		playerbuff = {59578,87342},		-- Art of War, Holy Shield
		cooldown = true,
		requiredTree = {0,2,3},	-- Everyone but Holy
		keepIcon = true,
	})
	
	-- Holy
	
	-- Holy Shock + Denounce
	self:NewSpell({
		spellID = 20473,
		playerbuff = 85509,
		cooldown = true,
		requiredTree = 1,
		keepIcon = true,
	})
	
	-- Casts + Infusion of Light
	self:NewSpell({
		spellID = 635,
		cast = {635,19750,82326,879},
		playerbuff = 53672,
		requiredTree = 1,
		requiredLevel = 14,
	})
	
	-- Light of Dawn
	self:NewSpell({
		spellID = 85222,
		cooldown = true,
		requiredTree = 1,
		requiredLevel = 69,
	})
	
	-- Holy Radiance
	self:NewSpell({
		spellID = 82327,
		playerbuff = true,
		cooldown = true,
		requiredTree = 1,
		requiredLevel = 83,
	})
	
	-- Prot
	
	-- Avenger's Shield + Holy Shield
	self:NewSpell({
		spellID = 31935,
		cooldown = true,
		requiredTree = 2,
		keepIcon = true,
	})
	
	-- Judgement + Sacred Duty
	self:NewSpell({
		spellID = 20271,
		playerbuff = 85433,
		cooldown = true,
		requiredTree = 2,
		keepIcon = true,
	})
	
	-- Holy Wrath
	self:NewSpell({
		spellID = 2812,
		cooldown = true,
		requiredTree = 2,
		requiredLevel = 28,
	})
	
	-- Consecration
	self:NewSpell({
		spellID = 26573,
		cooldown = true,
		playerbuff = true,
		requiredTree = 2,
		requiredLevel = 20,
	})
	
	-- Inquisition
	self:NewSpell({
		spellID = 84963,
		playerbuff = true,
		requiredTree = {2,3},	-- Placement is about right for Ret.
		requiredLevel = 81,
	})
	
	-- Ret
	
	-- Zealotry
	self:NewSpell({
		spellID = 85696,
		playerbuff = true,
		cooldown = true,
		requiredTree = 3,
		requiredLevel = 69,
	})
end