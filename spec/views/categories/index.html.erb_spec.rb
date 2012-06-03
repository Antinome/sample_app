require 'spec_helper'

describe "categories/index" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
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
      ),
      stub_model(Category,
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
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    assert_select "tr>td", :text => "Integer,".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "String,".to_s, :count => 2
    assert_select "tr>td", :text => "Parent".to_s, :count => 2
    assert_select "tr>td", :text => "Integer,".to_s, :count => 2
    assert_select "tr>td", :text => "Lft".to_s, :count => 2
    assert_select "tr>td", :text => "Integer,".to_s, :count => 2
    assert_select "tr>td", :text => "Rgt".to_s, :count => 2
    assert_select "tr>td", :text => "Integer".to_s, :count => 2
  end
end
