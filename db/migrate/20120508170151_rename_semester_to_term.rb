class RenameSemesterToTerm < ActiveRecord::Migration
  def up
    rename_column :courses, :semester_id, :term_id
  end

  def down
    rename_column :courses, :term_id, :semester_id
  end
end
