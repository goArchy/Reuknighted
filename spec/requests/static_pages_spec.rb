require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Reuknighted'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Reuknighted')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Reuknighted")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
end



  describe "About page" do

    it "should have the h1 'About Reuknighted'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Reuknighted')
    end

    it "should have the base title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Reuknighted")
    end

    it "should not have a custom page title" do
      visit '/static_pages/about'
      page.should_not have_selector('title', :text => '| About Us')
    end

end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the base title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                        :text => "Reuknighted")
    end

    it "should not have a custom page title" do
      visit '/static_pages/contact'
      page.should_not have_selector('title', :text => '| Contact')
    end
    
 end
end

