require 'spec_helper'

describe "wikis/edit" do
  before(:each) do
    @wiki = assign(:wiki, stub_model(Wiki,
      :competencies_wiki => "MyText",
      :job_description_wiki => "MyText",
      :personal_profile_wiki => "MyText",
      :dictionary_wiki => "MyText"
    ))
  end

  it "renders the edit wiki form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => wikis_path(@wiki), :method => "post" do
      assert_select "textarea#wiki_competencies_wiki", :name => "wiki[competencies_wiki]"
      assert_select "textarea#wiki_job_description_wiki", :name => "wiki[job_description_wiki]"
      assert_select "textarea#wiki_personal_profile_wiki", :name => "wiki[personal_profile_wiki]"
      assert_select "textarea#wiki_dictionary_wiki", :name => "wiki[dictionary_wiki]"
    end
  end
end
