class CreatreArticleCategoriesRenameField < ActiveRecord::Migration
  def change
    change_table :article_categories do |t|      
      t.rename :cateror_id, :category_id
    end    
  end
end
