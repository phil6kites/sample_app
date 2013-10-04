require 'spec_helper'

describe "Static pages" do
	describe "Home Page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home' # this is a capybara function
			expect(page).to have_content('Sample App')
		end

		it "should have the title 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
		end
	end

	describe "Help Page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/help'
			expect(page).to have_content('Sample App')
		end

		it "should have the word 'Help' in <h2> element" do
			visit '/static_pages/help'
			expect(page).to have_content(/help/i)
		end

		it "should have the title 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
		end

	end

	describe "About Page" do

		it "should have the word 'about' somewhere" do
			visit '/static_pages/about'
			expect(page).to have_content(/about/i)
		end


		it "should have the title 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us')
		end
	end
end
