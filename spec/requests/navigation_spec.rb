require "rails_helper"
require "spec_helper"

RSpec.describe "Navbar Link", :type => :request do
  it "takes to the user to the About page when they click ABOUT" do
    visit "#index"
    click_on("ABOUT")
    current_path.should == "/about"
  end
  
  it "takes to the user to the Slogans page when they click SLOGANS" do
    visit "#index"
    click_on("SLOGANS")
    current_path.should == "/lojong_sayings"
  end
end

RSpec.describe "Refresh Button", :type => :request do
  it "takes to the user to /lojong_sayings when they click it" do
    visit "#index"
    page.find('#new_slogan_mobile').click
    current_path.should == "/lojong_sayings"
  end
end
