require 'test_helper'

class TaggedItemTest < ActiveSupport::TestCase
  def setup
    @tag = tags(:one)
  end

  test "TaggedItems have a taggable_type for Foo" do
    foo = Foo.create(name: "my Foo")
    @tag.foos << foo

    assert TaggedItem.find(foo.id).taggable_type == "Foo"
  end


  test "TaggedItems have a taggable_type for Bar" do
    bar = Bar.create(name: "my Bar")
    @tag.bars << bar

    assert TaggedItem.find(bar.id).taggable_type == "Bar"
  end
end
