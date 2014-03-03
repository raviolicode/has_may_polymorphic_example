class Foo < ActiveRecord::Base
  has_many :tagged_items, :as => :taggable
  has_many :tags, :through => :tagged_items
end
