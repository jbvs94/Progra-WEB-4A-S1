class Beer < ActiveRecord::Base
	belongs_to :brewerie
	has_many :notes
	has_many :beer_geeks, :through => :notes 
	accepts_nested_attributes_for :notes, allow_destroy: true
	validates_associated :notes
	validates :name ,presence: true
	validates :description, presence: true
	#validates :description, inclusion:


  def moyenne
	moye=0
        if notes.nil?
			return
		else
			notes.each do |n|
	      			moye=moye+n.star
       	        end
				moye=moye/notes.count unless notes.empty?
				
			end
	end
	#notes.map { |note| note.star }.sum / notes.count unless notes.empty?
  end

	


