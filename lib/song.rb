class Song

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
    end

    def self.count
        @@count
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        artist_hash = {}
        @@artists.uniq.each do |artist|
            artist_hash[artist] = 0
            @@artists.filter do |artist2|
                artist_hash[artist2] += 1 if artist2 == artist
            end
        end
        artist_hash
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.uniq.each do |genre|
            genre_hash[genre] = 0
            @@genres.filter do |genre2|
                genre_hash[genre] += 1 if genre2 == genre
            end
        end
        genre_hash
    end

end