require 'spec_helper'

describe "wikis/index" do
  before(:each) do
    assign(:wikis, [
      stub_model(Wiki,
        :competencies_wiki => "MyText",
        :job_description_wiki => "MyText",
        :personal_profile_wiki => "MyText",
        :dictionary_wiki => "MyText"
      ),
      stub_model(Wiki,
        :competencies_wiki => "MyText",
        :job_description_wiki => "MyText",
        :personal_profile_wiki => "MyText",
        :dictionary_wiki => "MyText"
      )
    ])
  end

  it "renders a list of wikis" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
