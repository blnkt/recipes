class Recipe < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  #validates_associated :tag, uniqueness: true
  has_and_belongs_to_many :ratings
  has_and_belongs_to_many :tags

  def self.recent
    Recipe.where('created_at >= ?', Date.today - 5)
  end
end
