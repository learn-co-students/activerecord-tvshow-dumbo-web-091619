class RemoveColumnOfNetowrk < ActiveRecord::Migration[5.2]
    def change
        remove_column :shows, :netowrk, :string
    end
end