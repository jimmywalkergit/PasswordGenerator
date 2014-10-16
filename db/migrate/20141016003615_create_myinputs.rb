class CreateMyinputs < ActiveRecord::Migration
  def change
    create_table :myinputs do |t|
      t.string :input1

      t.timestamps
    end
  end
end
