require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do

    it "should have the content 'Daily Weight'" do
      visit '/static_pages/home'
      expect(page).to have_content('Daily Weight')
    end
  end
end
