class CreateText < ActiveRecord::Migration[6.1]
  def change
    create_table :text do |t|
      t.string :original
      t.string :formatted

      t.timestamps
    end
  end
end
