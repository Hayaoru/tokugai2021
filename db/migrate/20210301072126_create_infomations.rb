class CreateInfomations < ActiveRecord::Migration[6.0]
  def change
    create_table :infomations do |t|
      t.string :title,     null: false, default: ""
      t.text :main,            null: false
      t.integer :category_id,  null: false
      t.text :url,            null: false
      t.references :user,      foreign_key: true
      t.timestamps
    end
  end
end
