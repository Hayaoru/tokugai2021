class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :title,     null: false, default: ""
      t.text :info,            null: false
      t.integer :category_id,  null: false
      
      t.references :user,      foreign_key: true
      t.timestamps
    end
  end
end
