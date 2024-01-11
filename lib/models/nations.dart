class NationModel {
  String title;
  String description;
  String flagPath;
  String foodPath;
  double centerLat;
  double centerLong;
  double lat1;
  double lat2;
  double lat3;
  double lat4;
  double lat5;
  double longi1;
  double longi2;
  double longi3;
  double longi4;
  double longi5;

  NationModel({
    required this.title,
    required this.description,
    required this.flagPath,
    required this.foodPath,
    required this.centerLat,
    required this.centerLong,
    required this.lat1,
    required this.lat2,
    required this.lat3,
    required this.lat4,
    required this.lat5,
    required this.longi1,
    required this.longi2,
    required this.longi3,
    required this.longi4,
    required this.longi5,
  });
  static List<NationModel> getNations() {
    List<NationModel> nations = [];

    nations.add(NationModel(
      title: "Paranthe wali Gali",
      description:
          "Nestled in the labyrinthine lanes of Old Delhi, Paranthe Wali Gali stands as a culinary sanctum, inviting discerning palates to embark on a gastronomic voyage like no other. The air is thick with the irresistible aroma of meticulously prepared stuffed paranthas, each a masterpiece of flavor and tradition. This iconic alley, steeped in history, has been enchanting food enthusiasts for generations. As you traverse the cobbled path, the eclectic symphony of sizzling griddles and animated conversations creates an ambiance that transcends time. The paranthas, golden and inviting, come adorned with a variety of fillings – from the classic allure of potato to the decadence of paneer or the colorful vibrancy of mixed vegetables. Each bite is a harmonious blend of heritage and innovation, an homage to the culinary artistry that defines India's rich tapestry of flavors. Paranthe Wali Gali isn't just a street; it's a gastronomic haven where every parantha tells a tale, and every visit is a sublime journey into the heart of Old Delhi's culinary legacy.",
      flagPath: 'assets/imgs/delhi.jpg',
      foodPath: 'assets/imgs/delhi-food.jpg',
      centerLat: 28.591197,
      centerLong: 77.21403862068739,
      lat1: 28.607532562790947,
      longi1: 77.26296847283321,
      lat2: 28.522500602960037,
      longi2: 77.1702713311119,
      lat3: 28.599092746111335,
      longi3: 77.19224398692732,
      lat4: 28.552105980518782,
      longi4: 77.21193567456133,
      lat5: 28.596882477299696,
      longi5: 77.22560482438071,
    ));

    nations.add(NationModel(
        title: 'Petit déjeuner',
        description:
            "Petit déjeuner, the French breakfast, unfolds as a captivating tableau of culinary artistry. At its core, the golden, buttery layers of a perfectly crafted croissant embody the epitome of French pastry finesse, releasing a fragrant symphony reminiscent of a Parisian boulangerie. Complemented by petite pots of velvety yogurt adorned with vibrant berries and artisanal honey, the morning feast achieves a delicate balance of sweetness and tartness. A curated selection of cheeses and cured meats adds a sophisticated touch, creating a culinary celebration that extends beyond mere sustenance. Paired with a sip of freshly brewed café au lait or rich espresso, petit déjeuner becomes a sensory experience, an indulgent prelude to a day filled with the joyous flavors of French tradition.",
        flagPath: 'assets/imgs/paris.jpg',
        foodPath: 'assets/imgs/paris-food.jpg',
        centerLat: 48.8524370654132,
        centerLong: 2.3516097329980172,
        lat1: 48.85590896198209,
        longi1: 2.3540100337977523,
        lat2: 48.852062309550206,
        longi2: 2.3492465023700233,
        lat3: 48.85059005572434,
        longi3: 2.352710888862917,
        lat4: 48.84864281481754,
        longi4: 2.3481638815909935,
        lat5: 48.84930773486095,
        longi5: 2.3460708147515366));

    nations.add(NationModel(
      title: 'Fry-up',
      description:
          "The iconic fry-up, a quintessential English breakfast, unfolds as a hearty and comforting feast that embodies a robust start to the day. Imagine a sizzling ensemble featuring perfectly fried bacon, plump sausages, and golden eggs with lusciously runny yolks. Accompanying this savory trio are grilled tomatoes and mushrooms, adding a burst of freshness to the ensemble. Crispy hash browns and buttered toast complete the ensemble, offering delightful textures and a wholesome foundation. The plate is a canvas of flavors, where the saltiness of bacon meets the savory richness of sausage, and each bite is a satisfying medley of tastes. A side of baked beans adds a touch of sweetness, providing the perfect contrast to the savory symphony. As you savor each bite and sip on a steaming cup of tea or coffee, the English fry-up emerges as a comforting ritual, promising warmth, satisfaction, and a hearty kickstart to the day ahead.",
      flagPath: 'assets/imgs/london.jpg',
      foodPath: 'assets/imgs/london-food.jpg',
      centerLat: 51.53073457756852,
      centerLong: -0.07320629370271492,
      lat1: 51.540034699914365,
      longi1: -0.05545172500252339,
      lat2: 51.52550242367637,
      longi2: -0.07756706496241109,
      lat3: 51.52511483280231,
      longi3: -0.10310872519777436,
      lat4: 51.52065730061515,
      longi4: -0.09905943759948505,
      lat5: 51.5134855723878,
      longi5: -0.07787854862381796,
    ));

    nations.add(NationModel(
      title: "Tostada con tomate y jamón",
      description:
          "The tostada con tomate y jamón, a beloved Spanish breakfast, unveils a simple yet sublime harmony of flavors. A rustic canvas of crusty toasted bread serves as the foundation for this culinary masterpiece. Picture ripe, juicy tomatoes sliced and rubbed onto the warm bread, releasing a burst of freshness that serves as a vibrant base. Crowned with thinly sliced jamón, the Spanish cured ham, each delicate layer carries a rich, savory essence that effortlessly marries with the sweet juiciness of the tomatoes. The combination of the crisp toast, the succulent tomatoes, and the flavorful jamón creates a symphony of textures and tastes that is both satisfying and invigorating. As you indulge in this delightful medley, perhaps accompanied by a drizzle of olive oil, the tostada con tomate y jamón encapsulates the essence of Spanish mornings – a celebration of simplicity, quality ingredients, and the sheer joy derived from a perfect culinary pairing.",
      flagPath: 'assets/imgs/madrid.jpg',
      foodPath: 'assets/imgs/madrid-food.jpg',
      centerLat: 19.102060367028745,
      centerLong: 72.86424280408109,
      lat1: 19.104357162679438,
      longi1: 72.86959023449842,
      lat2: 19.109869342124632,
      longi2: 72.87412744818585,
      lat3: 19.098538551768048,
      longi3: 72.86165011054543,
      lat4: 19.098538551768048,
      longi4: 72.85370998659242,
      lat5: 19.094863534188473,
      longi5: 72.85370998659242,
    ));

    nations.add(NationModel(
      title: "Pav Bhaji",
      description:
          "Pav Bhaji, a popular street food hailing from India, is a sensory explosion of flavors and aromas that captures the essence of culinary indulgence. A fragrant blend of assorted vegetables, including potatoes, peas, and tomatoes, is expertly mashed and simmered in a spiced tomato-based gravy until it reaches a luscious, thick consistency. The medley of spices, including cumin, coriander, and garam masala, imparts a tantalizing aroma that wafts through the air. This vibrant mixture is served alongside buttered and toasted pav (soft bread rolls), adding a comforting touch to the dish. The final garnish of fresh coriander, diced onions, and a squeeze of lime adds a burst of freshness and tanginess, elevating Pav Bhaji into a delightful symphony of textures and flavors. As you savor each bite, the hearty combination of the flavorful vegetable blend with the soft, buttery pav creates an experience that is not just a meal but a celebration of the rich, diverse tapestry of Indian street cuisine.",
      flagPath: 'assets/imgs/mumbai.jpg',
      foodPath: 'assets/imgs/mumbai-food.jpg',
      centerLat: 28.591197610927207,
      centerLong: 77.21403862068739,
      lat1: 28.607532562790947,
      longi1: 77.26296847283321,
      lat2: 28.522500602960037,
      longi2: 77.1702713311119,
      lat3: 28.599092746111335,
      longi3: 77.19224398692732,
      lat4: 28.552105980518782,
      longi4: 77.21193567456133,
      lat5: 28.596882477299696,
      longi5: 77.22560482438071,
    ));

    nations.add(NationModel(
      title: "Berliner Frühstück",
      description:
          "The Berliner Frühstück, or Berlin breakfast, is a delightful morning affair that encapsulates the spirit of German culinary tradition. Picture a charming spread featuring an array of freshly baked bread rolls, hearty rye bread, and an assortment of artisanal cheeses and cold cuts. Soft-boiled eggs, adorned with a sprinkle of chives, offer a comforting simplicity to the table. The iconic German-style mustard and fruit preserves add a tangy and sweet dimension to the ensemble. A selection of fresh fruits, such as crisp apples and juicy berries, adds a refreshing touch. To complete the experience, a steaming pot of rich coffee or a cup of fragrant tea is served, inviting you to leisurely enjoy the Berliner Frühstück while soaking in the morning calm. This breakfast embodies a balance of hearty, wholesome flavors that reflect the warmth and hospitality of German breakfast traditions.",
      flagPath: 'assets/imgs/berlin.jpg',
      foodPath: 'assets/imgs/berlin-food.jpg',
      centerLat: 52.511556034134614,
      centerLong: 13.380845154501314,
      lat1: 52.50849267240331,
      longi1: 13.391727899919974,
      lat2: 52.51221835454227,
      longi2: 13.38914324788304,
      lat3: 52.51660597512178,
      longi3: 13.37989291427718,
      lat4: 52.510645327275256,
      longi4: 13.373499301343719,
      lat5: 52.51321181643743,
      longi5: 13.397849444217968,
    ));

    nations.add(NationModel(
      title: "Cornetto e Caffè",
      description:
          "The Cornetto e Caffè, an Italian breakfast classic, unfolds as a delightful symphony of simplicity and indulgence. Imagine a golden, flaky cornetto, akin to a croissant but with a uniquely Italian touch, boasting layers that shatter delicately upon each bite. This pastry perfection is accompanied by the rich aroma of freshly brewed espresso, creating a harmonious pairing that epitomizes the essence of Italian mornings. The cornetto, either plain or filled with luscious cream or fruity jam, exudes a sweet fragrance that mingles with the robust notes of the coffee. The ritual of dipping the tip of the cornetto into the espresso is a sensory experience, where the warm, buttery layers meet the bold intensity of the coffee. This breakfast, enjoyed amidst the lively ambiance of an Italian café, represents a moment of pure indulgence and a celebration of the country's rich culinary heritage.",
      flagPath: 'assets/imgs/rome.jpg',
      foodPath: 'assets/imgs/rome-food.jpg',
      centerLat: 41.90477381453835,
      centerLong: 12.48528467764809,
      lat1: 41.906142774979735,
      longi1: 12.490860321620898,
      lat2: 41.90652778981513,
      longi2: 12.484020098602713,
      lat3: 41.90336204333984,
      longi3: 12.487468950544654,
      lat4: 41.90417488511509,
      longi4: 12.480513765795072,
      lat5: 41.90126571942682,
      longi5: 12.482065749168944,
    ));

    nations.add(NationModel(
      title: "Pa amb Tomàquet",
      description:
          "Pa amb Tomàquet, a cherished Catalan dish, transforms the act of bread into an artful expression of simplicity and flavor. This Catalan tomato bread consists of rustic, crusty bread slices rubbed with ripe tomatoes, imparting a burst of freshness. The process of grating the tomatoes releases their juices, creating a vibrant and moist base for the bread. Generously drizzled with extra virgin olive oil, the bread becomes a canvas for the robust flavors of the Mediterranean. Often seasoned with a pinch of salt and sometimes garlic, the Pa amb Tomàquet is a celebration of quality ingredients. The combination of the sweet acidity from the tomatoes, the richness of the olive oil, and the earthy bread creates a harmonious medley that captures the essence of Catalan cuisine. Served as a standalone delight or as an accompaniment to various dishes, Pa amb Tomàquet embodies the culinary philosophy of simplicity, letting the natural flavors shine through with each bite.",
      flagPath: 'assets/imgs/barcelona.jpg',
      foodPath: 'assets/imgs/barcelona-food.jpg',
      centerLat: 41.38456826771239,
      centerLong: 2.1728852202593156,
      lat1: 41.386605842175776,
      longi1: 2.171046423380828,
      lat2: 41.384653167923155,
      longi2: 2.16691485607099,
      lat3: 41.384653167923155,
      longi3: 2.1697734101572603,
      lat4: 41.38354945653678,
      longi4: 2.1684438185682002,
      lat5: 41.38357068193244,
      longi5: 2.175459535889198,
    ));

    return nations;
  }
}
