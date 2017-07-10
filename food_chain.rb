class FoodChain
  def self.song
    animals = ['Fly', 'Spider', 'Bird', 'Cat', 'Dog', 'Goat', 'Cow', 'Horse']
    song = ''

    animals.each do |animal|
      song += Object.const_get(animal).new.send(:verse)
    end

    song
  end
end

class Animal
  def verse
    output = ""
    output += know_old_lady_swallowed
    output += action
    output += swallow_to_catch
    output += dont_know_why_swallowed
    return output
  end

  def prey
    ''
  end

  def know_old_lady_swallowed
    "I know an old lady who swallowed a #{self.class.name.downcase}.\n"
  end

  def dont_know_why_swallowed
    "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
  end

  def action
    ''
  end

  def swallow_to_catch
    output = ""
    output += swallow_phrase unless swallow_phrase.empty?
    output += Object.const_get(prey).new.send(:swallow_to_catch) unless prey.empty?
    output
  end

  def swallow_phrase
    ''
  end
end

class Fly < Animal
end

class Spider < Animal
  def action
    "It wriggled and jiggled and tickled inside her.\n"
  end

  def swallow_phrase
    "She swallowed the spider to catch the fly.\n"
  end
end

class Bird < Animal
  def prey
    'Spider'
  end

  def action
    "How absurd to swallow a bird!\n"
  end

  def swallow_phrase
    "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n"
  end
end

class Cat < Animal
  def prey
    'Bird'
  end

  def action
    "Imagine that, to swallow a cat!\n"
  end

  def swallow_phrase
    "She swallowed the cat to catch the bird.\n"
  end
end

class Dog < Animal
  def prey
    'Cat'
  end

  def action
    "What a hog, to swallow a dog!\n"
  end

  def swallow_phrase
    "She swallowed the dog to catch the cat.\n"
  end
end

class Goat < Animal
  def prey
    'Dog'
  end

  def action
    "Just opened her throat and swallowed a goat!\n"
  end

  def swallow_phrase
    "She swallowed the goat to catch the dog.\n"
  end
end

class Cow < Animal
  def prey
    'Goat'
  end

  def action
    "I don't know how she swallowed a cow!\n"
  end

  def swallow_phrase
    "She swallowed the cow to catch the goat.\n"
  end
end

class Horse < Animal
  def action
    "She's dead, of course!\n"
  end

  def dont_know_why_swallowed
    ''
  end
end
