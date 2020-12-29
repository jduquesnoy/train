# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#  Character.create(name: 'Luke', movie: movies.first)

ListUnit.destroy_all
Unit.destroy_all
Comment.destroy_all
List.destroy_all
Subfaction.destroy_all
Faction.destroy_all
User.destroy_all


ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

puts "Creating faction...."

order={name:"order"}
death={name:"death"}


factions = [order,death]


factions.each do |attributes|
  faction = Faction.create!(attributes)
  puts "Created #{faction.name}"
end
puts "Finished!"

daughter={name:"daughter",faction_id:Faction.where(name:"order").first.id}
fireslayer={name:"fireslayer",faction_id:Faction.where(name:"order").first.id}
city={name:"city",faction_id:Faction.where(name:"order").first.id}
nighthaunt={name:"nighthaunt",faction_id:Faction.where(name:"death").first.id}


subfactions = [daughter,fireslayer,city,nighthaunt]


subfactions.each do |attributes|
  subfaction = Subfaction.create!(attributes)
  puts "Created #{subfaction.name}"
end
puts "Finished!"




morathi={name:"Morathi",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120212015_DaughtersOfKhaineMorathi01.jpg",point:280,subfaction_id:Subfaction.where(name:"daughter").first.id}
melusai={name:"Melusai Blood Sisters",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120212017_DoKBloodSisters01.jpg",point:180,subfaction_id:Subfaction.where(name:"daughter").first.id}
aelves={name:"witch aelves",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120212014_DaughtersofKhaineCoven04.jpg",point:150,subfaction_id:Subfaction.where(name:"daughter").first.id}
khinerai={name:"khinerai lifetakers",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120212016_DoKLifetakers01.jpg",point:200,subfaction_id:Subfaction.where(name:"daughter").first.id}
cauldron={name:"slaughter Queen on Cauldron of blood",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120212018_SlaughterQueenCauldronofBlood01.jpg",point:210,subfaction_id:Subfaction.where(name:"daughter").first.id}
slaughter={name:"sisters of slaughter",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120212014_DaughtersofKhaineCoven05.jpg",point:190,subfaction_id:Subfaction.where(name:"daughter").first.id}
heartrender={name:"kinerai heartrenders",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120212016_DoKHeartrenders01.jpg",point:150,subfaction_id:Subfaction.where(name:"daughter").first.id}

daughters=[morathi,melusai,aelves,khinerai,cauldron,slaughter,heartrender]

daughters.each do |attributes|
  unit = Unit.create!(attributes)
  puts "Created #{unit.name}"
end
puts "Finished!"



magmic={name:"magmic battleforge",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120205035_CITFYREMagmicBattleforge01.jpg",point:80,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
doom={name:"doom seeker",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99070205009_FYREDoomseeker01.jpg",point:80,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
elues={name:"les haches elues fireslayers",image:"https://www.games-workshop.com/resources/catalog/product/600x620/60120705001_ChosenAxesENG02.jpg",point:150,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
vulkite={name:"vulkite berzerkers",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120205015_FyreslayersVulkiteBerzerkers01.jpg",point:160,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
runemaster={name:"auric runemaster",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99070205005_FyreslayersAuricRunemaster01.jpg",point:180,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
battlesmith={name:"battle smith",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99070205006_BattleSmith01.jpg",point:120,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
grim={name:"grimwrath berzeker",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99070205007_GrimWrathBerzerker01.jpg",point:110,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
heartguard={name:"hearthguard Berzekers",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120205016_FyreslayersHearthGuardBerzerkers01.jpg",point:180,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
auricheartguard={name:"auric hearthguard",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120205016_FyreslayersAuricHearthguard01.jpg",point:90,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
auricprem={name:"auric runesmiter on magmadroth",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120205017_AuricRunesmiterOnMagmadroth01.jpg",point:300,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
auricsec={name:"auric runefather on magmadroth",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120205017_RuneFatherOnMagmadroth02.jpg",point:300,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
aurictrois={name:"auric runeson on magmadroth",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120205017_RuneSonOnMagmadroth01.jpg",point:300,subfaction_id:Subfaction.where(name:"fireslayer").first.id}

fireslayers=[magmic,doom,elues,vulkite,runemaster,battlesmith,grim,heartguard,auricheartguard,auricprem,auricsec,aurictrois]

fireslayers.each do |attributes|
  unit = Unit.create!(attributes)
  puts "Created #{unit.name}"
end
puts "Finished!"


guard={name:"freeguild guard",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120202013_StateTroopsNEW01.jpg",point:120,subfaction_id:Subfaction.where(name:"city").first.id}
volleygun={name:"Hellblaster volley gun",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120202014_EMPVolleyGun01.jpg",point:100,subfaction_id:Subfaction.where(name:"city").first.id}
handgunner={name:"freeguild handgunners",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120202012_HandgunnersNEW01.jpg",point:110,subfaction_id:Subfaction.where(name:"city").first.id}
greatsword={name:"freeguild greatswords",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120202025_GreatswordsNEW01.jpg",point:180,subfaction_id:Subfaction.where(name:"city").first.id}
demigryph={name:"demigryph knights",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120202032_EMPDemigryphKnights01.jpg",point:240,subfaction_id:Subfaction.where(name:"city").first.id}
generalongryph={name:"freeguild general on griffon",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120202030_KarlFranzonDeathclawLead.jpg",point:190,subfaction_id:Subfaction.where(name:"city").first.id}
mageongryph={name:"battlemage on griffon",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120202030_AmberWizardonGriffonNEW01.jpg",point:190,subfaction_id:Subfaction.where(name:"city").first.id}
luminark={name:"luminark of hysh",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120202031_LuminarkofHyshLead.jpg",point:120,subfaction_id:Subfaction.where(name:"city").first.id}
celestial={name:"celestial Hurricanum",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120202031_CelestialHurricanumLEAD.jpg",point:120,subfaction_id:Subfaction.where(name:"city").first.id}

cities=[guard,volleygun,handgunner,greatsword,demigryph,generalongryph,mageongryph,luminark,celestial]

cities.each do |attributes|
  unit = Unit.create!(attributes)
  puts "Created #{unit.name}"
end
puts "Finished!"


revenants={name:"bladegheist revenants",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120207066_BladegheistRevenants01.jpg",point:150,subfaction_id:Subfaction.where(name:"nighthaunt").first.id}
harridan={name:"dreadscythe harridans",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120207067_DreadscytheHarrridans01.jpg",point:140,subfaction_id:Subfaction.where(name:"nighthaunt").first.id}
liekoron={name:"liekoron the executioner",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99070207008_LiekoronExecutioner01.jpg",point:80,subfaction_id:Subfaction.where(name:"nighthaunt").first.id}
chainsraps={name:"chainsrap hordes",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120207059_ETBChainrasps01.jpg",point:120,subfaction_id:Subfaction.where(name:"nighthaunt").first.id}
kurdoss={name:"kurdoss valentian",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120207061_Kurdos01.jpg",point:180,subfaction_id:Subfaction.where(name:"nighthaunt").first.id}
reikenor={name:"reikenor the grimhailer",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120207058_ReikenorGrimhailer01.jpg",point:225,subfaction_id:Subfaction.where(name:"nighthaunt").first.id}
dredblade={name:"dreadblade harrows",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120207063_DreadbladeHarrows01.jpg",point:120,subfaction_id:Subfaction.where(name:"nighthaunt").first.id}
mymourn={name:"mymourn banshees",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120207055_EtbMyrmournBanshees01.jpg",point:80,subfaction_id:Subfaction.where(name:"nighthaunt").first.id}
grimghast={name:"grimghast reapers",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120207065_GrimghastReapers01.jpg",point:180,subfaction_id:Subfaction.where(name:"nighthaunt").first.id}
coach={name:"black coach",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120207057_NighthauntsBlackCoach01.jpg",point:280,subfaction_id:Subfaction.where(name:"nighthaunt").first.id}

nght=[revenants,harridan,liekoron,chainsraps,kurdoss,reikenor,dredblade,mymourn,grimghast,coach]



nght.each do |attributes|
  unit = Unit.create!(attributes)
  puts "Created #{unit.name}"
end
puts "Finished!"


puts "Creating user..."

jean_dupuis = { first_name: "jean", last_name: "dupuis", username: "jndps", email: "jean.dupuis@toto.fr", password:"123456"}
paul_young = { first_name: "paul", last_name: "young", username: "plng", email: "paul.young@toto.fr", password:"123456"}
george_michael = { first_name: "george", last_name: "michael", username: "grgmchl", email: "george.michael@toto.fr", password:"123456"}
michael_jackson = { first_name: "michael", last_name: "jackson", username: "mchljcksn", email: "michael.jackson@toto.fr", password:"123456"}
phil_collins = { first_name: "phil", last_name: "collins", username: "phlcllns", email: "phil.collins@toto.fr", password:"123456"}
diana_ross = { first_name: "diana", last_name: "ross", username: "dnrss", email: "diana.ross@toto.fr", password:"123456"}
tupac_shakur = { first_name: "tupac", last_name: "shakur", username: "tpcshkr", email: "tupac.shakur@toto.fr", password:"123456"}
lionel_richie = { first_name: "lionel", last_name: "richie", username: "lnlrch", email: "lionel.richie@toto.fr", password:"123456"}
mariah_carey = { first_name: "mariah", last_name: "carey", username: "mrhcr", email: "mariah.carey@toto.fr", password:"123456"}
alanis_morissette = { first_name: "alanis", last_name: "morissette", username: "lnsmrsstt", email: "alanis.morissette@toto.fr", password:"123456"}
chantal_goya = { first_name: "chantal", last_name: "goya", username: "chntlg", email: "chantal.goya@toto.fr", password:"123456"}
ma_donna = { first_name: "ma", last_name: "donna", username: "mdnn", email: "ma.donna@toto.fr", password:"123456"}
alan_parsons = { first_name: "alan", last_name: "parsons", username: "lnprsns", email: "alan.parsons@toto.fr", password:"123456"}
eddy_mitchel = { first_name: "eddy", last_name: "mitchel", username: "ddmtchl", email: "eddy.mitchel@toto.fr", password:"123456"}
van_halen = { first_name: "van", last_name: "halen", username: "vnhln", email: "van.halen@toto.fr", password:"123456"}
quincy_jones= { first_name: "quincy", last_name: "jones", username: "qncyjns", email: "quincy.jones@toto.fr", password:"123456"}
peter_gabriel = { first_name: "peter", last_name: "gabriel", username: "ptrgbrl", email: "peter.gabriel@toto.fr", password:"123456"}
claude_francois = { first_name: "claude", last_name: "francois", username: "cldfrncs", email: "claude.francois@toto.fr", password:"123456"}
johnny_haliday = { first_name: "johnny", last_name: "haliday", username: "jhnnhld", email: "johnny_haliday@toto.fr", password:"123456"}
ringo_star = { first_name: "ringo", last_name: "star", username: "rngstr", email: "ringo.star@toto.fr", password:"123456"}
paul_mccartney = { first_name: "paul", last_name: "mccartney", username: "plmccrtn", email: "paul.mccartney@toto.fr", password:"123456"}
john_lennon = { first_name: "john", last_name: "lennon", username: "jhnlnnn", email: "john.lennon@toto.fr", password:"123456"}
mick_jagger = { first_name: "mick", last_name: "jagger", username: "mckjggr", email: "mick.jagger@toto.fr", password:"123456"}
keith_richards = { first_name: "keith", last_name: "richards", username: "kthrchrds", email: "keith.richards@toto.fr", password:"123456"}
robert_plant= { first_name: "robert", last_name: "plant", username: "rbrtplnt", email: "robert.plant@toto.fr", password:"123456"}
jimmy_page = { first_name: "jimmy", last_name: "page", username: "jmmpg", email: "jimmy.page@toto.fr", password:"123456"}
freddie_mercury = { first_name: "freddie", last_name: "mercury", username: "frddmrcr", email: "freddie.mercury@toto.fr", password:"123456"}
john_deacon = { first_name: "john", last_name: "deacon", username: "jhndcn", email: "john.deacon@toto.fr", password:"123456"}



users =[ jean_dupuis, paul_young, george_michael, michael_jackson, phil_collins, diana_ross, tupac_shakur, lionel_richie, mariah_carey, alanis_morissette,
chantal_goya, ma_donna, alan_parsons,eddy_mitchel,van_halen,quincy_jones,peter_gabriel,claude_francois,johnny_haliday,ringo_star,paul_mccartney,john_lennon,mick_jagger,keith_richards,
 robert_plant,jimmy_page,freddie_mercury,john_deacon]

 

# users=[jean_dupuis, paul_young,george_michael]

users.each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.email}"
end
puts "Finished!"

#lists creation
list_a = List.create({user_id:User.where(email:"jean.dupuis@toto.fr").first.id,subfaction_id:Subfaction.where(name:"city").first.id,point_category:1500,point_number:1490})
puts list_a
list_b = List.create({user_id:User.where(email:"jean.dupuis@toto.fr").first.id,subfaction_id:Subfaction.where(name:"fireslayer").first.id,point_category:1500,point_number:1500})
puts list_b
list_c = List.create({user_id:User.where(email:"paul.young@toto.fr").first.id,subfaction_id:Subfaction.where(name:"daughter").first.id,point_category:1500,point_number:1450})
puts list_c
list_d = List.create({user_id:User.where(email:"paul.young@toto.fr").first.id,subfaction_id:Subfaction.where(name:"city").first.id,point_category:1500,point_number:1500})
puts list_d
list_e = List.create({user_id:User.where(email:"george.michael@toto.fr").first.id,subfaction_id:Subfaction.where(name:"daughter").first.id,point_category:1500,point_number:1390})
puts list_e
list_f = List.create({user_id:User.where(email:"george.michael@toto.fr").first.id,subfaction_id:Subfaction.where(name:"nighthaunt").first.id,point_category:1000,point_number:945})
puts list_f

list_unit_a = ListUnit.create({
  unit_id:Unit.where(name:"freeguild general on griffon").first.id,
  list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").first.id).first.id,
  point:Unit.where(name:"freeguild general on griffon").first.point
})
puts list_unit_a

# Jean Dupont lists

general_gryph_jean = {unit_id:Unit.where(name:"freeguild general on griffon").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").first.id).first.id,point:Unit.where(name:"freeguild general on griffon").first.point}
demy_gryph_a_jean = {unit_id:Unit.where(name:"demigryph knights").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").first.id).first.id,point:Unit.where(name:"demigryph knights").first.point}
demy_gryph_b_jean = {unit_id:Unit.where(name:"demigryph knights").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").first.id).first.id,point:Unit.where(name:"demigryph knights").first.point}
demy_gryph_c_jean = {unit_id:Unit.where(name:"demigryph knights").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").first.id).first.id,point:Unit.where(name:"demigryph knights").first.point}
demy_gryph_d_jean = {unit_id:Unit.where(name:"demigryph knights").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").first.id).first.id,point:Unit.where(name:"demigryph knights").first.point}
demy_gryph_e_jean = {unit_id:Unit.where(name:"demigryph knights").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").first.id).first.id,point:Unit.where(name:"demigryph knights").first.point}
volley_gun_jean = {unit_id:Unit.where(name:"Hellblaster volley gun").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").first.id).first.id,point:Unit.where(name:"Hellblaster volley gun").first.point}

unit_list_a=[general_gryph_jean, demy_gryph_a_jean, demy_gryph_b_jean, demy_gryph_c_jean, demy_gryph_d_jean, demy_gryph_e_jean,volley_gun_jean ]

unit_list_a.each do |attributes|
  unit_list = ListUnit.create!(attributes)
  puts "Created #{unit_list}"
end
puts "Finished!"



auricprem_jean = {unit_id:Unit.where(name:"auric runesmiter on magmadroth").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").last.id).first.id,point:Unit.where(name:"auric runesmiter on magmadroth").first.point}
auricsec_jean = {unit_id:Unit.where(name:"auric runefather on magmadroth").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").last.id).first.id,point:Unit.where(name:"auric runefather on magmadroth").first.point}
hearth_a_jean = {unit_id:Unit.where(name:"hearthguard Berzekers").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").last.id).first.id,point:Unit.where(name:"hearthguard Berzekers").first.point}
hearth_b_jean = {unit_id:Unit.where(name:"hearthguard Berzekers").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").last.id).first.id,point:Unit.where(name:"hearthguard Berzekers").first.point}
hearth_c_jean = {unit_id:Unit.where(name:"hearthguard Berzekers").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").last.id).first.id,point:Unit.where(name:"hearthguard Berzekers").first.point}
hearth_d_jean = {unit_id:Unit.where(name:"hearthguard Berzekers").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").last.id).first.id,point:Unit.where(name:"hearthguard Berzekers").first.point}
hearth_e_jean = {unit_id:Unit.where(name:"hearthguard Berzekers").first.id,list_id:List.where(user_id:User.where(email:"jean.dupuis@toto.fr").last.id).first.id,point:Unit.where(name:"hearthguard Berzekers").first.point}

unit_list_b=[auricprem_jean, auricsec_jean, hearth_a_jean, hearth_b_jean, hearth_c_jean, hearth_d_jean,hearth_e_jean ]

unit_list_b.each do |attributes|
  unit_list = ListUnit.create!(attributes)
  puts "Created #{unit_list}"
end
puts "Finished!"

# Paul young lists

morathi_paul = {unit_id:Unit.where(name:"Morathi").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").first.id).first.id,point:Unit.where(name:"Morathi").first.point}
cauldron_paul = {unit_id:Unit.where(name:"slaughter Queen on Cauldron of blood").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").first.id).first.id,point:Unit.where(name:"witch aelves").first.point}
khinerai_paul = {unit_id:Unit.where(name:"khinerai lifetakers").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").first.id).first.id,point:Unit.where(name:"khinerai lifetakers").first.point}
sister_a_paul = {unit_id:Unit.where(name:"sisters of slaughter").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").first.id).first.id,point:Unit.where(name:"sisters of slaughter").first.point}
sister_b_paul = {unit_id:Unit.where(name:"sisters of slaughter").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").first.id).first.id,point:Unit.where(name:"sisters of slaughter").first.point}
sister_c_paul = {unit_id:Unit.where(name:"sisters of slaughter").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").first.id).first.id,point:Unit.where(name:"sisters of slaughter").first.point}
sister_d_paul = {unit_id:Unit.where(name:"sisters of slaughter").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").first.id).first.id,point:Unit.where(name:"sisters of slaughter").first.point}


unit_list_c=[morathi_paul, cauldron_paul, khinerai_paul, sister_a_paul, sister_b_paul, sister_c_paul,sister_d_paul ]

unit_list_c.each do |attributes|
  unit_list = ListUnit.create!(attributes)
  puts "Created #{unit_list}"
end
puts "Finished!"



general_paul = {unit_id:Unit.where(name:"freeguild general on griffon").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild general on griffon").first.point}
guard_a_paul = {unit_id:Unit.where(name:"freeguild guard").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild guard").first.point}
guard_b_paul = {unit_id:Unit.where(name:"freeguild guard").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild guard").first.point}
guard_c_paul = {unit_id:Unit.where(name:"freeguild guard").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild guard").first.point}
guard_d_paul = {unit_id:Unit.where(name:"freeguild guard").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild guard").first.point}
guard_e_paul = {unit_id:Unit.where(name:"freeguild guard").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild guard").first.point}
guard_f_paul = {unit_id:Unit.where(name:"freeguild guard").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild guard").first.point}
guard_g_paul = {unit_id:Unit.where(name:"freeguild guard").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild guard").first.point}
guard_h_paul = {unit_id:Unit.where(name:"freeguild guard").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild guard").first.point}
guard_i_paul = {unit_id:Unit.where(name:"freeguild guard").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild guard").first.point}
guard_j_paul = {unit_id:Unit.where(name:"freeguild guard").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild guard").first.point}
handgun_paul = {unit_id:Unit.where(name:"freeguild handgunners").first.id,list_id:List.where(user_id:User.where(email:"paul.young@toto.fr").last.id).first.id,point:Unit.where(name:"freeguild handgunners").first.point}


unit_list_d=[general_paul, guard_a_paul, guard_b_paul, guard_c_paul, guard_d_paul, guard_e_paul,guard_f_paul,guard_g_paul,guard_h_paul,guard_i_paul,guard_j_paul,handgun_paul ]

unit_list_d.each do |attributes|
  unit_list = ListUnit.create!(attributes)
  puts "Created #{unit_list}"
end
puts "Finished!"


# Georges Michael lists


morathi_g = {unit_id:Unit.where(name:"Morathi").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").first.id).first.id,point:Unit.where(name:"Morathi").first.point}
cauldron_g = {unit_id:Unit.where(name:"slaughter Queen on Cauldron of blood").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").first.id).first.id,point:Unit.where(name:"witch aelves").first.point}
khinerai_a_g = {unit_id:Unit.where(name:"khinerai lifetakers").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").first.id).first.id,point:Unit.where(name:"khinerai lifetakers").first.point}
khinerai_b_g = {unit_id:Unit.where(name:"khinerai lifetakers").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").first.id).first.id,point:Unit.where(name:"khinerai lifetakers").first.point}
khinerai_c_g = {unit_id:Unit.where(name:"khinerai lifetakers").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").first.id).first.id,point:Unit.where(name:"khinerai lifetakers").first.point}
khinerai_d_g = {unit_id:Unit.where(name:"khinerai lifetakers").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").first.id).first.id,point:Unit.where(name:"khinerai lifetakers").first.point}
khinerai_e_g = {unit_id:Unit.where(name:"khinerai lifetakers").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").first.id).first.id,point:Unit.where(name:"khinerai lifetakers").first.point}





unit_list_e=[morathi_g, cauldron_g, khinerai_a_g, khinerai_b_g, khinerai_c_g, khinerai_d_g, khinerai_e_g ]

unit_list_e.each do |attributes|
  unit_list = ListUnit.create!(attributes)
  puts "Created #{unit_list}"
end
puts "Finished!"


reikenor_g = {unit_id:Unit.where(name:"reikenor the grimhailer").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").last.id).first.id,point:Unit.where(name:"reikenor the grimhailer").first.point}
grim_a_g = {unit_id:Unit.where(name:"grimghast reapers").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").last.id).first.id,point:Unit.where(name:"grimghast reapers").first.point}
grim_b_g = {unit_id:Unit.where(name:"grimghast reapers").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").last.id).first.id,point:Unit.where(name:"grimghast reapers").first.point}
grim_c_g = {unit_id:Unit.where(name:"grimghast reapers").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").last.id).first.id,point:Unit.where(name:"grimghast reapers").first.point}
grim_d_g = {unit_id:Unit.where(name:"grimghast reapers").first.id,list_id:List.where(user_id:User.where(email:"george.michael@toto.fr").last.id).first.id,point:Unit.where(name:"grimghast reapers").first.point}



unit_list_f=[reikenor_g, grim_a_g, grim_b_g, grim_c_g, grim_d_g]

unit_list_f.each do |attributes|
  unit_list = ListUnit.create!(attributes)
  puts "Created #{unit_list}"
end
puts "Finished!"


List.all.each do |list|
    15.times  do
    comment= {
      content:"lorem ipsum!!Amazing job!"*8,
      list_id:list.id,
      user_id:User.all.sample.id,
      note:(4..10).to_a.sample
    }
    com = Comment.create!(comment)
    puts "#{com} created!"
  end
  puts "comments of the list created"
end
