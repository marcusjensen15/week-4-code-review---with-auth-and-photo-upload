class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  before_save :capitalize
  #these validates are new
  validates :name, presence: true
  validates :country_of_origin, presence: true
  validates :cost, presence: true

#putting the two review fields in product as a test

# validates :rating, :inclusion => 1..5
# validates_length_of :content_body, minimum: 50, maximum: 250




  #this capitalize method is new
  def capitalize
    self.name = self.name.titleize()
    self.country_of_origin = self.country_of_origin.titleize()
  end

  #dont get rid of this end below
end
