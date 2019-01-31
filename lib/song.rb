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
    song = self.new 
    song.name = song_title
    song
  end
  
  def self.create_by_name(song_title)
    song = self.create
    song.name = song_title
    song
  end
  
  def self.find_by_name(song_title)
    self.all.select {|song| song.name == song_title }[0]
  
  end
  
  def self.find_or_create_by_name(name)
    self.create_by_name(name)
    self.find_by_name(name)
  end

  def self.alphabetical
    self.all.sort_by! { |a| a.name }
  end
  
  def self.new_from_filename(song_title)
    name = song_title.split(/[- .]/)
    name = name
    self.create_by_name(name[1])
  end
  
end
