class AddDefaultNicknameToUsers < ActiveRecord::Migration
  def up
  	change_column :users, :nickname, :string, :default => "Taste Tester"
  end
  def down
  	cchange_column :users, :nickname, :string, :default => nil
  end
end
