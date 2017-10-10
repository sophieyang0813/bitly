class CreateCounter < ActiveRecord::Migration[5.0]
	def change
        add_column :urls, :counter, :integer, :default => 0
	end
end
