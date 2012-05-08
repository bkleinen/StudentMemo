class RenameJoinTableCoursesPersons < ActiveRecord::Migration
  def change
    rename_table :courses_students,:courses_people
    rename_column :courses_people, :student_id, :person_id
  end

end

