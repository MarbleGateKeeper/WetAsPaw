require "Items/Distributions"
require "Items/ProceduralDistributions"

local i, j, k, l

local WAPProceduralDistributionTable = {
  "BookstoreBooks", 10, 
  "BookstoreMisc", 5,
  "BookstoreStationery", 2,  
  "LibraryBooks", 20,
  "LibraryCounter", 2,
  "BedroomSideTable", 2,
  "LivingRoomShelf", 2,
  "CafeShelfBooks", 2,
  "ClassroomMisc", 1,
  "ClassroomShelves", 1,
  "SchoolLockers", 1,
  "CrateBooks", 5,
  "CrateComics", 10,
  "DeskGeneric", 1,
  "ShelfGeneric", 1,
  "Locker", 1,
  "OfficeDesk", 1,
  "PostOfficeBooks", 1,
  "PrisonCellRandom", 1,
  "PostOfficeBooks", 1,
}

local WAPBookTble = {
    "WetAsPaws.Comic_ShiroisPublicInvestigation",
    "WetAsPaws.Comic_BorderDog",
    "WetAsPaws.Comic_SignUp2",		   
    "WetAsPaws.Comic_HeatUp",
    "WetAsPaws.Comic_SignUp",
    "WetAsPaws.Comic_WarmUp",
    "WetAsPaws.Comic_TimeUp",
    "WetAsPaws.Comic_Gyakuten",
    "WetAsPaws.Comic_Unproud",
    "WetAsPaws.Comic_ReignOfTheSword",
 }

for i = 1, #WAPProceduralDistributionTable, 2 do 
    for j = 1, #WAPBookTble do
        table.insert(ProceduralDistributions.list[WAPProceduralDistributionTable[i]].items, WAPBookTble[j])
        table.insert(ProceduralDistributions.list[WAPProceduralDistributionTable[i]].items, WAPProceduralDistributionTable[i+1])
    end
end

local WAPDistributionTable = {
    {"all",{
        "metal_shelves",0.5,
        "crate",1,
        "bin",0.5,
        "counter",1,
        "inventorymale",0.5,
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