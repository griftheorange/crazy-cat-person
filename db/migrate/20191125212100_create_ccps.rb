class CreateCcps < ActiveRecord::Migration[6.0]
  def change
    create_table :ccps do |t|
      t.string :name

      t.timestamps
    end
  end
end
