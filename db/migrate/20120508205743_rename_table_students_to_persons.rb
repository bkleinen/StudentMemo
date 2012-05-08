class RenameTableStudentsToPersons < ActiveRecord::Migration
  def change
    rename_table :students, :people
  end

end
