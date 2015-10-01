class User < ActiveRecord::Base
	has_and_belongs_to_many :competitions
	# has_and_belongs_to_many(:competitions
	# 	:join_table => "users_competitions"  
	# 	:foreign_key => "competition_id"
	# 	:association_foreign_key => "user_id"
	# 	)
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
