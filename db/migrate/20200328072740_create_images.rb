class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.binary :image
      t.references :post, foreign_key: true
      t.timestamps
    end
  end
end
