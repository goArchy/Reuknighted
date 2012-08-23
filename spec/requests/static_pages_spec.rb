require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Reuknighted" }

  describe "Home page" do

    it "should have the h1 'Reuknighted'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Reuknighted')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title} | Home")
    end
  end

  describe "About page" do

    it "should have the h1 'About Reuknighted'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Reuknighted')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About Us")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end
end

