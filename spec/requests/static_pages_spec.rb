require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Open Parking'" do
      visit '/static/home'
      expect(page).to have_content('Open Parking')
    end
    
    it "should have the right title 'Open Parking Cologne'" do
      visit '/static/home'
      expect(page).to have_title('Open Parking Cologne')
      
    end
    
  end
  
  describe "About page" do
    it "should have the content 'About'" do
      visit '/static/about'
      expect(page).to have_content('about')
    end
    
    it "should have the right title 'About Open Parking Cologne'" do
      visit '/static/about'
      expect(page).to have_title('About Open Parking Cologne')
      
    end
  end
  
end