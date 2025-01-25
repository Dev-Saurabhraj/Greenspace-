class Plant {
  final int count;
  final bool inStock;
  final bool recommend;
  final String category;
  final String id;
  final int price;
  final String name;
  final String scientificName;
  final String imageUrl;
  final String description;
  final String size;
  final String humidity;
  final List<String> howToCare;
  final int duration;
  final String weather;
  final String soil;
  final String tip;
  final bool flowery;
  final String features;
  final List<String> cares;
  final List<String> benefits;

  Plant({
    required this.count,
    required this.inStock,
    required this.recommend,
    required this.category,
    required this.id,
    required this.price,
    required this.name,
    required this.scientificName,
    required this.imageUrl,
    required this.description,
    required this.size,
    required this.humidity,
    required this.howToCare,
    required this.duration,
    required this.weather,
    required this.soil,
    required this.tip,
    required this.flowery,
    required this.features,
    required this.cares,
    required this.benefits,
  });
}

final List<Plant> plants = [
  // Climbers
  Plant(
    count: 1,
    inStock: true,
    recommend: true,
    category: "Climbers",
    id: "pothos",
    price: 599,
    name: "Pothos",
    scientificName: "Epipremnum aureum",
    imageUrl: "https://i.ibb.co/RCKv70q/pothos-Photoroom.png",
    description: "Also known as Devil's Ivy, this hardy plant thrives in a variety of conditions and is known for its trailing vines and heart-shaped leaves. It's perfect for beginners due to its resilience. Pothos can grow in both bright, indirect light and low light conditions. It’s an excellent air purifier, removing toxins from the air. Its vibrant green leaves can brighten up any corner of your home.",
    size: "Can grow up to 12–18 inches per month.",
    humidity: "High.",
    howToCare: [
      "Plant in well-draining soil.",
      "Water when the soil feels dry.",
      "Provide bright, indirect light."
    ],
    duration: 3,
    weather: "Warm & Humid",
    soil: "Well-draining soil.",
    tip: "Prune regularly to propagate.",
    flowery: false,
    features: "Easy to grow; excellent air purifier.",
    cares: [
      "Low maintenance.",
      "Can be trained to climb or grow as a hanging plant."
    ],
    benefits: ["Purifies air.", "Improves indoor aesthetics."],
  ),
  Plant(
    count: 1,
    inStock: true,
    recommend: true,
    category: "Climbers",
    id: "monstera",
    price: 1000,
    name: "Monstera Deliciosa",
    scientificName: "Monstera deliciosa",
    imageUrl: "https://i.ibb.co/98Y7DjK/monstera-deliciosa-Photoroom.png",
    description: "Popularly called the Swiss Cheese Plant, it features large, glossy leaves with distinctive holes, perfect for a tropical vibe. As it matures, the leaves develop unique splits and perforations. Monstera prefers indirect sunlight and high humidity. It's an iconic plant, often seen in modern interior designs. It can grow quite large, making it a great statement piece.",
    size: "Grows 1–2 feet annually.",
    humidity: "High.",
    howToCare: [
      "Use a moss pole for climbing.",
      "Provide bright, indirect light.",
      "Keep soil slightly moist."
    ],
    duration: 6,
    weather: "Warm & Humid",
    soil: "Rich, well-draining soil.",
    tip: "Use a moss pole for larger, more dramatic leaves.",
    flowery: false,
    features: "Exotic and visually striking.",
    cares: ["Climbing plant.", "Requires occasional pruning."],
    benefits: ["Adds a tropical vibe.", "Improves indoor aesthetics."],
  ),
  // Trees
  Plant(
    count: 1,
    inStock: false,
    recommend: true,
    category: "Trees",
    id: "rubber_plant",
    price: 1199,
    name: "Rubber Plant",
    scientificName: "Ficus elastica",
    imageUrl: "https://i.ibb.co/nczMYK9/Rubber-Plant-removebg-preview.png",
    description: "Recognized for its large, shiny, dark green leaves, this plant can grow into a tall, indoor tree. It thrives in bright, indirect light but can tolerate lower light conditions. The Rubber Plant can grow up to 8 feet tall indoors. Its sap is used to make rubber, hence the name. Regularly wiping its leaves helps maintain its glossy appearance.",
    size: "Grows 12–24 inches annually.",
    humidity: "Moderate.",
    howToCare: [
      "Keep in bright, indirect light.",
      "Water when topsoil is dry.",
      "Wipe leaves regularly."
    ],
    duration: 12,
    weather: "Warm & Humid",
    soil: "Well-draining potting soil.",
    tip: "Wipe leaves to enhance photosynthesis.",
    flowery: false,
    features: "Grows into a small tree indoors.",
    cares: ["Requires occasional pruning.", "Dust leaves to maintain health."],
    benefits: ["Improves air quality.", "Adds a bold focal point."],
  ),
  // Herbs
  Plant(
    count: 1,
    inStock: true,
    recommend: true,
    category: "Herbs",
    id: "aloe_vera",
    price: 399,
    name: "Aloe Vera",
    scientificName: "Aloe barbadensis",
    imageUrl: "https://i.ibb.co/qR2vkfM/Aloevera.png",
    description:
        "Known for its medicinal properties, Aloe Vera has thick, fleshy leaves that store water, making it drought-resistant. It’s commonly used to treat skin ailments like burns and cuts. Aloe Vera thrives in bright light and well-draining soil. It produces small, tubular flowers in the right conditions. The gel inside its leaves is used in various health and beauty products.",
    size: "Takes 2–3 years to mature.",
    humidity: "Low.",
    howToCare: [
      "Plant in sandy, well-draining soil.",
      "Water sparingly.",
      "Provide bright, indirect sunlight."
    ],
    duration: 36,
    weather: "Warm & Dry",
    soil: "Sandy, well-draining soil.",
    tip: "Avoid overwatering to prevent root rot.",
    flowery: false,
    features: "Medicinal properties.",
    cares: ["Minimal watering required.", "Keep in bright areas."],
    benefits: ["Gel treats burns.", "Low maintenance."],
  ),
  Plant(
    count: 1,
    inStock: false,
    recommend: true,
    category: "Herbs",
    id: "peace_lily",
    price: 699,
    name: "Peace Lily",
    scientificName: "Spathiphyllum",
    imageUrl: "https://i.ibb.co/rmSJ6wk/peace-lily-removebg-preview.png",
    description: "With its elegant white blooms and dark green foliage, the Peace Lily is an excellent air purifier. It thrives in low to medium light conditions. Peace Lilies can bloom twice a year, producing beautiful white spathes. They also help reduce mold spores in the air. Peace Lilies prefer moist soil but can tolerate periods of drought.",
    size: "Grows 10–15 inches annually.",
    humidity: "High.",
    howToCare: [
      "Keep in indirect light.",
      "Water consistently.",
      "Mist leaves occasionally."
    ],
    duration: 6,
    weather: "Warm & Humid",
    soil: "Rich, well-draining soil.",
    tip: "Keep soil moist but not soggy.",
    flowery: true,
    features: "Elegant and sophisticated appearance.",
    cares: ["High humidity is essential.", "Requires consistent watering."],
    benefits: ["Improves air quality.", "Adds elegance to interiors."],
  ),

  Plant(
    count: 1,
    inStock: true,
    recommend: true,
    category: "Herbs",
    id: "boston_fern",
    price: 600,
    name: "Boston Fern",
    scientificName: "Nephrolepis exaltata",
    imageUrl: "https://i.ibb.co/Qm4XKNG/boston-fern-2.png",
    description: "This lush plant has arching fronds with tiny leaflets, adding a soft, feathery texture to any space. It prefers high humidity and indirect light. Boston Ferns are great for hanging baskets or pedestals. They help improve air quality by removing toxins like formaldehyde. Regular misting helps keep their fronds lush and green.",
    size: "Moderate; grows new fronds within 2–3 months.",
    humidity: "High.",
    howToCare: [
      "Keep soil consistently moist.",
      "Provide indirect light.",
      "Mist regularly to maintain humidity."
    ],
    duration: 3,
    weather: "Warm & humid.",
    soil: "Peat-based, well-draining soil.",
    tip: "Place in bathrooms for natural humidity.",
    flowery: false,
    features: "Lush, elegant, and great for hanging baskets.",
    cares: ["Needs regular misting.", "Prune dead fronds to encourage growth."],
    benefits: ["Improves humidity.", "Purifies indoor air."],
  ),

// 2. Snake Plant
  Plant(
    count: 1,
    inStock: false,
    recommend: true,
    category: "Herbs",
    id: "snake_plant",
    price: 449,
    name: "Snake Plant",
    scientificName: "Sansevieria",
    imageUrl: "https://i.ibb.co/wJ9wg7D/Snake-Plant-removebg-preview.png",
    description:
        "Snake Plant. The snake plant is a carefree, resilient houseplant that makes a bold, architectural statement in your home with tall, swordlike leaves and unique variegation. Tolerant of most growing conditions, it is an ideal plant for beginners or those who want an easy-to-grow houseplant.",
    size: "Slow to moderate; grows 6–12 inches annually.",
    humidity: "Low.",
    howToCare: [
      "Use well-draining soil.",
      "Water sparingly.",
      "Keep in bright, indirect light."
    ],
    duration: 12,
    weather: "Warm & dry",
    soil: "Well-draining potting mix.",
    tip: "Avoid overwatering; root rot is common.",
    flowery: false,
    features: "Low-maintenance and drought-tolerant.",
    cares: ["Requires minimal care.", "Can thrive in low light."],
    benefits: ["Purifies air.", "Adds a modern touch to interiors."],
  ),

// 3. Spider Plant
  Plant(
    count: 1,
    inStock: true,
    recommend: true,
    category: "Herbs",
    id: "spider_plant",
    price: 349,
    name: "Spider Plant",
    scientificName: "Chlorophytum comosum",
    imageUrl: "https://i.ibb.co/qszPddJ/Spider-plant-Photoroom.png",
    description: "Famous for its cascading, narrow leaves and small, white flowers, it's perfect for hanging baskets. Spider Plants are easy to propagate through their babies or offshoots. They prefer bright, indirect light but can adapt to lower light levels. Spider Plants help remove pollutants like formaldehyde and xylene from the air. They’re pet-friendly and safe for households with animals.",
    size: "Fast; spiderettes grow within 3–6 months.",
    humidity: "Moderate.",
    howToCare: [
      "Provide bright, indirect light.",
      "Water when soil is dry.",
      "Prune spiderettes for propagation."
    ],
    duration: 6,
    weather: "moderate climates.",
    soil: "All-purpose potting mix.",
    tip: "Use hanging baskets for optimal display.",
    flowery: true,
    features: "Produces small flowers and baby plants.",
    cares: ["Water regularly.", "Propagate using spiderettes."],
    benefits: ["Improves air quality.", "Pet-friendly plant."],
  ),

// 4. Jade Plant
  Plant(
    count: 1,
    inStock: true,
    recommend: true,
    category: "Shrubs",
    id: "jade_plant",
    price: 550,
    name: "Jade Plant",
    scientificName: "Crassula ovata",
    imageUrl: "https://i.ibb.co/RhM98d2/Jade-plant-Photoroom.png",
    description: "Known for its thick, fleshy leaves and tree-like growth, it’s a popular succulent that symbolizes good luck. Jade Plants prefer bright light and infrequent watering. They can live for many years, often passed down through generations. Their leaves can develop a red tinge when exposed to direct sunlight. Jade Plants are great for bonsai enthusiasts due to their miniature tree appearance.",
    size: "Slow; takes 3–5 years to mature.",
    humidity: "Low humidity.",
    howToCare: [
      "Use cactus soil.",
      "Water when soil is completely dry.",
      "Keep in bright sunlight."
    ],
    duration: 36,
    weather: "Thrives in warm, dry climates.",
    soil: "Well-draining cactus mix.",
    tip: "Prune to encourage branching.",
    flowery: true,
    features: "Symbol of good luck.",
    cares: ["Low maintenance.", "Needs bright light."],
    benefits: ["Adds elegance.", "Brings good fortune."],
  ),

// 5. ZZ Plant
  Plant(
    count: 1,
    inStock: true,
    recommend: true,
    category: "Herbs",
    id: "zz_plant",
    price: 500,
    name: "ZZ Plant",
    scientificName: "Zamioculcas zamiifolia",
    imageUrl: "https://i.ibb.co/njYCjHr/zz-plant-Photoroom.png",
    description: "The Zamioculcas Zamiifolia is incredibly low-maintenance with its waxy, oval leaves and ability to thrive in low light. ZZ Plants can tolerate neglect and infrequent watering. They’re perfect for offices and dimly lit rooms. ZZ Plants help improve indoor air quality by removing toxins. Their unique, shiny leaves add a touch of elegance to any space.",
    size: "Slow; new shoots appear every 6–12 months.",
    humidity: "Low humidity.",
    howToCare: [
      "Use well-draining soil.",
      "Water sparingly.",
      "Keep in low to medium light."
    ],
    duration: 12,
    weather: "Dry & LowLight",
    soil: "Well-draining potting mix.",
    tip: "Ideal for beginners due to low maintenance.",
    flowery: false,
    features: "Nearly indestructible.",
    cares: ["Minimal watering required.", "Wipe leaves occasionally."],
    benefits: ["Purifies air.", "Perfect for low-maintenance decor."],
  ),

// 6. Areca Palm
  Plant(
    count: 1,
    inStock: false,
    recommend: true,
    category: "Herbs",
    id: "areca_palm",
    price: 1200,
    name: "Areca Palm",
    scientificName: "Dypsis lutescens",
    imageUrl: "https://i.ibb.co/rGtM5By/areca-palm.png",
    description: "This graceful palm features feathery, arching fronds and can grow quite tall, adding a tropical feel. Areca Palms prefer bright, indirect light and regular watering. They’re excellent air purifiers, removing toxins like benzene and formaldehyde. Areca Palms can grow up to 6-7 feet indoors. Their lush foliage can create a natural screen or divider.",
    size: "Moderate; grows up to 6–7 feet indoors.",
    humidity: "High humidity.",
    howToCare: [
      "Provide bright, indirect light.",
      "Keep soil consistently moist.",
      "Mist leaves regularly."
    ],
    duration: 24,
    weather: "Warm & Humid",
    soil: "Well-draining, peat-based soil.",
    tip: "Avoid direct sunlight to prevent leaf scorching.",
    flowery: false,
    features: "Tropical and graceful.",
    cares: ["Needs regular misting.", "Prune occasionally."],
    benefits: ["Improves air quality.", "Adds a tropical touch to interiors."],
  ),

// 7. Fiddle Leaf Fig
  Plant(
    count: 1,
    inStock: false,
    recommend: false,
    category: "Herbs",
    id: "fiddle_leaf_fig",
    price: 1500,
    name: "Fiddle Leaf Fig",
    scientificName: "Ficus lyrata",
    imageUrl: "https://i.ibb.co/fCccyS2/Fiddle-Leaf-Fig-removebg-preview.png",
    description: "This trendy plant boasts large, violin-shaped leaves and can become a striking focal point. Fiddle Leaf Figs prefer bright, indirect light and consistent watering. They can grow up to 10 feet tall indoors. Regular dusting helps keep their leaves healthy and shiny. Fiddle Leaf Figs are sensitive to changes in environment, so consistent care is key.",
    size: "Slow to moderate; grows 12–24 inches per year.",
    humidity: "Moderate.",
    howToCare: [
      "Place in bright, indirect light.",
      "Water when the top inch of soil is dry.",
      "Rotate pot for even growth."
    ],
    duration: 12,
    weather: "Warm & Humid",
    soil: "Rich, well-draining soil.",
    tip: "Wipe leaves to keep them dust-free.",
    flowery: false,
    features: "Stylish and dramatic focal point.",
    cares: ["Requires regular watering.", "Dust leaves regularly."],
    benefits: ["Improves air quality.", "Adds a stylish touch."],
  ),

// 8. Lavender
  Plant(
    count: 1,
    inStock: true,
    recommend: false,
    category: "Herbs",
    id: "lavender",
    price: 400,
    name: "Lavender",
    scientificName: "Lavandula",
    imageUrl: "https://i.ibb.co/FmCXQyT/Lavender-removebg-preview.png",
    description: "Known for its fragrant purple flowers, Lavender is often used in aromatherapy and as a natural insect repellent. It prefers full sun and well-draining soil. Lavender can be used in cooking, adding a unique flavor to dishes. Its essential oil is commonly used for relaxation and stress relief. Dried lavender flowers make lovely sachets for drawers and closets.",
    size: "Moderate; grows 12–18 inches annually.",
    humidity: "Low.",
    howToCare: [
      "Provide full sunlight.",
      "Water sparingly.",
      "Use well-draining, sandy soil."
    ],
    duration: 6,
    weather: "Warm & Sunny",
    soil: "Sandy, well-draining soil.",
    tip: "Prune regularly to maintain shape.",
    flowery: true,
    features: "Beautiful and aromatic.",
    cares: ["Needs full sunlight.", "Avoid overwatering."],
    benefits: ["Produces fragrant flowers.", "Repels pests."],
  ),

// 9. Calathea
  Plant(
    count: 1,
    inStock: false,
    recommend: false,
    category: "Herbs",
    id: "calathea",
    price: 800,
    name: "Calathea",
    scientificName: "Calathea spp.",
    imageUrl: "https://i.ibb.co/hBwjr4n/Calathea-2-Photoroom.png",
    description: "With its strikingly patterned leaves, often with dark green and purple hues, it’s a favorite among plant enthusiasts. Calathea prefers low to medium light and high humidity. Its leaves close up at night, a phenomenon known as nyctinasty. Calathea can be a bit finicky, requiring consistent moisture and care. Its vibrant foliage adds a touch of color to any room.",
    size: "Slow to moderate; grows up to 24 inches tall.",
    humidity: "High.",
    howToCare: [
      "Provide indirect light.",
      "Water consistently.",
      "Mist leaves regularly."
    ],
    duration: 6,
    weather: "Warm & Humid",
    soil: "Rich, well-draining soil.",
    tip: "Avoid cold drafts to prevent leaf curling.",
    flowery: false,
    features: "Eye-catching foliage.",
    cares: ["Requires high humidity.", "Prone to leaf discoloration."],
    benefits: ["Adds vibrant color.", "Improves air quality."],
  ),

// 10. Bamboo Plant
  Plant(
    count: 1,
    inStock: true,
    recommend: false,
    category: "Herbs",
    id: "bamboo_plant",
    price: 300,
    name: "Bamboo Plant",
    scientificName: "Dracaena sanderiana",
    imageUrl: "https://i.ibb.co/JCMb1rx/Bamboo-Plant-removebg-preview.png",
    description: "Often grown in water, this plant is known for its fast growth and association with luck and prosperity. Bamboo Plants prefer indirect light and regular water changes. They’re often used in feng shui to attract positive energy. Bamboo Plants can be trained into various shapes and designs. They’re low maintenance and thrive with minimal care.",
    size: "Moderate; grows 6–12 inches annually.",
    humidity: "Moderate.",
    howToCare: [
      "Keep in indirect light.",
      "Change water weekly if grown hydroponically.",
      "Keep soil slightly moist."
    ],
    duration: 12,
    weather: "Mild",
    soil: "Well-draining soil or water.",
    tip: "Great for hydroponic setups.",
    flowery: false,
    features: "Symbol of good fortune.",
    cares: ["Minimal care required.", "Ensure water is clean."],
    benefits: ["Adds a serene vibe.", "Symbolizes prosperity."],
  ),

// 21. Anthurium
  Plant(
    count: 1,
    inStock: true,
    recommend: false,
    category: "Herbs",
    id: "anthurium",
    price: 900,
    name: "Anthurium",
    scientificName: "Anthurium andraeanum",
    imageUrl: "https://i.ibb.co/wS19HNc/Anthurium-removebg-preview.png",
    description: "Recognized for its shiny, heart-shaped leaves and long-lasting, bright red spathes, it’s quite the showstopper. Anthuriums prefer bright, indirect light and consistent moisture. They can bloom year-round with proper care. Anthuriums are often used in floral arrangements for their bold appearance. Their vibrant blooms can add a pop of color to any space.",
    size: "Moderate; grows 12–18 inches tall.",
    humidity: "High.",
    howToCare: [
      "Provide bright, indirect light.",
      "Water when the topsoil is dry.",
      "Mist leaves to maintain humidity."
    ],
    duration: 6,
    weather: "Warm & Humid",
    soil: "Well-draining potting mix.",
    tip: "Remove spent flowers to encourage new blooms.",
    flowery: true,
    features: "Long-lasting flowers and elegant foliage.",
    cares: ["Mist regularly.", "Avoid overwatering."],
    benefits: ["Adds vibrant color.", "Improves air quality."],
  ),

// 22. Croton
  Plant(
    count: 1,
    inStock: true,
    recommend: false,
    category: "Herbs",
    id: "croton",
    price: 700,
    name: "Croton",
    scientificName: "Codiaeum variegatum",
    imageUrl: "https://i.ibb.co/rdJvzrB/Croton-removebg-preview.png",
    description: "This vibrant plant has thick, leathery leaves in a variety of colors like red, yellow, green, and orange. Crotons prefer bright light to maintain their vivid colors. They require regular watering and high humidity. Crotons can grow up to 6 feet tall indoors. Their colorful foliage makes them a standout plant for any collection.",
    size: "Moderate; grows 1–3 feet tall.",
    humidity: "Moderate.",
    howToCare: [
      "Keep in bright, indirect light.",
      "Water when the topsoil feels dry.",
      "Maintain consistent warmth."
    ],
    duration: 6,
    weather: "Warm & Humid",
    soil: "Rich, well-draining soil.",
    tip: "Rotate pot for even light exposure.",
    flowery: false,
    features: "Vibrant, decorative foliage.",
    cares: ["Water regularly.", "Avoid cold drafts."],
    benefits: ["Adds colorful charm.", "Improves indoor aesthetics."],
  ),

// 23. English Ivy
  Plant(
    count: 1,
    inStock: false,
    recommend: false,
    category: "Herbs",
    id: "english_ivy",
    price: 500,
    name: "English Ivy",
    scientificName: "Hedera helix",
    imageUrl: "https://i.ibb.co/cXgy0p5/English-Ivy-Photoroom.png",
    description: "With its climbing and trailing vines, this plant is perfect for adding greenery to walls or as ground cover. English Ivy prefers bright, indirect light and consistent moisture. It’s an excellent air purifier, removing mold and toxins from the air. English Ivy can be trained to grow on trellises or as a hanging plant. It’s also known for its ability to reduce indoor air pollutants.",
    size: "Fast-growing; spreads quickly within months.",
    humidity: "Moderate.",
    howToCare: [
      "Provide bright, indirect light.",
      "Water when soil feels dry.",
      "Prune regularly to control growth."
    ],
    duration: 3,
    weather: "Mild Climate",
    soil: "Well-draining potting soil.",
    tip: "Train vines on trellises for decoration.",
    flowery: false,
    features: "Fast-growing climber.",
    cares: ["Prune regularly.", "Water moderately."],
    benefits: ["Covers walls and trellises.", "Improves air quality."],
  ),

// 24. Philodendron
  Plant(
    count: 1,
    inStock: true,
    recommend: false,
    category: "Herbs",
    id: "philodendron",
    price: 650,
    name: "Philodendron",
    scientificName: "Philodendron hederaceum",
    imageUrl: "https://i.ibb.co/HHSbNw5/Philodendron-Photoroom.png",
    description: "Known for its heart-shaped leaves and vining nature, it’s a popular choice for both hanging baskets and pots. Philodendrons prefer low to medium light and regular watering. They’re easy to propagate through stem cuttings. Philodendrons help improve indoor air quality by removing toxins. Their lush green foliage can add a touch of nature to any room.",
    size: "Moderate; grows 12–18 inches annually.",
    humidity: "Moderate.",
    howToCare: [
      "Provide bright, indirect light.",
      "Water when soil feels dry.",
      "Wipe leaves to remove dust."
    ],
    duration: 6,
    weather: "Warm & Tropical",
    soil: "Rich, well-draining soil.",
    tip: "Use a moss pole for climbing varieties.",
    flowery: false,
    features: "Low-maintenance and versatile.",
    cares: ["Prune as needed.", "Provide support for climbing types."],
    benefits: ["Purifies air.", "Adds a lush, tropical vibe."],
  ),

// 25. Bird of Paradise
  Plant(
    count: 1,
    inStock: true,
    recommend: false,
    category: "Herbs",
    id: "bird_of_paradise",
    price: 1800,
    name: "Bird of Paradise",
    scientificName: "Strelitzia reginae",
    imageUrl: "https://i.ibb.co/54Xs2Hy/Bird-of-Paradise.png",
    description: "Famous for its exotic, bird-like flowers and large, banana-shaped leaves, it brings a touch of the tropics indoors. Bird of Paradise prefers bright, indirect light and high humidity. It can grow up to 6 feet tall indoors. Its striking flowers resemble tropical birds in flight. Bird of Paradise is a bold statement plant, perfect for creating a focal point.",
    size: "Slow; takes 1–2 years to bloom.",
    humidity: "Moderate.",
    howToCare: [
      "Provide bright, direct sunlight.",
      "Water when the top inch of soil is dry.",
      "Wipe leaves regularly."
    ],
    duration: 24,
    weather: "Warm & Tropical",
    soil: "Rich, well-draining soil.",
    tip: "Ensure plenty of sunlight for blooms.",
    flowery: true,
    features: "Striking flowers and lush foliage.",
    cares: ["Requires bright light.", "Needs occasional fertilization."],
    benefits: ["Adds a dramatic, tropical look.", "Produces exotic blooms."],
  ),

// Add remaining plants here in a similar format
];
