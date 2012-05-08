class AddTypeToPerson < ActiveRecord::Migration
  def change
    add_column :people, :type, :string
    Person.update_all :type => 'Student'
  end
end

