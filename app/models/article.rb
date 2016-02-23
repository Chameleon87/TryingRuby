class Article < ActiveRecord::Base
<<<<<<< HEAD
=======
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
        length: { minimum: 5 }
>>>>>>> d292fa03db7ef04ceddf0f68bb512a10b9c3ddb5
end
