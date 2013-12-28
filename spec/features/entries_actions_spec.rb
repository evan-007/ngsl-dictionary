require 'spec_helper'

describe "Entries controller actions" do

	describe "Home page" do

		it "should have the content 'NGSL Dictionary'" do
			visit '/'
			expect(page).to have_content('NGSL Dictionary')
		end

		it "should have the title 'NGSL Dictionary | Home'" do
			visit '/'
			expect(page).to have_title('NGSL Dictionary | Home')
		end

		it "should have the content 'Here are 5 random entries'" do
			visit '/'
			expect(page).to have_content('Here are 5 random entries')
		end
	end

	describe "Index page" do

		it "should have the title 'NGSL Dictionary | Index'" do
			visit '/entries/index'
			expect(page).to have_title('NGSL Dictionary | Index')
		end
	end

	describe "A view page" do
		it "should have the title 'NGSL Dictionary | The'" do
			visit '/entries/1'
			expect(page).to have_title('NGSL Dictionary | The')
		end

		it "should have the content 'used to point to something already mentioned'" do
			visit '/entries/1'
			expect(page).to have_content('used to point to something already mentioned')
		end
	end
end