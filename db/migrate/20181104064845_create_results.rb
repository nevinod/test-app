class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.date :test_date
      t.decimal :score

      t.timestamps
    end
  end
end
