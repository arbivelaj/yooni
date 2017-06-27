University.destroy_all
Program.destroy_all
Favourite.destroy_all
Application.destroy_all
Review.destroy_all
User.destroy_all

edhec = University.create(
  name: "Edhec Business School",
  location: "16-18 Rue du 4 Septembre, 75002 Paris, France",
  description: "Created by and for entrepreneurs, EDHEC has embodied the fundamental values of business for over a century.
Our aim is to pass on the keys to business success to new generations of managers and entrepreneurs, spreading the conviction that companies can have a positive impact on the economy and on society as a whole.",
  website: "https://www.edhec.edu",
  phone_number: "+33320154482",
  contact: "communication@edhec.edu",
  photo_urls: ["http://res.cloudinary.com/dbk82xjri/image/upload/v1498571725/EDHEC_pq5bcy.jpg"]
  )



edhec = University.create(
  name: "Edhec Business School",
  location: "16-18 Rue du 4 Septembre, 75002 Paris, France",
  description: "Created by and for entrepreneurs, EDHEC has embodied the fundamental values of business for over a century.
Our aim is to pass on the keys to business success to new generations of managers and entrepreneurs, spreading the conviction that companies can have a positive impact on the economy and on society as a whole.",
  website: "https://www.edhec.edu" ,
  phone_number: "+33320154482" ,
  contact: "communication@edhec.edu" ,
  photo_urls: ["https://static.pexels.com/photos/443356/pexels-photo-443356.jpeg"])


hec = University.create(
  name: "HEC Paris",
  location: "1 rue de la Libération, 78350 Jouy-en-Josas, France",
  description: "HEC Paris’ mission is twofold: training the global leaders of tomorrow, and taking an active part in the production of knowledge on management.",
  website: "https://www.hec.edu" ,
  phone_number: "+33139677000" ,
  contact: "dircom@hec.fr" ,
  photo_urls: ["https://static.pexels.com/photos/443356/pexels-photo-443356.jpeg"])


bocconi = University.create(
  name: "Università Bocconi",
  location: "Via Roberto Sarfatti, 25, 20100 Milano, Italy",
  description: "For a century, Bocconi has played a leading role in Italy's social and economic modernization. It has remained true to its founding values of being a major research university, with democratic values and open to the world, as well as financially and politically independent.",
  website: "https://www.unibocconi.eu",
  phone_number: "+390258363535",
  contact: "inexchange@unibocconi.it",
  photo_urls: [" "])

esade = University.create(
  name: "ESADE Business School",
  location: "Avinguda de Pedralbes, 60-62, 08034 Barcelona, Spain",
  description: "ESADE is an international academic institution with over fifty years of history. The main asset of this school are people: faculty members and professionals who nurture reflection, dialogue, projects and initiatives to ensure excellent education, pioneering research and a valuable contribution to social debate and transformation.",
  website: "https://www.esade.eu",
  phone_number: "+34932806162" ,
  contact: "esade.madrid@esade.edu",
  photo_urls: [" "])

imperial = University.create(
  name: "Imperial College London",
  location: "Kensington, London SW7 2AZ, UK",
  description: "Imperial College London is a world-class university with a mission to benefit society through excellence in science, engineering, medicine and business.",
  website: "https://www.esade.eu",
  phone_number: "+34932806162",
  contact: "business-school@imperial.ac.uk",
  photo_urls: [" "])

bologna = University.create(
  name: "University of Bologna",
  location: "Largo Trombetti, 1 40126 Bologna, Italy",
  description: "The presence throughout the territory, the international outlook, the research, the programme catalogue, the information services: in these and many other areas, today the Alma Mater paves the way for innovation.",
  website: "https://www.unibo.it",
  phone_number: "+390512099349",
  contact: "urp@unibo.it",
  photo_urls: [" "])

berlin = University.create(
  name: "Freie Universität Berlin",
  location: "Kaiserswerther Str. 16-18, 14195, Berlin, Germany",
  description: "Freie Universität is one of the eleven universities to have been successful in all three lines of funding in the German government's Excellence Initiative in 2012.",
  website: "https://www.fu-berlin.de",
  phone_number: "+493083870000",
  contact: "info-service@fu-berlin.de",
  photo_urls: [" "])


amsterdam = University.create(
  name: "University of Amsterdam",
  location: "1012 WX Amsterdam, Netherlands",
  description: "The University of Amsterdam is one of the world’s intellectual hubs. A university with a leading international reputation, it is firmly rooted in the city of Amsterdam.",
  website: "https://www.uva.nl",
  phone_number: "+31205259111",
  contact: "servicedesk-ac@uva.nl",
  photo_urls: [" "])



#================================

management = Program.create(
  title: "Master in Management",
  ranking: 1,
  tuition: 20000,
  scholarship: 1181,
  level: "Master",
  university: hec,
  subject: "Management",
  photo_urls: [" "])


management2 = Program.create(
  title: "Master in Management",
  ranking: 15,
  tuition: 20000,
  scholarship: 5000,
  level: "Master",
  university: edhec,
  subject: "Management",
  photo_urls: [" "])

finance = Program.create(
  title: "Master in International Finance",
  ranking: 2,
  tuition: 30000,
  scholarship: 1181,
  level: "Master",
  university: hec,
  subject: "Finance",
  photo_urls: [" "])

finance2 = Program.create(
  title: "Master in Finance",
  ranking: 1,
  tuition: 21500,
  scholarship: 5000,
  level: "Master",
  university: edhec,
  subject: "Finance",
  photo_urls: [" "])

media = Program.create(
  title: "Bachelor's in Media and Information",
  ranking: 58,
  tuition: 2000,
  scholarship: 6000,
  level: "Bachelor",
  university: amsterdam,
  subject: "Media",
  photo_urls: [" "])

media2 = Program.create(
  title: "Bachelor's in Media and Information",
  ranking: 58,
  tuition: 2000,
  scholarship: 6000,
  level: "Bachelor",
  university: bocconi,
  subject: "Media",
  photo_urls: [" "])


politics = Program.create(
  title: "Bachelor's in Political Science",
  ranking: 58,
  tuition: 2000,
  scholarship: 6000,
  level: "Bachelor",
  university: amsterdam,
  subject: "Politics",
  photo_urls: [" "])

economics = Program.create(
  title: "Bachelor's in Economics",
  ranking: 58,
  tuition: 2000,
  scholarship: 6000,
  level: "Bachelor",
  university: amsterdam,
  subject: "Economics",
  photo_urls: [" "])

# Feed it bwoy!

science = Program.create(
  title: "Bachelor's in Actuarial Science",
  ranking: 58,
  tuition: 2006,
  scholarship: 18000,
  level: "Bachelor",
  university: amsterdam,
  subject: "Actuarial",
  photo_urls: [" "])

engineering = Program.create(
  title: "Bachelor's in Design Engineering",
  ranking: 58,
  tuition: 9250,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "Engineering",
  photo_urls: [" "])

computer1 = Program.create(
  title: "Bachelor's in Computing Artificial Intelligence",
  ranking: 12,
  tuition: 9250,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "computer science",
  photo_urls: [" "])

business = Program.create(
  title: "Executive MBA",
  ranking: 8,
  tuition: 39500,
  scholarship: 8500,
  level: "MBA",
  university: edhec,
  subject: "Management",
  photo_urls: [" "])

business2 = Program.create(
  title: "Full time MBA",
  ranking: 17,
  tuition: 12540,
  scholarship: 8500,
  level: "MBA",
  university: esade,
  subject: "Management",
  photo_urls: [" "])

business3 = Program.create(
  title: "Full time MBA",
  ranking: 17,
  tuition: 12540,
  scholarship: 8500,
  level: "MBA",
  university: esade,
  subject: "Management",
  photo_urls: [" "])

marketing2 = Program.create(
  title: "Integrated marketing for the digital world",
  ranking: 22,
  tuition: 22900,
  scholarship: 1181,
  level: "Master",
  university: hec,
  subject: "Marketing",
  photo_urls: [" "])

business4 = Program.create(
  title: "Bachelor of Business Administration",
  ranking: 27,
  tuition: 15200,
  scholarship: 7600,
  level: "Bachelor",
  university: esade,
  subject: "Management",
  photo_urls: [" "])

law = Program.create(
  title: "Bachelor in Law",
  ranking: 27,
  tuition: 15200,
  scholarship: 7600,
  level: "Bachelor",
  university: esade,
  subject: "Law",
  photo_urls: [" "])

finance3 = Program.create(
  title: "Executive Master in Finance",
  ranking: 30,
  tuition: 30000,
  scholarship: 8000,
  level: "Master",
  university: bocconi,
  subject: "Finance",
  photo_urls: [" "])

management3 = Program.create(
  title: "Executive MBA",
  ranking: 14,
  tuition: 44000,
  scholarship: 30000,
  level: "MBA",
  university: bocconi,
  subject: "Management",
  photo_urls: [" "])

medicine = Program.create(
  title: "Medical Biotechnology",
  ranking: 17,
  tuition: 4073,
  scholarship: 11000,
  level: "Master",
  university: bologna,
  subject: "Biology",
  photo_urls: [" "])

biology = Program.create(
  title: "Bioinformatics",
  ranking: 10,
  tuition: 4073,
  scholarship: 11000,
  level: "Master",
  university: bologna,
  subject: "Biology",
  photo_urls: [" "])

sociology = Program.create(
  title: "Data Science",
  ranking: 13,
  tuition:  14800,
  scholarship: 11000,
  level: "Master",
  university: bologna,
  subject: "Economics",
  photo_urls: [" "])

engineering2 = Program.create(
  title: "Chemical Engineering",
  ranking: 4,
  tuition:  9250 ,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "Economics",
  photo_urls: [" "])

biology = Program.create(
  title: "Biochemistry",
  ranking: 8,
  tuition:  9250 ,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "Biology",
  photo_urls: [" "])

engineering3 = Program.create(
  title: "Aeronautical Engineering",
  ranking: 3,
  tuition:  9250 ,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "Engineering",
  photo_urls: [" "])

engineering4 = Program.create(
  title: "Materials Science and Engineering",
  ranking: 3,
  tuition:  9250 ,
  scholarship: 5000,
  level: "Bachelor",
  university: imperial,
  subject: "Engineering",
  photo_urls: [" "])
