class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  before_save :capitalize
  #these validates are new
  validates :name, presence: true
  validates :country_of_origin, presence: true
  validates :cost, presence: true




  #this capitalize method is new
  def capitalize
    self.name = self.name.titleize()
    self.country_of_origin = self.country_of_origin.titleize()
  end

  #dont get rid of this end below
end
