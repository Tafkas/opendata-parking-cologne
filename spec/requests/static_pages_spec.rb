require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path }
    
    it "should have the h1 'Open Parking'" do
      expect(page).to have_content('Open Parking')
    end
    
    it "should have the right title 'Open Parking Cologne'" do
      expect(page).to have_title('Open Parking Cologne')
      
    end
    
  end
  
  describe "About page" do
    before { about_path }

      it "should have the h1 'About Us'" do
        expect(page).to have_content('About')
      end

      it "should have the title 'About'" do
        expect(page).to have_title("About Open Parking Cologne")
      end
    end
  
end