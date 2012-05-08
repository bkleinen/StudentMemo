class RenameTableStudentsToPersons < ActiveRecord::Migration
  def change
    rename_table :students, :persons
  end

end
