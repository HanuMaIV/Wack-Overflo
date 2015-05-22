class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.integer :direction, null: false
    	t.integer :voter, null: false
     	t.references :votable, polymorphic: true, index: true

    	t.timestamps
    end
  end
end