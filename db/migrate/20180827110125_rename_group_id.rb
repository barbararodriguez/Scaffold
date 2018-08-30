class RenameGroupId < ActiveRecord::Migration[5.2]
  def change
      rename_column :students, :grupo_id, :group_id
  end
end
