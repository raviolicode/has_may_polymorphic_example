class Tag < ActiveRecord::Base
  has_many :tagged_items
  has_many :foos, :through => :tagged_items, :source => :taggable, :source_type => "Foo"
  has_many :bars, :through => :tagged_items, :source => :taggable, :source_type => "Bar"
end
