class CreateTutees < ActiveRecord::Migration
  def change
    create_table :tutees do |t|

      t.timestamps null: false
    end
  end
end
