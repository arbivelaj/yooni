Application.destroy_all
University.destroy_all
Program.destroy_all
Favourite.destroy_all
Review.destroy_all
User.destroy_all



edhec = University.create(
  name: "Edhec Business School",
  location: "16-18 Rue du 4 Septembre, 75002 Paris, France",
  description: "Created by and for entrepreneurs, EDHEC has embodied the fundamental values of business for over a century.
Our aim is to pass on the keys to business success to new generations of managers and entrepreneurs, spreading the conviction that companies can have a positive impact on the economy and on society as a whole.",
  website: "https://www.edhec.edu" ,
  phone_number: "+33320154482" ,
  contact: "communication@edhec.edu" ,

  photo_urls: ["http://res.cloudinary.com/dbk82xjri/image/upload/v1498208044/finance_hec_q8dp3r.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498209883/StockSnap_CY0BG49341_m1zbvg.jpg",
               "http://res.cloudinary.com/dbk82xjri/image/upload/v1498209978/students-working-on-project_4460x4460_dbevuc.jpg"])



hec = University.create(
  name: "HEC Paris",
  location: "1 rue de la Libération, 78350 Jouy-en-Josas, France",
  description: "HEC Paris’ mission is twofold: training the global leaders of tomorrow, and taking an active part in the production of knowledge on management.",
  website: "https://www.hec.edu" ,
  phone_number: "+33139677000" ,
  contact: "dircom@hec.fr",
  photo_urls: ["http://res.cloudinary.com/dbk82xjri/image/upload/v1498148004/HEC_Paris_Campus_dhjzdc.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498208089/hec_marketing_i5eedq.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498209881/StockSnap_II8IZ684IW_cryqxm.jpg"])


bocconi = University.create(
  name: "Università Bocconi",
  location: "Via Roberto Sarfatti, 25, 20100 Milano, Italy",
  description: "For a century, Bocconi has played a leading role in Italy's social and economic modernization. It has remained true to its founding values of being a major research university, with democratic values and open to the world, as well as financially and politically independent.",
  website: "https://www.unibocconi.eu",
  phone_number: "+390258363535",
  contact: "inexchange@unibocconi.it",

  photo_urls: ["http://res.cloudinary.com/dbk82xjri/image/upload/v1498481365/boocccccni_wdqw7b.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498218590/bocconi_residence_irin3x.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498148259/bocconi_finance_n96yra.jpg"])

esade = University.create(
  name: "ESADE Business School",
  location: "Avinguda de Pedralbes, 60-62, 08034 Barcelona, Spain",
  description: "ESADE is an international academic institution with over fifty years of history. The main asset of this school are people: faculty members and professionals who nurture reflection, dialogue, projects and initiatives to ensure excellent education, pioneering research and a valuable contribution to social debate and transformation.",
  website: "https://www.esade.eu",
  phone_number: "+34932806162" ,
  contact: "esade.madrid@esade.edu",

  photo_urls: ["http://res.cloudinary.com/dbk82xjri/image/upload/v1498148082/ESADE_business_pzwb9d.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498207825/entrepreneur-593358_1920_runrvd.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498210689/AdobeStock_84819017_pqe9vs.jpg"])


imperial = University.create(
  name: "Imperial College London",
  location: "Kensington, London SW7 2AZ, UK",
  description: "Imperial College London is a world-class university with a mission to benefit society through excellence in science, engineering, medicine and business.",
  website: "https://www.esade.eu",
  phone_number: "+34932806162",
  contact: "business-school@imperial.ac.uk",

  photo_urls: ["http://res.cloudinary.com/dbk82xjri/image/upload/v1498218729/imperail_college_aqhhwg.jpg",
                "http://res.cloudinary.com/dbk82xjri/image/upload/v1498148039/ImperialCollege_f3sgj8.jpg",
                "http://res.cloudinary.com/dbk82xjri/image/upload/v1498209978/crowd-participating-at-event_4460x4460_vyagyb.jpg"])


bologna = University.create(
  name: "University of Bologna",
  location: "Largo Trombetti, 1 40126 Bologna, Italy",
  description: "The presence throughout the territory, the international outlook, the research, the programme catalogue, the information services: in these and many other areas, today the Alma Mater paves the way for innovation.",
  website: "https://www.unibo.it",
  phone_number: "+390512099349",
  contact: "urp@unibo.it",

  photo_urls: ["http://res.cloudinary.com/dbk82xjri/image/upload/v1498207648/Milan_sywld7.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498207021/pexels-photo-267885_qnyqrp.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498208743/StockSnap_MPU1111YLS_nuddyk.jpg"])


berlin = University.create(
  name: "Freie Universität Berlin",
  location: "Kaiserswerther Str. 16-18, 14195, Berlin, Germany",
  description: "Freie Universität is one of the eleven universities to have been successful in all three lines of funding in the German government's Excellence Initiative in 2012.",
  website: "https://www.fu-berlin.de",
  phone_number: "+493083870000",
  contact: "info-service@fu-berlin.de",

  photo_urls: ["http://res.cloudinary.com/dbk82xjri/image/upload/v1498218666/FREIE_CAMPUS_gbqkbv.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498207834/startup-849805_1920_b8wwge.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498208916/StockSnap_JA1F4AB58M_lq1bx5.jpg"])



amsterdam = University.create(
  name: "University of Amsterdam",
  location: "1012 WX Amsterdam, Netherlands",
  description: "The University of Amsterdam is one of the world’s intellectual hubs. A university with a leading international reputation, it is firmly rooted in the city of Amsterdam.",
  website: "https://www.uva.nl",
  phone_number: "+31205259111",
  contact: "servicedesk-ac@uva.nl",

  photo_urls: ["http://res.cloudinary.com/dbk82xjri/image/upload/v1498207963/uni_of_amsterd-science_qpm53p.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498207841/uni_of_amsterdam_t7mucn.jpg",
              "http://res.cloudinary.com/dbk82xjri/image/upload/v1498209975/university-study-group_4460x4460_uej8hx.jpg"])




#================================

management = Program.create(
  title: "Master in Management",
  ranking: 1,
  tuition: 20000,
  scholarship: 1181,
  level: "Master",
  university: hec,
  subject: "Management")


management2 = Program.create(
  title: "Master in Management",
  ranking: 15,
  tuition: 20000,
  scholarship: 5000,
  level: "Master",
  university: edhec,
  subject: "Management")
finance = Program.create(
  title: "Master in International Finance",
  ranking: 2,
  tuition: 30000,
  scholarship: 1181,
  level: "Master",
  university: hec,
  subject: "Finance")
finance2 = Program.create(
  title: "Master in Finance",
  ranking: 1,
  tuition: 21500,
  scholarship: 5000,
  level: "Master",
  university: edhec,
  subject: "Finance")

media = Program.create(
  title: "Bachelor's in Media and Information",
  ranking: 58,
  tuition: 2000,
  scholarship: 6000,
  level: "Bachelor",
  university: amsterdam,
  subject: "Media")

media2 = Program.create(
  title: "Bachelor's in Media and Information",
  ranking: 58,
  tuition: 2000,
  scholarship: 6000,
  level: "Bachelor",
  university: bocconi,
  subject: "Media")


politics = Program.create(
  title: "Bachelor's in Political Science",
  ranking: 58,
  tuition: 2000,
  scholarship: 6000,
  level: "Bachelor",
  university: amsterdam,
  subject: "Politics")

economics = Program.create(
  title: "Bachelor's in Economics",
  ranking: 58,
  tuition: 2000,
  scholarship: 6000,
  level: "Bachelor",
  university: amsterdam,
  subject: "Economics")

# Feed it bwoy!

science = Program.create(
  title: "Bachelor's in Actuarial Science",
  ranking: 58,
  tuition: 2006,
  scholarship: 18000,
  level: "Bachelor",
  university: amsterdam,
  subject: "Actuarial")

engineering = Program.create(
  title: "Bachelor's in Design Engineering",
  ranking: 58,
  tuition: 9250,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "Engineering")

computer1 = Program.create(
  title: "Bachelor's in Computing Artificial Intelligence",
  ranking: 12,
  tuition: 9250,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "computer science")

business = Program.create(
  title: "Executive MBA",
  ranking: 8,
  tuition: 39500,
  scholarship: 8500,
  level: "MBA",
  university: edhec,
  subject: "Management")

business2 = Program.create(
  title: "Full time MBA",
  ranking: 17,
  tuition: 12540,
  scholarship: 8500,
  level: "MBA",
  university: esade,
  subject: "Management")

business3 = Program.create(
  title: "Full time MBA",
  ranking: 17,
  tuition: 12540,
  scholarship: 8500,
  level: "MBA",
  university: esade,
  subject: "Management")

marketing2 = Program.create(
  title: "Integrated marketing for the digital world",
  ranking: 22,
  tuition: 22900,
  scholarship: 1181,
  level: "Master",
  university: hec,
  subject: "Marketing")

business4 = Program.create(
  title: "Bachelor of Business Administration",
  ranking: 27,
  tuition: 15200,
  scholarship: 7600,
  level: "Bachelor",
  university: esade,
  subject: "Management")

law = Program.create(
  title: "Bachelor in Law",
  ranking: 27,
  tuition: 15200,
  scholarship: 7600,
  level: "Bachelor",
  university: esade,
  subject: "Law")

finance3 = Program.create(
  title: "Executive Master in Finance",
  ranking: 30,
  tuition: 30000,
  scholarship: 8000,
  level: "Master",
  university: bocconi,
  subject: "Finance")

management3 = Program.create(
  title: "Executive MBA",
  ranking: 14,
  tuition: 44000,
  scholarship: 30000,
  level: "MBA",
  university: bocconi,
  subject: "Management")

medicine = Program.create(
  title: "Medical Biotechnology",
  ranking: 17,
  tuition: 4073,
  scholarship: 11000,
  level: "Master",
  university: bologna,
  subject: "Biology")

biology = Program.create(
  title: "Bioinformatics",
  ranking: 10,
  tuition: 4073,
  scholarship: 11000,
  level: "Master",
  university: bologna,
  subject: "Biology")

sociology = Program.create(
  title: "Data Science",
  ranking: 13,
  tuition:  14800,
  scholarship: 11000,
  level: "Master",
  university: bologna,
  subject: "Economics")

engineering2 = Program.create(
  title: "Chemical Engineering",
  ranking: 4,
  tuition:  9250 ,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "Economics")

biology = Program.create(
  title: "Biochemistry",
  ranking: 8,
  tuition:  9250 ,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "Biology")

engineering3 = Program.create(
  title: "Aeronautical Engineering",
  ranking: 3,
  tuition:  9250 ,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "Engineering")

engineering4 = Program.create(
  title: "Materials Science and Engineering",
  ranking: 3,
  tuition:  9250 ,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "Engineering")
