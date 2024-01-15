class InfoModel {
  String title;
  String description;

  String foodPath;

  InfoModel({
    required this.title,
    required this.description,
    required this.foodPath,
  });
  static List<InfoModel> getInfo() {
    List<InfoModel> info = [];

    info.add(InfoModel(
      title: "Taj Mahal",
      description:
          "The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor, Shah Jahan (reigned from 1628 to 1658), to house the tomb of his favourite wife, Mumtaz Mahal. The tomb is the centrepiece of a 17-hectare (42-acre)complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall. \n\n Construction of the mausoleum was essentially completed in 1643 but work continued on other phases of the project for another 10 years. The Taj Mahal complex is believed to have been completed in its entirety in 1653 at a cost estimated at the time to be around 32 million rupees, which in 2015 would be approximately 52.8 billion rupees . The construction project employed some 20,000 artisans under the guidance of a board of architects led by the court architect to the emperor, Ustad Ahmad Lahauri.",
      foodPath: 'assets/imgs/taj_mahal.jpg',
    ));

    info.add(InfoModel(
      title: 'Colosseum',
      description:
          "Colosseum, giant amphitheatre built in Rome under the Flavian emperors. Construction of the Colosseum was begun sometime between 70 and 72 CE during the reign of Vespasian. It is located just east of the Palatine Hill, on the grounds of what was Nero’s Golden House.\n \nThe artificial lake that was the centrepiece of that palace complex was drained, and the Colosseum was sited there, a decision that was as much symbolic as it was practical. Vespasian, whose path to the throne had relatively humble beginnings, chose to replace the tyrannical emperor’s private lake with a public amphitheatre that could host tens of thousands of Romans.",
      foodPath: 'assets/imgs/colosseum.jpg',
    ));

    info.add(InfoModel(
      title: 'The Great Pyramid',
      description:
          "The Great Pyramid of Giza is a huge pyramid built by the Ancient Egyptians. It stand 18.4 km from Cairo, Egypt. It is the oldest of the Seven Wonders of the Ancient World, and the only one to remain mostly intact. When it was built it was 146.5 metres (481 feet) tall. It was the tallest building in the world for over 3,800 years.\n\n Erosion and other causes have shrunk it to 138.8 metres. The pyramid was built for Khufu, an Egyptian pharaoh. It was perhaps built by Khufu's vizier, Hemiunu.[1] It is believed that it took about 20 years to build, and was completed around 2570 BC.",
      foodPath: 'assets/imgs/pyramid.jpg',
    ));

    info.add(InfoModel(
      title: "The Great Wall of China",
      description:
          "The Great Wall was continuously built from the 3rd century BC to the 17th century AD on the northern border of the country as the great military defence project of successive Chinese Empires, with a total length of more than 20,000 kilometers. The Great Wall begins in the east at Shanhaiguan in Hebei province and ends at Jiayuguan in Gansu province to the west. Its main body consists of walls, horse tracks, watch towers, and shelters on the wall, and includes fortresses and passes along the Wall.\n\nThe Great Wall reflects collision and exchanges between agricultural civilizations and nomadic civilizations in ancient China. It provides significant physical evidence of the far-sighted political strategic thinking and mighty military and national defence forces of central empires in ancient China",
      foodPath: 'assets/imgs/wall.jpg',
    ));

    info.add(InfoModel(
      title: "Christ the Redeemer",
      description:
          "Christ the Redeemer statue is the largest Art Deco design ever built in the history of the world. The statue portrays Jesus with arms open, symbolizing welcome and peace. Its construction was proposed in 1850 by priest Pedro Mario in honor of Emperor Pedro II's daughter, Princess Isabel. The project was never approved due to the dissension of the religion. In 1921, a second proposal was presented for a giant Jesus statue by the Catholic Circle of Rio. Upon its approval in 1922, the project commenced.\n\nFrench Paul Landowski designed the statue, and Brazilian Heitor da Silva Costa was the engineer. The monument was built from concrete and soapstone. It is located at Tijuca National Park at the peak of Mount Corcovado with a view of Rio de Janeiro town.",
      foodPath: 'assets/imgs/christ.jpg',
    ));

    info.add(InfoModel(
      title: "Petra",
      description:
          "Situated between the Red Sea and the Dead Sea and inhabited since prehistoric times, the rock-cut capital city of the Nabateans, became during Hellenistic and Roman times a major caravan centre for the incense of Arabia, the silks of China and the spices of India, a crossroads between Arabia, Egypt and Syria-Phoenicia. \n\nPetra is half-built, half-carved into the rock, and is surrounded by mountains riddled with passages and gorges. An ingenious water management system allowed extensive settlement of an essentially arid area during the Nabataean, Roman and Byzantine periods. It is one of the world's richest and largest archaeological sites set in a dominating red sandstone landscape. ",
      foodPath: 'assets/imgs/petra.jpg',
    ));

    info.add(InfoModel(
      title: "Chichen Itza",
      description:
          "Chichén Itzá, ruined ancient Maya city occupying an area of 4 square miles (10 square km) in south-central Yucatán state, Mexico. It is thought to have been a religious, military, political, and commercial centre that at its peak would have been home to 35,000 people. \n\nThe site first saw settlers in 550, probably drawn there because of the easy access to water in the region via caves and sinkholes in limestone formations, known as cenotes.Chichén Itzá is located some 90 miles (150 km) east-northeast of Uxmal and 75 miles (120 km) east-southeast of the modern city of Mérida.",
      foodPath: 'assets/imgs/chichen.jpg',
    ));

    info.add(InfoModel(
      title: "Machu Picchu",
      description:
          "Embedded within a dramatic landscape at the meeting point between the Peruvian Andes and the Amazon Basin, the Historic Sanctuary of Machu Picchu is among the greatest artistic, architectural and land use achievements anywhere and the most significant tangible legacy of the Inca civilization. \n\nRecognized for outstanding cultural and natural values, the mixed World Heritage property covers 32,592 hectares of mountain slopes, peaks and valleys surrounding its heart, the spectacular archaeological monument of “La Ciudadela” (the Citadel) at more than 2,400 meters above sea level. Built in the fifteenth century Machu Picchu was abandoned when the Inca Empire was conquered by the Spaniards in the sixteenth century. It was not until 1911 that the archaeological complex was made known to the outside world.",
      foodPath: 'assets/imgs/peru.jpg',
    ));

    return info;
  }
}
