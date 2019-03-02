class CreateMovies < ActiveRecord::Migration[5.2]
    def change 
        create_table :movies do |t|
            t.string :title
            t.string :director
            t.integer :rating
            t.timestamps #give us update informtion time and date when I post and updated
         
        end
    end
end