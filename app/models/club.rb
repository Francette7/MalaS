class Club < ApplicationRecord
	belongs_to :recruiter, class_name: 'User'
	belongs_to :quarter
	has_many :recrutements
	has_many :members, class_name: 'User'
	has_many :participants, through: :recrutements
	has_many :events
end