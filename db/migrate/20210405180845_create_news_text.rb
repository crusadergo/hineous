class CreateNewsText < ActiveRecord::Migration[6.1]
  def change
    create_table :news_text do |t|
      t.string :original

      t.timestamps
    end
  end
end
