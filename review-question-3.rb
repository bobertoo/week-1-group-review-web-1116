# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

class User
  attr_reader :name, :photos
  def initialize(name)
    @name = name
    @photos = []
  end
end

class Photo
  attr_accessor :user, :comments
  attr_reader
  def initialize
    @comments = []
  end

  def make_comment(comment)
    comments << Comment.new(comment)
  end
end

class Comment
  @@all = []

  def self.all
    @@all
  end

  def initialize(comment)
    @comment = comment
    @@all << self
  end
end


photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
