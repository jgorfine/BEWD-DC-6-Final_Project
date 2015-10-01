class CreateUsersAndCompetitions < ActiveRecord::Migration

  def change
    create_table :users_competitions, id: false do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :competition, index: true
    end
  end

end
