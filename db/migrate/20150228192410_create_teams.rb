class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
