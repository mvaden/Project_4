class CreateClassmates < ActiveRecord::Migration
  def change
    create_table :classmates do |t|
      t.string :first_name
      t.string :last_name
      t.string :portfolio_url
      t.string :location

      t.timestamps null: false
    end
  end
end
