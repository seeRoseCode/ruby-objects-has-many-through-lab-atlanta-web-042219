class Genre

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    artists = []
    Song.all.select do |song|
      if song.genre == self
        artists << song.artist
      end
    end
    artists
  end




end
