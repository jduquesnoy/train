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

# users=[jean_dupuis, paul_young]

users.each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.email}"
end
puts "Finished!"

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
auricprem={name:"auric runesmiter on magmadroth",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120205017_AuricRunesmiterOnMagmadroth01.jpg",point:90,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
auricsec={name:"auric runefather on magmadroth",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120205017_RuneFatherOnMagmadroth02.jpg",point:90,subfaction_id:Subfaction.where(name:"fireslayer").first.id}
aurictrois={name:"auric runeson on magmadroth",image:"https://www.games-workshop.com/resources/catalog/product/600x620/99120205017_RuneSonOnMagmadroth01.jpg",point:90,subfaction_id:Subfaction.where(name:"fireslayer").first.id}

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





# readers = User.all
# readers.each do |reader|
  
#   book_a ={ title:"le lezard", 
#             description:"le lezard est un reptile pouvant prendre plusieurs formes",
#             user_id: reader.id,
#             author:"Lee Zard",
#             collection:"Sang Froid",
#             editor:"betes sauvages",
#             genre:"science",
#             isbn:"1234567891234",
#             image:"le-lezard.png",
#           }

#   book_b ={ title:"le dindon", 
#             description:"le dindon est un oiseau qui ne vole pas et qui a disparu",
#             user_id: reader.id,
#             author:"Ding Dong",
#             collection:"la deplumée",
#             editor:"betes sauvages",
#             genre:"science",
#             isbn:"1234567891235",
#             image:"le-dindon.png",
#           }
        
#   book_c ={ title:"le Puma", 
#             description:"le puma ne peut parler de lui même que par lui même",
#             user_id: reader.id,
#             author:"Alain Delon",
#             collection:"Gros Melon",
#             editor:"Cherche Midi",
#             genre:"roman",
#             isbn:"1234567891236",
#             image:"le puma.png",
#           }
       
#   book_d ={ title:"les cornes musent", 
#             description:"quand les cornes musents ca s'entend",
#             user_id: reader.id,
#             author:"Alain Vache",
#             collection:"Grosjean",
#             editor:"Scolar",
#             genre:"roman",
#             isbn:"1234567891237",
#             image:"les cornes musent.png",
#           }

#   book_e ={ title:"Karaté Kid", 
#             description:"Larusso doit combattre les mechants Kobra Kaï",
#             user_id: reader.id,
#             author:"Camille Combat",
#             collection:"Fureur de vivre",
#             editor:"Cherche Midi",
#             genre:"roman",
#             isbn:"1234567891238",
#             image:"karate kid.png",
#           }

#   book_f ={ title:"ET l'intraterrestre", 
#             description:"ET téléphone 5G",
#             user_id: reader.id,
#             author:"Thierry Joueurdelamontagne",
#             collection:"wahou",
#             editor:"amblin",
#             genre:"sf",
#             isbn:"1234567891239",
#             image:"ET.png",
#           }

#   book_g ={ title:"Le Clown est la", 
#             description:"Il flotte, toi aussi tu veux flotter?",
#             user_id: reader.id,
#             author:"Thierry Roi",
#             collection:"Chaire de poule",
#             editor:"lu",
#             genre:"SF",
#             isbn:"1234567891240",
#             image:"le clown est la.png",
#           }


#   book_h ={ title:"la nuit tous les chats sont gris", 
#             description:"miaou miaou miaou miaou ",
#             user_id: reader.id,
#             author:"Cat Stevens",
#             collection:"Chat noir",
#             editor:"Felin pour l'autre",
#             genre:"roman",
#             isbn:"1234567891241",
#             image:"la nuit.png",
#           }

#   book_i ={ title:"Mbappe l'homme de la situation", 
#             description:"les plus beau but de l'histoire du football sont là",
#             user_id: reader.id,
#             author:"Jérémie Sivan",
#             collection:"Sueur froide",
#             editor:"Panini",
#             genre:"sport",
#             isbn:"1234567891242",
#             image:"mbappe.png",
#           }

#   book_j ={ title:"Voiture droit devant", 
#             description:"les plus beau moment de la F1 télécommandée",
#             user_id: reader.id,
#             author:"Pils Neuv",
#             collection:"bling bling",
#             editor:"volant",
#             genre:"sport",
#             isbn:"1234567891243",
#             image:"voiture droit devant.png",
#           }


      

#   books=[book_a,book_b,book_c,book_d,book_e,book_f,book_g,book_h,book_i,book_j]
#   books.each do |attributes| 
#      random_type = ["deposit","wish"].sample
#      if random_type == "deposit"
#       book =Book.create!(attributes)
#       puts "Created #{book.title} #{book.id}"
#      else 
#       book =WishBook.create!(attributes)
#       puts "Created #{book.title} #{book.id}"
#      end
#   end
#       puts "Finished!"
# end
        

#   books = Book.all
#   puts books
#   wish_books = WishBook.all
#   puts wish_books
#   puts "bases created"
#   books.each do |book|
#     wish_books = WishBook.where(user_id: book.user_id)
#     puts wish_books
#     wish_books.each do |wish_book|
#       finder= FinderMatch.create({book_id:book.id,wish_book_id: wish_book.id})
#       puts "Created #{finder.id}"
#     end
#   end
  
#   finder_match_a = FinderMatch.all
#   puts finder_match_a.class

#   finder_match_a.each do |match_a|

#     finder_match_a.each do |match_b|
#       if match_a.book.isbn == match_b.wish_book.isbn && match_b.book.isbn == match_a.wish_book.isbn
#         puts "-----------------"
#         puts match_a.book.isbn
#         puts match_b.wish_book.isbn
#         puts match_b.book.isbn
#         puts match_a.wish_book.isbn
#         puts "-----------------"
#         matchu=AnswerMatch.create(finder_match_a_id:match_a.id,finder_match_b_id: match_b.id)
#         destroy_match=AnswerMatch.where(finder_match_a_id:match_b.id).where(finder_match_b_id:match_a.id).destroy_all
    

#         puts "---------------------------"
#         puts "---------------------------"
#         puts "created #{matchu.id}"
#         puts "-----------------"
#       end
#     end
  # end