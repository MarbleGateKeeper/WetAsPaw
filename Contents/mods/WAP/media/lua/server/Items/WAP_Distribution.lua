require "Items/Distributions"
require "Items/ProceduralDistributions"

local i, j, k, l

-- Distributions for ProceduralDistributions.lua
local WAPProceduralDistributionTable = {
  "BookstoreBooks", 100, 
  "BookstoreMisc", 100,
  "BookstoreStationery", 100,  
  "LibraryBooks", 100,
  "LibraryCounter", 100,
  "BedroomSideTable", 100,
  "LivingRoomShelf", 100,
  "CafeShelfBooks", 100,
  "CampingStoreBooks", 100,
  "ClassroomMisc", 100,
  "ClassroomShelves", 100,
  "SchoolLockers", 100,
  "CrateBooks", 100,
  "CrateComics", 100,
  "DeskGeneric", 100,
  "ShelfGeneric", 100,
  "Locker", 100,
  "OfficeDesk", 100,
  "PostOfficeBooks", 100,
  "PrisonCellRandom", 100,
  "PostOfficeBooks", 100,
}

local WAPBookTble = {
    "WetAsPaws.Comic_ShiroisPublicInvestigation",
    "WetAsPaws.Comic_BorderDog",
    "WetAsPaws.Comic_SignUp2",		   
    "WetAsPaws.Comic_HeatUp",
    "WetAsPaws.Comic_SignUp",
    "WetAsPaws.Comic_WarmUp",
 }

for i = 1, #WAPProceduralDistributionTable, 2 do 
    for j = 1, #WAPBookTble do
        table.insert(ProceduralDistributions.list[WAPProceduralDistributionTable[i]].items, WAPBookTble[j])
        table.insert(ProceduralDistributions.list[WAPProceduralDistributionTable[i]].items, WAPProceduralDistributionTable[i+1])
    end
end

local WAPDistributionTable = {
    {"all",{
        "metal_shelves",100,
        "crate",100,
        "bin",100,
        "counter",100,
        "inventorymale",100,
    },
    }
}

for i, j in ipairs(WAPDistributionTable) do
  print(j[1]);
  for k = 1, #j[2], 2 do
    for l = 1, #WAPBookTble do
        table.insert(Distributions[1][j[1]][j[2][k]].items, WAPBookTble[l])
        table.insert(Distributions[1][j[1]][j[2][k]].items, j[2][k+1])
    end
  end   
end