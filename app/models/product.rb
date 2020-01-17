class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  #this before save is new
  before_save :capitalize

  #this capitalize method is new
  def capitalize
    self.name = self.name.titleize()
    self.country_of_origin = self.country_of_origin.titleize()
  end

  #dont get rid of this end below
end
