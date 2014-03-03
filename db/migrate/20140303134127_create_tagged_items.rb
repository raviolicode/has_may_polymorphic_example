class CreateTaggedItems < ActiveRecord::Migration
  def change
    create_table :tagged_items do |t|
      t.belongs_to :tag, index: true
      t.references :taggable, polymorphic: true

      t.timestamps
    end
  end
end
