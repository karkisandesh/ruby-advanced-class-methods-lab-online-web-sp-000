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
    song.save
    return song
  end
  
  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    return song
  end
  
  def self.create_by_name(song_name)
    song = self.new 
    song.name = song_name
    song.save
    song
  end
  
  def self.find_by_name(song_name)
    self.all.find do |song|
       song.name == song_name
    end
  end
    
  def self.find_or_create_by_name(song_name)
    
      
  end
  
  def self.alphabetical
    self.all.sort_by {|song| song}
  end
  
  def self.new_from_filename(str)
    song = self.new
      str.split("-").each_with_object([]) do |name, song| 
        artist_name = name 
        name = song
      end
  end

  def create_from_filename 
    
  end

  def self.destroy_all
    self.all.clear
  end
end