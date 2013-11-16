require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do

    it "should have the content 'Daily Weight'" do
      visit root_path
      expect(page).to have_content('Daily Weight')
    end

    it "should have the title" do
      visit root_path
      expect(page).to have_title("Daily Weight")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title(' | Home')
    end
  end
end
