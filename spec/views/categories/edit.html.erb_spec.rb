require 'spec_helper'

describe "categories/edit" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :id => "MyString",
      :integer, => "MyString",
      :name => "MyString",
      :string, => "MyString",
      :parent_id => "MyString",
      :integer, => "MyString",
      :lft => "MyString",
      :integer, => "MyString",
      :rgt => "MyString",
      :integer => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path(@category), :method => "post" do
      assert_select "input#category_id", :name => "category[id]"
      assert_select "input#category_integer,", :name => "category[integer,]"
      assert_select "input#category_name", :name => "category[name]"
      assert_select "input#category_string,", :name => "category[string,]"
      assert_select "input#category_parent_id", :name => "category[parent_id]"
      assert_select "input#category_integer,", :name => "category[integer,]"
      assert_select "input#category_lft", :name => "category[lft]"
      assert_select "input#category_integer,", :name => "category[integer,]"
      assert_select "input#category_rgt", :name => "category[rgt]"
      assert_select "input#category_integer", :name => "category[integer]"
    end
  end
end
