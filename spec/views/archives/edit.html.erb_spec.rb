require 'spec_helper'

describe "archives/edit.html.erb" do
  before(:each) do
    @archive = assign(:archive, stub_model(Archive,
      :name => "MyString",
      :site_url => "MyString",
      :thumbnail => "MyString",
      :carousel_description => "MyText",
      :carousel_image_url => "MyString"
    ))
  end

  it "renders the edit archive form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => archives_path(@archive), :method => "post" do
      assert_select "input#archive_name", :name => "archive[name]"
      assert_select "input#archive_site_url", :name => "archive[site_url]"
      assert_select "input#archive_thumbnail", :name => "archive[thumbnail]"
      assert_select "textarea#archive_carousel_description", :name => "archive[carousel_description]"
      assert_select "input#archive_carousel_image_url", :name => "archive[carousel_image_url]"
    end
  end
end
