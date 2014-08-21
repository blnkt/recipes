class Recipe < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  #validates_associated :tag, uniqueness: true
  has_and_belongs_to_many :ratings
  has_and_belongs_to_many :tags

  def self.recent
    Recipe.where('created_at >= ?', Date.today - 5)
  end

  def average_rating
    (self.ratings.ids.inject{|sum,x| sum + x })/self.ratings.ids.length
  end
end
