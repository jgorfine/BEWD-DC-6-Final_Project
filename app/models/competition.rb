class Competition < ActiveRecord::Base
	has_and_belongs_to_many :users
	# has_and_belongs_to_many (:users, 
	# 	:join_table => "users_competitions", 
	# 	:foreign_key => "user_id", 
	# 	:association_foreign_key => "competition_id"
	# 	)
	validates :name, presence: true
end
