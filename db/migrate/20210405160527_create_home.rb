class CreateHome < ActiveRecord::Migration[6.1]
  def change
    create_table :home do |t|

      t.timestamps
    end
  end
end
