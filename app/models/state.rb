class State < ApplicationRecord
	has_many :users
	has_many :lawyers
	validates :uf, inclusion: {
		in: %w(AC AL AP AM BA CE DF ES GO
		MA MT MS MG PA PB PR PE PI RJ RN
		RS RO RR SC SP SE TO),
		message: "%{value} is not a valid UF"
	}
	validates_presence_of :name, :uf
end
