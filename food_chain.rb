class FoodChain
  def self.song
    song = ""
    song += know_old_lady_swallowed('fly')
    song += dont_know_why_swallowed

    song += know_old_lady_swallowed('spider')
    song += animal_action('spider')
    song += swallow_to_catch('spider')
    song += dont_know_why_swallowed

    song += know_old_lady_swallowed('bird')
    song += animal_action('bird')
    song += swallow_to_catch('bird')
    song += swallow_to_catch('spider')
    song += dont_know_why_swallowed

    song += know_old_lady_swallowed('cat')
    song += animal_action('cat')
    song += swallow_to_catch('cat')
    song += swallow_to_catch('bird')
    song += swallow_to_catch('spider')
    song += dont_know_why_swallowed

    song += know_old_lady_swallowed('dog')
    song += animal_action('dog')
    song += swallow_to_catch('dog')
    song += swallow_to_catch('cat')
    song += swallow_to_catch('bird')
    song += swallow_to_catch('spider')
    song += dont_know_why_swallowed

    song += know_old_lady_swallowed('goat')
    song += animal_action('goat')
    song += swallow_to_catch('goat')
    song += swallow_to_catch('dog')
    song += swallow_to_catch('cat')
    song += swallow_to_catch('bird')
    song += swallow_to_catch('spider')
    song += dont_know_why_swallowed

    song += know_old_lady_swallowed('cow')
    song += animal_action('cow')
    song += swallow_to_catch('cow')
    song += swallow_to_catch('goat')
    song += swallow_to_catch('dog')
    song += swallow_to_catch('cat')
    song += swallow_to_catch('bird')
    song += swallow_to_catch('spider')
    song += dont_know_why_swallowed

    song += know_old_lady_swallowed('horse')
    song += animal_action('horse')

    return song
  end

  def self.know_old_lady_swallowed(animal)
    "I know an old lady who swallowed a #{animal}.\n"
  end

  def self.dont_know_why_swallowed
    "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
  end

  def self.animal_action(animal)
    case animal
    when 'spider'
      "It wriggled and jiggled and tickled inside her.\n"
    when 'bird'
      "How absurd to swallow a bird!\n"
    when 'cat'
      "Imagine that, to swallow a cat!\n"
    when 'dog'
      "What a hog, to swallow a dog!\n"
    when 'goat'
      "Just opened her throat and swallowed a goat!\n"
    when 'cow'
      "I don't know how she swallowed a cow!\n"
    when 'horse'
      "She's dead, of course!\n"
    end
  end

  def self.swallow_to_catch(animal)
    case animal
    when 'spider'
      "She swallowed the spider to catch the fly.\n"
    when 'bird'
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n"
    when 'cat'
      "She swallowed the cat to catch the bird.\n"
    when 'dog'
      "She swallowed the dog to catch the cat.\n"
    when 'goat'
      "She swallowed the goat to catch the dog.\n"
    when 'cow'
      "She swallowed the cow to catch the goat.\n"
    end
  end
end
