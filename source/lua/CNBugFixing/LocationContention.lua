﻿---
--- Generated by Luanalysis
--- Created by StriteR1996.
--- DateTime: 2023/2/10 22:34
---

local kFallbackLocGroup = nil

local baseGetLocationGroup = LocationContention.GetLocationGroup
function LocationContention:GetLocationGroup(groupName)
    if not kFallbackLocGroup then
        kFallbackLocGroup = LocationGroup()
        kFallbackLocGroup:Initialize("Usable shitty fallback")
    end
    
    return baseGetLocationGroup(self,groupName) or kFallbackLocGroup
end