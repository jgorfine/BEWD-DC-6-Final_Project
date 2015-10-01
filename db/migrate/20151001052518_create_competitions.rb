class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.text :description
      t.datetime :start
      t.datetime :end
      t.string :ultimate_champion

      t.timestamps null: false
    end
  end
end
