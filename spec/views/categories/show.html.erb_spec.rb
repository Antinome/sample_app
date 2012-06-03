require 'spec_helper'

describe "categories/show" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :id => "Id",
      :integer, => "Integer,",
      :name => "Name",
      :string, => "String,",
      :parent_id => "Parent",
      :integer, => "Integer,",
      :lft => "Lft",
      :integer, => "Integer,",
      :rgt => "Rgt",
      :integer => "Integer"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Id/)
    rendered.should match(/Integer,/)
    rendered.should match(/Name/)
    rendered.should match(/String,/)
    rendered.should match(/Parent/)
    rendered.should match(/Integer,/)
    rendered.should match(/Lft/)
    rendered.should match(/Integer,/)
    rendered.should match(/Rgt/)
    rendered.should match(/Integer/)
  end
end
