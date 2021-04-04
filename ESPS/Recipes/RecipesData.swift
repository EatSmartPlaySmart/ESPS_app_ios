//
//  RecipesData.swift
//  ESPS
//
//  Created by Ramshad Basheer on 02/02/2021.
//

import Foundation

struct Ingredient: Identifiable {
    let item: String
    let qty: String
    let id = UUID()
}

struct Recipe: Identifiable {
    
    let imageName: String
    let title: String
    let desc: String
    let filters: [String]
    let prepTime: Int
    let cookTime: Int
    let ingredients : [Ingredient]
    let method: String
    let id = UUID()
}


//let recipeList = [
//    Recipe(imageName: "cooked rice", title: "Cooked Rice", desc: "cooked rice good", prepTime: 50, cookTime: 10, ingredients: [Ingredient(item: "Salt", qty: "1/2 tsp"), Ingredient(item: "Sugar", qty: "2 tbsp")], method: "Cook the salt"),
//    Recipe(imageName: "cooked rice", title: "Cooked Rice", desc: "cooked rice good", prepTime: 50, cookTime: 10, ingredients: [Ingredient(item: "Salt", qty: "1/2 tsp"), Ingredient(item: "Sugar", qty: "2 tbsp")], method: "Cook the salt"),
//    Recipe(imageName: "cooked rice", title: "Cooked Rice", desc: "cooked rice good", prepTime: 50, cookTime: 10, ingredients: [Ingredient(item: "Salt", qty: "1/2 tsp"), Ingredient(item: "Sugar", qty: "2 tbsp")], method: "Cook the salt"),
//    Recipe(imageName: "cooked rice", title: "Cooked Rice", desc: "cooked rice good", prepTime: 50, cookTime: 10, ingredients: [Ingredient(item: "Salt", qty: "1/2 tsp"), Ingredient(item: "Sugar", qty: "2 tbsp")], method: "Cook the salt"),
//]

let recipeList = [
    Recipe(imageName: "recipe_corn_fritters",
           title: "Corn fritters",
           desc: "These fritters are full of vegetables and are delicious served on wholemeal bread with salt reduced tomato sauce.",
           filters: ["Vegetarian", "Serves 10", "Afternoon tea recipe"],
           prepTime: 15,
           cookTime: 10,
           ingredients: [Ingredient(item:"Frozen sweet corn kernels", qty:"1.5 cups – 405 g"),
                         Ingredient(item: "Spring onions – with green tops, sliced", qty: "4 onions"),
                         Ingredient(item: "Capsicum – seeds removed - chopped",qty: "1 small – 200g"),
                         Ingredient(item: "Parsley or chives – chopped", qty: "1/4 cup – 15 g"),
                         Ingredient(item: "Black pepper, coarsely ground", qty: "Pinch"),
                         Ingredient(item: "Sweet chilli sauce", qty: "1 tbsp"),
                         Ingredient(item: "Eggs, beaten", qty: "2"),
                         Ingredient(item: "Milk", qty: "1/2 cup – 125 mL"),
                         Ingredient(item: "Wholemeal self-raising flour", qty: "1 cup – 140g"),
                         Ingredient(item: "Canola oil for cooking", qty: "1 tbsp – 20mL") ],
           method: "1. Using a wooden spoon, combine corn, onions, capsicum, parsley (or chives), pepper, sweet chilli sauce, eggs and milk in a large mixing bowl.\n2. Stir in the wholemeal self-raising flour. \n3. Heat a frying (or electric) pan with 2 teaspoons of oil and cook the mixture in ¼ cupfuls (this will produce fritters about 7 cm in diameter). \n4. Cook until golden brown, about 2 minutes each side, and serve as soon as possible. \n5. If not using at once, cover and store in the refrigerator for up to 3 days.  \n Alternatively, transfer to a freezer storage container and freeze for several weeks."),

    Recipe(imageName: "recipe_quick_creamy_porridge", title: "Quick, creamy porridge",
           desc: "Serve warm in winter with sultanas or sliced bananas",
           filters: ["Vegetarian", "Serves 10", "Egg free", "Breakfast recipe"],
           prepTime: 5,
           cookTime: 15,
           ingredients: [Ingredient(item: "Quick-cooking oats", qty: "3 cups – 250 g"),
                         Ingredient(item: "Water", qty: "3 cups – 750 mL"),
                         Ingredient(item: "Milk – any milk of your choice", qty: "4 cups – 1L")],
           method: "1. Put the quick-cooking oats in a large saucepan and add the water and milk. \n2. Bring to the boil over medium–high heat, stirring every now and then. \n3. Reduce the heat, cover and cook gently until thick and creamy, about 12 minutes, stirring occasionally. \n4. Serve at once with dried fruit, sliced fresh fruit or canned fruit in unsweetened juice, and a little honey or brown sugar if desired."),


    Recipe(imageName: "recipe_broccoli_and_green_pea_soup",
           title: "Broccoli and green pea soup",
           desc: "Serve in cups with toast fingers to dip in the soup.",
           filters: ["Vegetarian", "Serves 10", "Egg free", "Dairy free", "Gluten free", "Afternoon tea recipe"],
           prepTime: 15,
           cookTime: 15,
           ingredients: [Ingredient(item: "Olive oil", qty: "1 tbsp – 20mL"),
                         Ingredient(item: "Onions, chopped", qty: "1"),
                         Ingredient(item: "Celery, chopped", qty: "2 sticks"),
                         Ingredient(item: "Broccoli, trimmed and chopped", qty: "350 g"),
                         Ingredient(item: "Frozen peas", qty: "1 cup"),
                         Ingredient (item: "Minced garlic", qty: "1 tsp"),
                         Ingredient(item: "Homemade no added salt or salt reduced vegetable stock", qty: "1.5 cups – 375 mL"),
                         Ingredient(item: "Dried basil", qty: "1 tsp"),
                         Ingredient(item: "Reduced fat milk", qty: "1.5 cups- 375 mL"),
                         Ingredient(item: "Pepper, coarsely ground", qty: "Pinch")],
           method: "1. Heat the oil in a large pan and stir-fry the onions and celery for 2 minutes. \n2. Turn the heat to very low, put the lid on the pan and cook gently for 5 minutes while you chop the broccoli. \n3. Add the broccoli, peas and garlic to the pan and stir to combine with the onions and celery. Cover the pan and continue to cook gently. \n4. Add the hot stock to the pan and bring the soup to the boil. \n5. Reduce the heat, cover and simmer until the broccoli is tender, about 10 minutes (see Quick tip). \n6. Add the basil. \n7. If you have a blender, blend the soup in batches, adding a cup or so of the milk to each batch to cool the soup while blending. Return the soup to the pan and reheat. \n8. Alternatively, if you have a hand-held blender, simply blend the soup in the pot, then stir in the milk and reheat gently. \n9. Season with pepper and serve in cups with spoons. \n Great colour and texture be sure to cook the broccoli only until it is tender — it should still be a nice shade of green. If you overcook broccoli it will develop an olive green colour and a strong flavour. The addition of the peas helps liven up the colour and also creates a thick, satisfying texture."),


    Recipe(imageName: "recipe_beany_melts",
           title: "Beany melts",
           desc: "This recipe spices up beans with vegetables and cheese.",
           filters: ["Vegetarian", "Serves 20", "Egg free", "Afternoon tea recipe"],
           prepTime: 11,
           cookTime: 15,
           ingredients: [Ingredient(item: "No added salt or salt reduced baked beans", qty: "2 x 425 g cans"),
                         Ingredient(item: "Spring onions, with green tops – sliced", qty: "8 onions"),
                         Ingredient(item: "Frozen sweet corn kernels", qty: "1.5 cups"),
                         Ingredient(item: "Red capsicums, seeds removed, chopped", qty: "1"),
                         Ingredient(item: "Sweet chilli sauce",  qty: "1.5 tbsp"),
                         Ingredient (item: " or Tabasco sauce", qty: "1/4 tsp"),
                         Ingredient(item: "Wholemeal English muffins", qty: "10"),
                         Ingredient(item: "Grated cheddar cheese", qty: "2 cups"),
                         Ingredient(item: "Black pepper, coarsely ground", qty: "1/4 tsp") ],
           method: "1. Preheat oven to 200°C. \n 2. Using a wooden spoon, combine the baked beans, spring onions, sweet corn, capsicums and sweet chilli sauce (or Tabasco sauce) in a large mixing bowl. \n 3. Using a small sharp knife, split the muffins in half. \n 4. Arrange the muffin halves on a clean work surface. \n 5. Divide the baked bean mixture between muffins and spread out evenly on each one. \n 6. Sprinkle with the grated cheese and pepper. \n 7. Arrange on baking trays and bake until they are heated through and the cheese is a light golden brown, about 15 minutes."),


    Recipe(imageName: "recipe_vegetable_couscous",
           title: "Vegetable couscous",
           desc: "This is a quick and easy one dish meal and is great for cooler months. Served cold, this recipe makes a tasty salad.",
           filters: ["Vegetarian", "Serves 10", "Egg free", "Dairy free", "Afternoon tea recipe"],
           prepTime: 5,
           cookTime: 15,
           ingredients: [Ingredient(item: "Olive oil", qty: "1 tbsp"),
                         Ingredient(item: "Onion, chopped finely", qty: "2"),
                         Ingredient(item: "Celery, chopped finely", qty: "3 stalks"),
                         Ingredient(item: "Frozen peas", qty: "1 cup"),
                         Ingredient(item: "Semi-dried tomatoes (not in oil), chopped",  qty: "1/2 cup"),
                         Ingredient (item: "Ground coriander", qty: "2 tsp"),
                         Ingredient(item: "Ground chilli powder", qty: "1/4 tsp"),
                         Ingredient(item: "Couscous – see Quick tip below", qty: "1.5 cups"),
                         Ingredient(item: "Homemade no added salt or salt reduced vegetable stock", qty: "1.5 cups")],
           method: "1. Heat a large saucepan over medium–high heat. Add the oil and stir-fry the onion, celery and peas for 2 minutes. \n 2. Stir in the semi-dried tomatoes, coriander and chilli powder and cook for 1 minute. \n 3. Stir in the vegetable stock and bring to the boil over high heat, stirring once or twice. \n 4. Stir in the couscous and cook for 1 minute, then cover pan with lid and remove from the heat. Allow the couscous to stand until it has absorbed the stock and is tender, 5–10 minutes. \n 5. Serve hot or refrigerate to serve cold. \n Quick tip: Couscous consists of tiny pellets made from semolina (the inner part of wheat) and water, coated with flour. Try wholemeal couscous to add variety and extra nutrients. \n Convenience: When preparing more than 20 serves, you will need to use large pans for cooking the couscous."),


    Recipe(imageName: "recipe_banana_piklet",
           title: "Banana pikelets",
           desc: "Serve hot or cold with margarine spread or top with sliced bananas and sprinkle with cinnamon. Also suitable for breakfast",
           filters: ["Vegetarian", "Serves 20", "Breakfast recipe"],
           prepTime: 5,
           cookTime: 10,
           ingredients: [Ingredient(item: "Bananas, peeled, mashed – see Quick tip below", qty: "2"),
                         Ingredient(item: "Brown sugar", qty: "2 tbsp"),
                         Ingredient(item: "Eggs, beaten", qty: "2"),
                         Ingredient(item: "Milk of your choice", qty: "1.5 cups"),
                         Ingredient(item: "Vanilla essence", qty: "1 tsp"),
                         Ingredient (item: "Wholemeal self-raising flour", qty: "2 1/3 cups – 325 g"),
                         Ingredient(item: "Margarine spread for cooking", qty: "2 tsp")],
           method: "1. Mash the bananas (see Quick tip below). Combine with the sugar, eggs, milk and vanilla, then stir in the flour. \n 2. Allow the mixture to stand for a few minutes so the flour absorbs some of the milk and the mixture thickens slightly (see Quick tip). \n 3. Heat a frying pan over medium–high heat. Add 1 teaspoon margarine spread (or spray with canola oil) and cook mixture in ¼ cupfuls. \n 4. When bubbles rise on the uncooked surface, about 1½ minutes, the pikelets are ready to turn over. \n 5. Turn pikelets and cook for a further 2 minutes on other side. \n 6. Put cooked pikelets on paper towels until ready to use. \n 7. If not using at once, cover with paper towels to prevent the pikelets from drying out. \n 8. Continue making the pikelets until you have used up all the mixture, adding 1 teaspoon more of the margarine spread (or canola oil spray) to the pan after cooking five pikelets. \n Quick tip: The correct consistency of the uncooked mixture should be that of thick pouring custard. If the mixture becomes too thick stir in a little extra milk. When mashing several bananas, use a potato masher."),


    Recipe(imageName: "recipe_tomato_red_lentil_and_vegetable_soup",
           title: "Tomato, red lentil and vegetable soup",
           desc: "Serve in cups with toast fingers to dip in the soup.",
           filters: ["Vegetarian", "Serves 10", "Dairy free", "Egg free", "Gluten free", "Afternoon tea recipe"],
           prepTime: 11,
           cookTime: 20,
           ingredients: [Ingredient(item: "Olive oil", qty: "1 tbsp"),
                         Ingredient(item: "Onions, chopped", qty: "1"),
                         Ingredient(item: "Split red lentils", qty: "3/4 cup – 150 g"),
                         Ingredient(item: "Boiling water", qty: "2.5 cups – 625 mL"),
                         Ingredient(item: "Jap pumpkin, peeled and chopped", qty: "200g"),
                         Ingredient (item: "Salt reduced tomato paste sauce", qty: "2.5 cups - 625 mL"),
                         Ingredient(item: "Dried basil", qty: "1.5 tsp"),
                         Ingredient(item: "Minced garlic", qty: "1.5 tsp"),
                         Ingredient(item: "Frozen peas", qty: "1 cup – 145 g"),
                         Ingredient(item: "Pepper, coarsely ground", qty: "Pinch") ],
           method: "1. Heat the oil in a large pan and stir-fry the onions for 1–2 minutes. \n 2. Turn the heat to very low, put the lid on the pan and cook the onions gently for 5 minutes while you rinse the lentils. \n 3. To rinse the lentils, put them in a mixing bowl, cover with cold water and stir. Drain as much water as possible from the lentils. \n 4. Add the lentils to the onions, then stir in the boiling water. \n 5. Bring the soup to the boil, using a large serving spoon to remove and discard any foam that rises to the surface. \n 6. Chop the pumpkin and add it to the soup, along with the pasta sauce, basil, garlic and peas. \n 7. Once the soup has come to the boil, reduce the heat, cover and simmer until the vegetables are tender, about 15 minutes. \n 8. Season with pepper and serve in cups with spoons."),

    Recipe(imageName: "recipe_baked_meatballs",
           title: "Baked meatballs",
           desc: "Baking meatballs keeps the fat to a minimum. These make great dippers to serve with a tasty sauce. Also try serving with pita pocket bread, lettuce and tomato",
           filters: ["Serves 20", "Dairy free", "Afternoon tea recipe"],
           prepTime: 20,
           cookTime: 20,
           ingredients: [Ingredient(item: "Lean minced beef", qty: "600 g"),
                         Ingredient(item: "Eggs, beaten", qty: "2"),
                         Ingredient(item: "Onions, chopped finely", qty: "1"),
                         Ingredient(item: "Garlic cloves, crushed", qty: "2"),
                         Ingredient(item: "Carrots, peeled and grated", qty: "1"),
                         Ingredient(item: "Zucchini, grated", qty: "1"),
                         Ingredient(item: "No added salt tomato paste", qty: "2 tbsp"),
                         Ingredient(item: "Sweet chilli sauce", qty: "1 tbsp"),
                         Ingredient(item: "Dried breadcrumbs", qty: "2 cups – 180 g"),
                         Ingredient(item: "Olive oil cooking spray for cooking", qty: ""),
                         Ingredient(item: "Super salsa – see recipe or sweet chilli sauce (To Serve)", qty: "(1/2 cup)" )],
           method: "1. Preheat oven to 230°C. \n 2. Combine the beef, eggs, onion, garlic, carrot, zucchini, tomato paste and sweet chilli sauce. Use your hands to combine the mixture, adding enough breadcrumbs to bring the mixture to a hamburger consistency. \n 3. Spray the baking trays with oil. Spray more oil on the palms of your hands and use your hands to form the mixture into small balls about 3 cm in diameter. \n 4. Arrange meatballs on the prepared baking trays. Bake until cooked through and lightly browned on the outside, 15–20 minutes. \n 5. Remove from the baking trays and serve with Super salsa (see recipe) or sweet chilli sauce. \n Variety: For a variation, try replacing the sweet chilli sauce in the meatball mixture with a little curry powder."),

    Recipe(imageName: "recipe_super_salsa",
           title: "Super salsa",
           desc: "This salsa is perfect for dipping with bread or meatballs",
           filters: ["Serves 20", "Dairy free", "Afternoon tea recipe", "Vegetarian", "Egg free", "Gluten free"],
           prepTime: 15,
           cookTime: 20,
           ingredients: [Ingredient(item: "Olive oil", qty: "2 tbsp"),
                         Ingredient(item: "Onions, chopped", qty: "1"),
                         Ingredient(item: "Capsicums, chopped", qty: "11/2"),
                         Ingredient(item: "Minced garlic", qty: "1 tsp"),
                         Ingredient(item: "Ground cumin", qty: " 3/4 tsp"),
                         Ingredient (item: "Canned no added salt chopped tomatoes", qty: "2 x 400g cans"),
                         Ingredient(item: "Sweet chilli sauce", qty: "2 tbsp"),
                         Ingredient(item: "Ground pepper", qty: "1/8 tsp")],
           method: "1. Heat a saucepan over medium heat and add the oil. Stir-fry the onion, capsicum, garlic and cumin for 2 minutes over medium heat. \n 2. Stir in the tomatoes and sweet chilli sauce. \n 3. Cover and cook over low-medium heat, stirring occasionally, until the vegetables are soft, about 10–15 minutes. \n 4. Season to taste with the pepper. \n 5. Serve at once or cover and store in the refrigerator for a maximum of 2–3 days."),

    Recipe(imageName: "recipe_hash_browns",
           title: "Hash browns",
           desc: "These are good on a cold winter's morning. Serve with salt reduced tomato sauce or super salsa",
           filters: ["Dairy free", "Breakfast recipe", "Vegetarian", "Gluten free"],
           prepTime: 10,
           cookTime: 20,
           ingredients: [Ingredient(item: "Potatoes, grated", qty: "8"),
                         Ingredient(item: "Onions, grated", qty: "1"),
                         Ingredient(item: "Eggs, beaten", qty: "4"),
                         Ingredient(item: "Ground pepper", qty: "1/4 tsp"),
                         Ingredient(item: "Sunflower oil for cooking", qty: "4 tbsp")],
           method: "1. Grate the potatoes, then place in a large sieve or colander to drain excess liquid. \n 2. Combine the grated potato with the onion, eggs and pepper. \n 3. Heat a frying pan over medium–high heat (200°C if using an electric frying pan). \n 4. Add 1 tablespoon of oil and cook five hash browns at one time (use ¼ cup of the mixture for each hash brown and press the mixture flat against the pan using a spatula to keep them thin and crispy). \n 5. Cook until golden brown on both sides, about 2 minutes each side. \n 6. Serve at once or transfer to a plate and keep warm in oven until needed. \n 7. Continue making the hash browns until you have used up all the mixture, adding 1 tablespoon more of sunflower oil to the pan after cooking five hash browns. \n Vegie variety: Try using half quantity potato and half quantity grated carrot, pumpkin or sweet potato."),

    Recipe(imageName: "recipe_carrot_and_sultana_muffins",
           title: "Carrot and sultana muffins",
           desc: "These are really moist and fruity, and are great served warm from the oven or cold.",
           filters: ["Breakfast recipe", "Afternoon tea recipe", "Vegetarian"],
           prepTime: 15,
           cookTime: 20,
           ingredients: [Ingredient(item: "Canola oil, plus extra for greasing", qty: "1/4 cup"),
                         Ingredient(item: "Carrots, grated", qty: "2"),
                         Ingredient(item: "Honey", qty: "1/4 cup – 75 g"),
                         Ingredient(item: "Brown sugar", qty: "1/4 cup – 45 g"),
                         Ingredient(item: "Eggs, beaten", qty: "2"),
                         Ingredient(item: "Sultanas", qty: "1/3 cup – 65 g"),
                         Ingredient(item: "Milk – any milk of your choice", qty: "1/4 cup – 65 mL"),
                         Ingredient(item: "White self-raising flour", qty: "1 cup – 135 g"),
                         Ingredient(item: "Wholemeal self-raising flour", qty: "3/4 cup – 105 g"),
                         Ingredient(item: "Ground cinnamon", qty: "1 tsp")],
           method: "1. Preheat oven to 200°C. Brush a little of the oil over muffin pans. \n 2. Combine the carrots, oil, honey, brown sugar, eggs, sultanas and milk. \n 3. Sift the flours and cinnamon and stir into the carrot mixture until just combined (over mixing can cause tough muffins). \n 4. Divide the mixture between the prepared muffin pans. \n 5. Bake until risen, cooked through and golden brown, about 15 - 20 minutes. \n Measuring honey in a cup: When measuring the oil, do not rinse the cup before using to measure the honey - the honey will easily slip out of the cup \n Reminder: This recipe is suitable for involving children!\n\n Time saving tips: To save on washing muffins trays, buy muffin paper cases to pop into the pans. It makes them quick and easy to remove from the pans. You won’t need to brush the trays with oil or melted margarine spread and there’s no washing up.")
]

