# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "faker"
Booking.destroy_all
Hero.destroy_all
User.destroy_all
user = User.create(username: "toto", email: "totoduguetto@toto.com", password: "password")
user2 = User.create(username: "tata", email: "tataduguetto@toto.com", password: "password")

hero_names = [
  "Captain Chuckleberry",
  "WTF Man",
  "Pun-isher",
  "Sultry Siren",
  "Sir Laughs-a-Lot",
  "Confusion Queen",
  "The Punderful Wizard",
  "Saucy Seductress",
  "Laughzilla",
  "The Absurdist Avenger",
  "Sensual Serenader",
  "The Punbelievable Hulk",
  "Giggles the Great",
  "Mystical Mirth Maker",
  "The Chuckle Champion",
  "Whimsical Whiz",
  "Flirty Phantom",
  "The Joketron",
  "Chuckleberry Finn",
  "Enigma of Ecstasy",
  "The Pun-damentalist",
  "Mirthful Magician",
  "Teasing Temptress",
  "The Laughing Luchador",
  "The Punslinger",
  "Tickle Titan",
  "Sassy Sorceress",
  "Riddler of Romance",
  "Bodacious Banterer",
  "The Witty Wonder",
  "Daring Dose of Delight",
  "The Zany Zephyr",
  "Pun-demonium Princess",
  "Glamour Giggle Ghost",
  "The Jestful Juggernaut",
  "Cheeky Charmer",
  "The Punny Playboy",
  "Sensual Slapstick Sorcerer",
  "Peculiar Passionate Puppeteer",
  "Amorous Anecdote Avenger",
  "The Wacky Wooer",
  "Pleasureful Punchline Paladin",
  "Silly Sweetheart",
  "The Lusty Lark",
  "The Punny Pugilist",
  "The Chuckle Wrangler",
  "Pickleback Princess",
  "Guffaw Guru",
  "Absurdity Acrobat",
  "Mirthful Maestro",
  "Hilarious Hijinks Hero",
  "Banana Peel Bandit",
  "Whimsy Wizard",
  "Jester of Jocularity",
  "The Laughing Loon",
  "Giggle Gladiator",
  "Sarcastic Sweetheart",
  "Wacky Wondersmith",
  "Zany Zapper",
  "Sassy Snickerer",
  "Glamour Giggler",
  "Quirk Queen",
  "Hysterical Hootenanny",
  "Chuckles the Conqueror",
  "Giggly Grappler",
  "Peculiar Prankster",
  "Saucy Shenanigator",
  "Ticklish Tornado",
  "Ludicrous Luminary",
  "Droll Daredevil",
  "Kookie Kickmaster",
  "Sneaky Snorter",
  "Rib-Tickling Renegade",
  "The Whoopee Wielder",
  "Funky Fool",
  "Hysterics Hermit",
  "Giddy Gadgeteer",
  "Punster Paladin",
  "Kaleidoscopic Kook",
  "Mirth Merchant",
  "The Gleeful Grimacer",
  "Jubilant Japester",
  "Snicker Snatcher",
  "Witty Whistleblower",
  "Merriment Maven",
  "Jocular Juggernaut",
  "Giggle Gardener",
  "Witty Wunderkind",
  "Jazzed-Up Jester",
  "Sly Smirksmith",
  "Zesty Zaniness Zealot"
]

silly_powers = [
  "Chop oignons without crying",
  "Ability to speak in reverse",
  "Superhuman ability to procrastinate",
  "Infinite sock multiplication",
  "Power to summon rubber chickens",
  "Telepathic communication with houseplants",
  "Invisibility but only when no one is looking",
  "Ability to turn water into lukewarm coffee",
  "Super-slow-motion running",
  "Power to make paper airplanes fly in a straight line",
  "Teleportation, but only to the nearest bathroom",
  "Superhuman strength, but only when opening pickle jars",
  "Ability to understand what cats are thinking, but only on Sundays",
  "Knowing the Bible by heart",
  "Ability to turn invisible but only when humming 'Twinkle, Twinkle, Little Star'",
  "Power to communicate with inanimate objects, but they're all shy",
  "Superhuman ability to remember every Wi-Fi password",
  "Telekinesis, but only for lightweight feather pillows",
  "Power to make anyone sneeze on command",
  "Infinite supply of glitter generation",
  "Ability to speak fluent dolphin, but only in a bathtub",
  "Super speed, but only when walking backward",
  "Power to summon an army of rubber ducks",
  "Ability to change the TV channel with a single glance",
  "Teleportation, but only to the nearest bubble tea shop",
  "Incredible proficiency in interpretive dance as a means of communication",
  "Ability to talk to squirrels about quantum physics",
  "Invisibility, but only in reflections",
  "Superpower of extreme puns",
  "Power to summon a flock of confused pigeons",
  "Telekinesis limited to moving lightweight objects like feathers",
  "Ability to turn invisible but only when singing the ABCs",
  "Superhuman ability to tell dad jokes",
  "Power to turn into a cup of lukewarm tea",
  "Ability to control traffic lights, but only during a full moon",
  "Teleportation to the nearest bubble tea shop",
  "Super-sneeze that blows papers off desks",
  "Power to make plants grow into amusing shapes",
  "Infinite supply of glitter for dramatic entrances",
  "Ability to communicate with dolphins about fashion trends",
  "Power to turn water into lukewarm soup",
  "Super speed, but only when crawling",
  "Incredible talent for interpretive dance battles",
  "Power to summon a gentle breeze on a hot day",
  "Ability to create bubblegum in any flavor",
  "Super hearing, but only for bad jokes",
  "Telepathic connection with rubber ducks",
  "Infinite supply of whoopee cushions",
  "Power to change the TV channel with a stare",
  "Invisibility, but only when humming the theme from '80s sitcoms",
  "Ability to speak fluent emoji",
  "Super strength, but only when lifting marshmallows",
  "Power to summon a rain of confetti on demand",
  "Teleportation to the nearest karaoke bar",
  "Super agility, but only when playing hopscotch",
  "Ability to summon a disco ball in any situation",
  "Telepathic connection with pizza delivery drivers",
  "Invisibility, but only during awkward situations",
  "Superpower of irresistibly perfect hair",
  "Power to make traffic lights always turn green",
  "Ability to make inanimate objects blush",
  "Teleportation to the nearest hot tub",
  "Superhuman charm that works only on inanimate objects",
  "Power to speak fluent dolphin rap",
  "Incredible skill at finding lost socks",
  "Ability to turn water into glitter",
  "Super flexibility, but only in tight spaces",
  "Power to summon a swarm of friendly butterflies",
  "Teleportation to the nearest pillow fort",
  "Superhuman ability to make cats jealous",
  "Infinite supply of perfectly ripe avocados",
  "Power to turn into a purring kitten at will",
  "Ability to understand baby talk from any species",
  "Superhuman capacity for binge-watching TV shows",
  "Telekinesis to control the trajectory of thrown confetti",
  "Invisibility, but only when thinking about potatoes",
  "Power to make escalators temporarily become slides",
  "Teleportation to the nearest chocolate fountain",
  "Ability to communicate with plants about celebrity gossip",
  "Super strength, but only when opening pickle jars for others",
  "Power to make everyone around burst into spontaneous laughter",
  "Infinite supply of perfectly tuned air guitars",
  "Telepathic connection with lost TV remote controls",
  "Super ability to find the best dance moves for any song",
  "Power to turn any situation into a meme-worthy moment",
  "Ability to communicate with aliens through interpretive dance",
  "Invisibility, but only when someone says 'banana'",
  "Teleportation to the nearest pillow fight",
  "Super skill at translating animal sounds into Shakespearean drama",
  "Power to make anyone sneeze on command",
  "Ability to turn water into lukewarm coffee",
  "Superhuman ability to procrastinate",
  "Infinite sock multiplication",
  "Power to summon rubber chickens",
  "Telepathic communication with houseplants",
  "Invisibility but only when no one is looking",
  "Ability to turn water into lukewarm coffee",
  "Can fly but only when he's carried",
  "Can turn invisible but only when nobody is looking",
  "Can read minds but only for 5 seconds",
  "Can teleport but only to places you've already been",
  "Can see the future but only 1 second into the future",
  "Can talk to animals but only to animals that don't exist",
  "Can walk through walls but only when the door is open",
  "Can turn into any animal but only for 5 seconds",
  "Can turn into a ghost but only when nobody is looking"
]

god_hero = Hero.create!(
  name: "God",
  description: "He's never here when we need him BUT he's a god for sure.",
  power: "He exists, that's something great so far.",
  city: "Nantes",
  price: "You can't quantify him",
  user_id: user.id
)

god_hero.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'god.png')), filename: 'god.png')


5.times do
  Hero.create(
    name: hero_names.sample,
    description: Faker::JapaneseMedia::StudioGhibli.quote,
    power: silly_powers.sample,
    city: Faker::Games::ElderScrolls.city,
    price: Faker::Number.between(from: 1, to: 999),
    user_id: user.id
  )
end

