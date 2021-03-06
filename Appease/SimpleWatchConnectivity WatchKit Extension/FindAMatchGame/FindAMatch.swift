//
//  Animals.swift
//  GuessGame WatchKit Extension
//
//  Created by Nandhitha Raghuram on 11/19/20.
//

import Foundation


class FindAMatch: ObservableObject  {
    
    var emojiNameDict: Dictionary<String, String>
    private var emojiNameList: [String]
    @Published var correctAnswer = 0
    @Published var gameOptions = ArraySlice<String>([])
    
    init() {
        emojiNameDict = ["See-No-Evil Monkey": "ð","Hear-No-Evil Monkey": "ð","Speak-No-Evil Monkey": "ð",
                       "Collision": "ðĨ","Dizzy": "ðŦ","Sweat Droplets": "ðĶ", "Dashing Away": "ðĻ","Monkey Face": "ðĩ",
                       "Monkey": "ð","Gorilla": "ðĶ","Dog Face": "ðķ","Dog": "ð", "Poodle": "ðĐ","Wolf": "ðš","Fox": "ðĶ",
                       "Raccoon": "ðĶ","Cat Face": "ðą","Cat": "ð","Lion": "ðĶ","Tiger Face": "ðŊ","Tiger": "ð",
                       "Leopard": "ð","Horse Face": "ðī","Horse": "ð","Unicorn": "ðĶ","Zebra": "ðĶ","Deer": "ðĶ",
                       "Cow Face": "ðŪ","Ox": "ð","Water Buffalo": "ð", "Cow": "ð","Pig Face": "ð·","Pig": "ð", "Boar": "ð",
                       "Pig Nose": "ð―","Ram": "ð","Ewe": "ð","Goat": "ð","Camel": "ðŠ","Two-Hump Camel": "ðŦ","Llama": "ðĶ",
                       "Giraffe": "ðĶ","Elephant": "ð","Rhinoceros": "ðĶ","Hippopotamus": "ðĶ","Mouse Face": "ð­","Mouse":"ð","Rat": "ð",
                       "Hamster": "ðđ","Rabbit Face": "ð°","Rabbit": "ð","Chipmunk": "ðŋ","Hedgehog": "ðĶ","Bat": "ðĶ",
                       "Bear": "ðŧ","Koala": "ðĻ","Panda": "ðž","Kangaroo": "ðĶ", "Badger": "ðĶĄ","Paw Prints": "ðū","Turkey": "ðĶ",
                       "Chicken": "ð","Rooster": "ð", "Hatching Chick": "ðĢ","Baby Chick": "ðĪ", "Front-Facing Baby Chick": "ðĨ",
                       "Bird": "ðĶ", "Penguin": "ð§","Dove": "ð", "Eagle": "ðĶ","Duck": "ðĶ","Swan": "ðĶĒ","Owl": "ðĶ", "Peacock": "ðĶ",
                       "Parrot": "ðĶ","Frog": "ðļ","Crocodile": "ð","Turtle": "ðĒ","Lizard": "ðĶ","Snake": "ð", "Dragon Face": "ðē", "Dragon": "ð","Sauropod": "ðĶ","T-Rex": "ðĶ","Spouting Whale": "ðģ","Whale": "ð","Dolphin": "ðŽ",
                       "Fish": "ð", "Tropical Fish": "ð ","Blowfish": "ðĄ","Shark": "ðĶ",
                       "Octopus": "ð","Spiral Shell": "ð","Snail": "ð","Butterfly": "ðĶ","Bug": "ð","Ant": "ð","Honeybee": "ð",
                       "Lady Beetle": "ð","Cricket": "ðĶ","Spider": "ð·","Spider Web": "ðļ","Scorpion": "ðĶ","Mosquito": "ðĶ",
                       "Bouquet": "ð","Cherry Blossom": "ðļ","White Flower": "ðŪ","Rosette": "ðĩ", "Rose": "ðđ","Wilted Flower": "ðĨ",
                       "Hibiscus": "ðš","Sunflower": "ðŧ","Blossom": "ðž","Tulip": "ð·","Seedling": "ðą", "Evergreen Tree": "ðē",
                       "Deciduous Tree": "ðģ", "Palm Tree": "ðī","Cactus": "ðĩ", "Sheaf of Rice": "ðū", "Herb": "ðŋ", "Shamrock": "â",
                       "Four Leaf Clover": "ð", "Maple Leaf": "ð", "Fallen Leaf": "ð", "Leaf Fluttering in Wind": "ð", "Mushroom": "ð", "Chestnut": "ð°", "Crab": "ðĶ", "Lobster": "ðĶ","Shrimp": "ðĶ", "Squid": "ðĶ", "Globe Showing Europe-Africa": "ð", "Globe Showing Americas": "ð",
                       "Globe Showing Asia-Australia": "ð", "Globe with Meridians": "ð", "New Moon": "ð", "Waxing Crescent Moon": "ð",
                       "First Quarter Moon": "ð", "Waxing Gibbous Moon": "ð", "Full Moon": "ð", "Waning Gibbous Moon": "ð",
                       "Last Quarter Moon": "ð", "Waning Crescent Moon": "ð", "Crescent Moon": "ð", "New Moon Face": "ð", "First Quarter Moon Face": "ð", "Last Quarter Moon Face": "ð", "Sun": "â", "Full Moon Face": "ð", "Sun with Face": "ð", "Star": "â­", "Glowing Star": "ð", "Shooting Star": "ð ", "Cloud": "â", "Sun Behind Cloud": "â", "Cloud with Lightning and Rain": "â", "Sun Behind Small Cloud": "ðĪ", "Sun Behind Large Cloud": "ðĨ", "Sun Behind Rain Cloud": "ðĶ", "Cloud with Rain": "ð§", "Cloud with Snow": "ðĻ", "Cloud with Lightning": "ðĐ", "Tornado": "ðŠ", "Fog": "ðŦ", "Wind Face": "ðŽ", "Rainbow": "ð", "Umbrella": "â", "Umbrella with Rain Drops": "â", "High Voltage": "âĄ", "Snowflake": "â", "Snowman": "â", "Snowman Without Snow": "â", "Comet": "â", "Fire": "ðĨ", "Droplet": "ð§", "Water Wave": "ð", "Christmas Tree": "ð", "Sparkles": "âĻ", "Tanabata Tree": "ð", "Pine Decoration": "ð"]
        emojiNameList = Array(emojiNameDict.keys)
        self.generateNewQuestion()
    }
    
    func generateNewQuestion() {
        gameOptions = emojiNameList.shuffled().prefix(3)
        correctAnswer = Int.random(in: 0...2)
    }
    
}
