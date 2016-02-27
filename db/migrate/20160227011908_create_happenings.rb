class CreateHappenings < ActiveRecord::Migration
  def change
    create_table :happenings do |t|
      t.references :business, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
