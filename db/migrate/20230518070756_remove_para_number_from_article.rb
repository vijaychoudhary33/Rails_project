class RemoveParaNumberFromArticle < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :para_number, :integer
  end
end
