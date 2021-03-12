class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	belongs_to :state
	belongs_to :lawyer, optional: true
	has_many :requests
	devise  :database_authenticatable, :registerable,
			:recoverable, :rememberable, :validatable,
			:jwt_authenticatable,
			jwt_revocation_strategy: Devise::JWT::RevocationStrategies::Null
end
