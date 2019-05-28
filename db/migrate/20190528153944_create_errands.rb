class CreateErrands < ActiveRecord::Migration[5.2]
  def change
    create_table :errands do |t|
      t.string :name
      t.text :description
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
