class CreateHobbiesPeople < ActiveRecord::Migration
  def change
    # id: false means hobbies_people table doesn't have a
    # primary key since this is just a join table.
    create_table :hobbies_people, id: false do |t|
      t.references :person, index: true, foreign_key: true
      t.references :hobby, index: true, foreign_key: true
    end
  end
end
