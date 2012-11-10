require 'spec_helper'

describe "wikis/show" do
  before(:each) do
    @wiki = assign(:wiki, stub_model(Wiki,
      :competencies_wiki => "MyText",
      :job_description_wiki => "MyText",
      :personal_profile_wiki => "MyText",
      :dictionary_wiki => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
