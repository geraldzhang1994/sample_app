require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "RoR Tutorial"  }
  
  subject { page }
  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title("#{base_title} | Home")}
  end

  describe "Help page" do
    before { visit help_path }
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit help_path 
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    before { visit about_path }
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    it "should have the title 'Contact Us'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
