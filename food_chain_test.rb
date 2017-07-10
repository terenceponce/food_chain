#!/usr/bin/env ruby
require 'minitest/autorun'
require 'byebug'

require_relative 'food_chain'

class NoCheating < IOError
  def message
    "The use of File.open and IO.read is restricted.\n"                \
    'This exercise intends to help you improve your ability to work ' \
    'with data generated from your code. Your program must not read ' \
    'the song.txt file.'
  end
end

class FoodChainTest < Minitest::Test
  # This test is an acceptance test.
  #
  # If you find it difficult to work the problem with so much
  # output, go ahead and add a `skip`, and write whatever
  # unit tests will help you. Then unskip it again
  # to make sure you got it right.
  # There's no need to submit the tests you write, unless you
  # specifically want feedback on them.
  def test_the_whole_song
    song_file = File.expand_path('../song.txt', __FILE__)
    expected  = IO.read(song_file)
    assert_equal expected, FoodChain.song
  end

  # Tests that an error is effectively raised when IO.read or
  # File.open are used within FoodChain.
  def test_read_guard
    song_file = File.expand_path('../song.txt', __FILE__)
    ["IO.read '#{song_file}'", "File.open '#{song_file}'"].each do |trigger|
      assert_raises(NoCheating) { FoodChain.send :class_eval, trigger }
    end
  end

  # Problems in exercism evolve over time,
  # as we find better ways to ask questions.
  # The version number refers to the version of the problem you solved,
  # not your solution.
  #
  # Define a constant named VERSION inside of BookKeeping.
  # If you are curious, read more about constants on RubyDoc:
  # http://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/constants.html
  def test_version
    skip
    assert_equal 2, BookKeeping::VERSION
  end

  ########################################
  # Animal.know_old_lady_swallowed tests #
  ########################################

  def test_know_old_lady_swallowed_fly
    expected = "I know an old lady who swallowed a fly.\n"
    assert_equal expected, Fly.new.know_old_lady_swallowed
  end

  def test_know_old_lady_swallowed_spider
    expected = "I know an old lady who swallowed a spider.\n"
    assert_equal expected, Spider.new.know_old_lady_swallowed
  end

  def test_know_old_lady_swallowed_bird
    expected = "I know an old lady who swallowed a bird.\n"
    assert_equal expected, Bird.new.know_old_lady_swallowed
  end

  def test_know_old_lady_swallowed_cat
    expected = "I know an old lady who swallowed a cat.\n"
    assert_equal expected, Cat.new.know_old_lady_swallowed
  end

  def test_know_old_lady_swallowed_dog
    expected = "I know an old lady who swallowed a dog.\n"
    assert_equal expected, Dog.new.know_old_lady_swallowed
  end

  def test_know_old_lady_swallowed_goat
    expected = "I know an old lady who swallowed a goat.\n"
    assert_equal expected, Goat.new.know_old_lady_swallowed
  end

  def test_know_old_lady_swallowed_cow
    expected = "I know an old lady who swallowed a cow.\n"
    assert_equal expected, Cow.new.know_old_lady_swallowed
  end

  def test_know_old_lady_swallowed_horse
    expected = "I know an old lady who swallowed a horse.\n"
    assert_equal expected, Horse.new.know_old_lady_swallowed
  end

  #######################################
  # Animal.dont_know_why_swallowed test #
  #######################################

  def test_dont_know_why_swallowed
    expected = "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    assert_equal expected, Animal.new.dont_know_why_swallowed
  end

  #######################
  # Animal.action tests #
  #######################

  def test_animal_action_spider
    expected = "It wriggled and jiggled and tickled inside her.\n"
    assert_equal expected, Spider.new.action
  end

  def test_animal_action_bird
    expected = "How absurd to swallow a bird!\n"
    assert_equal expected, Bird.new.action
  end

  def test_animal_action_cat
    expected = "Imagine that, to swallow a cat!\n"
    assert_equal expected, Cat.new.action
  end

  def test_animal_action_dog
    expected = "What a hog, to swallow a dog!\n"
    assert_equal expected, Dog.new.action
  end

  def test_animal_action_goat
    expected = "Just opened her throat and swallowed a goat!\n"
    assert_equal expected, Goat.new.action
  end

  def test_animal_action_cow
    expected = "I don't know how she swallowed a cow!\n"
    assert_equal expected, Cow.new.action
  end

  def test_animal_action_horse
    expected = "She's dead, of course!\n"
    assert_equal expected, Horse.new.action
  end

  #################################
  # Animal.swallow_to_catch tests #
  #################################

  def test_swallow_to_catch_spider
    expected = "She swallowed the spider to catch the fly.\n"
    assert_equal expected, Spider.new.swallow_to_catch
  end

  def test_swallow_to_catch_bird
    expected = "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\nShe swallowed the spider to catch the fly.\n"
    assert_equal expected, Bird.new.swallow_to_catch
  end

  def test_swallow_to_catch_cat
    expected = "She swallowed the cat to catch the bird.\nShe swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\nShe swallowed the spider to catch the fly.\n"
    assert_equal expected, Cat.new.swallow_to_catch
  end

  def test_swallow_to_catch_dog
    expected = "She swallowed the dog to catch the cat.\nShe swallowed the cat to catch the bird.\nShe swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\nShe swallowed the spider to catch the fly.\n"
    assert_equal expected, Dog.new.swallow_to_catch
  end

  def test_swallow_to_catch_goat
    expected = "She swallowed the goat to catch the dog.\nShe swallowed the dog to catch the cat.\nShe swallowed the cat to catch the bird.\nShe swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\nShe swallowed the spider to catch the fly.\n"
    assert_equal expected, Goat.new.swallow_to_catch
  end

  def test_swallow_to_catch_cow
    expected = "She swallowed the cow to catch the goat.\nShe swallowed the goat to catch the dog.\nShe swallowed the dog to catch the cat.\nShe swallowed the cat to catch the bird.\nShe swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\nShe swallowed the spider to catch the fly.\n"
    assert_equal expected, Cow.new.swallow_to_catch
  end
end

module RestrictedClasses
  class File
    def self.open(*)
      fail NoCheating
    end

    def self.read(*)
      fail NoCheating
    end

    def open(*)
      fail NoCheating
    end

    def read(*)
      fail NoCheating
    end
  end

  class IO
    def self.read(*)
      fail NoCheating
    end

    def read(*)
      fail NoCheating
    end
  end
end

FoodChain.prepend RestrictedClasses
