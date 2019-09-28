class CreateShows < ActiveRecord::Migration[5.2]
    drop_table :shows
    
    create_table :shows do |t|
        t.string :name
        t.string :network
        t.string :day
        t.integer :rating
    end
end