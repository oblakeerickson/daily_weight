require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do

    it "should have the content 'Daily Weight'" do
      visit '/static_pages/home'
      expect(page).to have_content('Daily Weight')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Daily Weight | Home")
    end
  end
end
