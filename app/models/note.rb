class Note < ActiveRecord::Base
  belongs_to :beer_geek
  belongs_to :beer
  validates :beer_geek, presence: true
  validates :beer, presence: true
  validate :limite_sup
  validate :limite_inf
  #validate :num
  #validates :star, numericality: true

  def limite_sup
  	errors.add(:star, " sup a 10") unless star<=10
  end

  def limite_inf
  	errors.add(:star, " inf a 0") unless star>=0  		
  end

  #def num
   # errors.add(:star, " il faut un nombre") unless 

end
