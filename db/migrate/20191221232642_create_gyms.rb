class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :address
      t.string :work_time
      t.string :price
      t.string :gym_url
      t.references :area, null: false, foreign_key: true
      t.references :created_user, null: false, foreign_key: true
      t.references :updated_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
