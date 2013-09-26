class CreateTangos < ActiveRecord::Migration
  def change
    create_table :tangos do |t|
      t.string :eword
      t.string :jword

      t.timestamps
    end
  end
end
