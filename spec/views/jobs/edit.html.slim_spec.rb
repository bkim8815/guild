require 'rails_helper'

RSpec.describe "jobs/edit", :type => :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :title => "MyString",
      :link => "MyString",
      :location => "MyString",
      :description => "MyText",
      :remote => ""
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_title[name=?]", "job[title]"

      assert_select "input#job_link[name=?]", "job[link]"

      assert_select "input#job_location[name=?]", "job[location]"

      assert_select "textarea#job_description[name=?]", "job[description]"

      assert_select "input#job_remote[name=?]", "job[remote]"
    end
  end
end