require 'pry'

class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.find_all {|song| song.genre == self}
  end

  def self.all
    @@all
  end

  def artists
    #binding.pry
    songs.map {|song| song.artist}
  end
end
