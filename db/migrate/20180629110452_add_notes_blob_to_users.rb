class AddNotesBlobToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :notesblob, :text
  end
end
