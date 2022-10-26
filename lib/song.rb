class Song

    @@count=0
    @@artists=[]
    @@genres=[]
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name =name
        @artist =artist
        @genre =genre
        @@artists << artist
        @@genres <<genre
        @@count +=1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash={}
        @@genres.each do |gn|
            if genre_hash[gn]
                genre_hash[gn] += 1
            else
                genre_hash[gn] = 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash={}
        @@artists.each do |art|
            if artist_hash[art]
                artist_hash[art] += 1
            else
                artist_hash[art] = 1
            end
        end
        artist_hash
    end

   
       
end