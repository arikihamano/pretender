class CreateThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :themes do |t|
      t.string: :word
      t.string: :choice1
      t.string: :choice2
      t.string: :choice3
      t.string: :choice4
      t.string: :choice5
      t.string: :choice6
      t.string: :choice7
      t.string: :choice8
      t.timestamps
    end
  end
end
