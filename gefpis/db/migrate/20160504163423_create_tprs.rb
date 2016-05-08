class CreateTprs < ActiveRecord::Migration
  def change
    create_table :tprs do |t|

      t.timestamps null: false
    end
  end
end
