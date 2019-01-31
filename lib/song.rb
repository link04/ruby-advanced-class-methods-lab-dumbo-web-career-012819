require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    self.all << song
    song
  end
  
  def self.new_by_name(song_title)
   
   song.name = song_title
   song
  end
  
  def self.create_by_name(song_title)
    song = self.new
    song.name = song_title
    song.name
  end
  
  def self.find_by_name(name)
    self.all.find(name)
  end
  
  def self.find_or_create_by_name(name)
    self.create_by_name(name)
    self.find_by_name(name)
  end

end
