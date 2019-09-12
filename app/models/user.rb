class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :recrutements
     has_many :clubs, through: :recrutements
     has_many :requests
     belongs_to :quarter, optional: true
end
