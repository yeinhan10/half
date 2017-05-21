class CreateInterriors < ActiveRecord::Migration
  def change
    create_table :interriors do |t|
      t.string :title
      t.text :content
      t.string :instagram

      t.timestamps null: false
    end
  end
end
