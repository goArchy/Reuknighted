require 'spec_helper'

describe "Static Pages" do
  
  
  describe "Home page" do
    
    it "should have the content 'Reuknighted'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Reuknighted')
      
    end
  
  it "should have the title 'Home'" do
    visit '/static_pages/home'
    page.should have_selector('title', 
                      :text => "Reuknighted | Home")
  end
 end 
  
  describe "About page" do

    it "should have the content 'About Reuknighted'" do
      visit '/static_pages/about'
      page.should have_selector('h1',  :text => 'About Reuknighted')
    end
  
    it "should have the title 'About'" do
    visit '/static_pages/about'
    page.should have_selector('title', 
                      :text => "Reuknighted | About")
  
  end
 end


end
