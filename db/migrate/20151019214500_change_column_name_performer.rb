class ChangeColumnNamePerformer < ActiveRecord::Migration
  def change
    rename_column :performers, :type, :performer_category
  end
end
