class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|

      t.timestamps null: false
    end
  end
end
