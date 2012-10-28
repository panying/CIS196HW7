class Post < ActiveRecord::Base
  attr_accessible :author, :email, :email, :mood, :text, :title
  validates :title, presence: true,
                    length: { minimum: 3 }
  validates :author, presence: true,
                    length: { minimum: 2 }

  validates :email, presence: true,
                    length: { minimum: 5 }

  validates :mood, presence: true,
                    length: { minimum: 1 }

  validates :text, presence: true,
                    length: { minimum: 3 }

end
