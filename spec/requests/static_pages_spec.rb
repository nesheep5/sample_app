require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe "Home Page" do
    it "Should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have the  title 'Home'" do
      visit root_path
      expect(page).to have_title("#{base_title}")
    end
    
    it "should have the  title 'Home'" do
      visit root_path
      expect(page).not_to have_title(" | Home")
    end
  end

  describe "Help Page" do
    it "Should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the  title 'Help'" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the  title 'About Us'" do
      visit about_path
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the  title 'Contect'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
