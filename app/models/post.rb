class Post < ActiveRecord::Base
  #scope :showable, where(mood: "Excited")
  scope :excited, where(mood: "Excited")
  scope :happy, where(mood: "Happy")
  scope :normal, where(mood: "Normal")
  scope :angry, where(mood: "Angry")
  scope :sad, where(mood: "Sad")
  scope :disappointed, where(mood: "Disappointed")

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
