require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "Should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  it "should have the  title 'Home'" do
    visit '/static_pages/home'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
  end
  
  describe "Help Page" do
    it "Should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  it "should have the  title 'Help'" do
    visit '/static_pages/help'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end

  it "should have the  title 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
  end
  
  describe "Contact page" do
    it "should have the content 'contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end

  it "should have the  title 'Contect'" do
    visit '/static_pages/contact'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
  end
end
