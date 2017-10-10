class CreateUrls < ActiveRecord::Migration[5.0]
	def change
            create_table :urls do |t|
            t.string :ori_url
            t.string :short_url

            t.timestamps # created_at & updated at
        end
	end
end
