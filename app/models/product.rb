class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  #made in usa works, still testing mostreviewed and most recent

  scope :usa, -> { where(country_of_origin: "United States") }

  # scope :mostreviewed, -> { order(self.reviews.length).reverse.first(1) }

  scope :mostrecent, -> { order(created_at: :desc).first(3) }



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

#below method is used on the entire class Product and will return the most reviewed product
  def mostreviewed
    @oink = self.all
    arrayofobjects = []
    class Productx

    end


  end

  #dont get rid of this end below
end
