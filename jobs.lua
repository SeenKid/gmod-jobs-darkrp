TEAM_CITIZEN = DarkRP.createJob("Citoyen", {
    color = Color(80, 0, 255, 255),
    model = {
        "models/player/eli.mdl",
        "models/player/monk.mdl",
        "models/player/alyx.mdl"
    },
    description = [[Vous êtes un citoyen.]],
    weapons = {},
    command = "citoyen",
    max = 0,
    salary = 10,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens"
})
TEAM_MEDIC = DarkRP.createJob("Docteur", {
    color = Color(20, 255, 0, 255),
    model = {"models/player/kleiner.mdl"},
    description = [[Vous êtes un docteur, vous sauvez des vies au péril de la votre.]],
    weapons = {},
    command = "doc",
    max = 2,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens"
})
TEAM_DRUGCARTELBOSS = AddExtraTeam("Boss du Cartel", {
	color = Color(10, 10, 10, 255),
	model = "models/player/monk.mdl",
	description = [[As the mexican drug boss you have the athority to
	tell the mexican drug cartel what to do. But be careful because
	police informent will be looking out for you 
	
	SALARY:50]],
	weapons = {"lockpick", "unarrest_stick", "hl2_combo_fists"},
	command = "drugcartelboss",
	max = 1,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false
})
TEAM_DRUGCARTEL = AddExtraTeam("Membre du Cartel", {
	color = Color(100, 100, 100, 255),
	model = "models/player/Group03/male_03.mdl",
	description = [[You work for the Mexican Drug Cartel,
You take orders from the Mexican Drug Cartel boss only. 
	
	SALARY:45]],
	weapons = {"hl2_combo_fists"},
	command = "drugcartel",
	max = 5,
	salary = 45,
	admin = 0,
	vote = false,
	hasLicense = false
})
TEAM_BANK = AddExtraTeam("Downtown Bank Owner", {
	color = Color(65, 90, 255, 255),
	model = "models/player/Hostage/hostage_04.mdl",
	description = [[ [Gold Donator] As a Bank Owner you can store
	printers, guns etc..... 
	
	SALARY:120]],
	weapons = {"hl2_combo_fists"},
	command = "bank",
	max = 2,
	salary = 120,
	admin = 0,
	vote = false,
	hasLicense = false
})
TEAM_AVOCAT = DarkRP.createJob("Avocat", {
color = Color(5, 0, 255, 255),
model = {"models/fearless/mayor2.mdl"},
description = [[]],
weapons = {"weapon_arc_atmcard", "weapon_fists", "itemstore_pickup", "weapon_keycard", "sw_trashbag"},
command = "avocat",
max = 2,
salary = 15,
admin = 0,
vote = false,
hasLicense = false,
candemote = false,
-- CustomCheck
medic = false,
chief = false,
mayor = false,
hobo = false,
cook = false,
type = "commerce",
category = "Citizens",
PlayerDeath = function(ply, weapon, killer)
ply:teamBan()
ply:changeTeam(GAMEMODE.DefaultTeam, true)
end
})
TEAM_BRAQUEUR = DarkRP.createJob("Braqueurs", {
color = Color(0, 217, 85, 255),
model = {"models/player/pd2_wolf_p.mdl","models/player/pd2_hoxton_p.mdl","models/player/pd2_chains_p.mdl"},
description = [[Vous êtes le braqueur de la ville braquer différent type de lieu comme la banque ou des personnes!]],
weapons = {"weapon_fists","weapon_arc_atmcard","weapon_keycard", "sw_trashbag"},
command = "bqr",
max = 4,
salary = 0,
admin = 0,
vote = true,
type = "crime",
hasLicense = false,
-- CustomCheck
medic = false,
chief = false,
mayor = false,
hobo = false,
cook = false,
category = "Citizens",
PlayerDeath = function(ply, weapon, killer)
ply:teamBan()
ply:changeTeam(GAMEMODE.DefaultTeam, true)
end
})
TEAM_GARDEDMAIRE = DarkRP.createJob("Garde du Maire", {
color = Color(18, 93, 117, 255),
model = {"models/player/smith.mdl"},
description = [[Vous devez assurez la sécuriter du maire!]],
weapons = {"weaponchecker", "weapon_arc_atmcard", "m9k_colt1911", "weapon_baloondie","weapon_fists","weapon_stungun", "weapon_keycard", "sw_trashbag"},
command = "gardem",
max = 2,
salary = 50,
admin = 0,
vote = false,
hasLicense = false,
candemote = true,
-- CustomCheck
medic = false,
chief = false,
mayor = false,
type = "commerce",
hobo = false,
cook = false,
category = "Citizens",
PlayerDeath = function(ply, weapon, killer)
ply:teamBan()
ply:changeTeam(GAMEMODE.DefaultTeam, true)
end
})

TEAM_ADMIN = AddExtraTeam("Admin On Patrol", {
	color = Color(100, 100, 100, 255),
	model = {
	"models/player/combine_super_soldier.mdl",
	},
	description = [[Info]],
	weapons = {"hl2_combo_fists"},
	command = "admin",
	max = 3,
	salary = 1000,
	admin = 1, 
	vote = false,
	hasLicense = false,
 category = "Citizens",
        customCheck = function(ply)
             return ply:IsSuperAdmin() or ply:IsUserGroup("admin")
        end
})