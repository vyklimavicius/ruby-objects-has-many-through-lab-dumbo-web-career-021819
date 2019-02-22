class Artist

  attr_accessor :name #Getter/Better

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name,genre)
    Song.new(name,self,genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self   # Calling instance method of Songs
    end
  end

  def genres
     songs.collect do |song|
       song.genre  
     end
  end

  def self.all
    @@all
  end

end
