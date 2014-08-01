require 'spec_helper'

describe "Authentication" do

<<<<<<< HEAD
  subject { page }

=======
>>>>>>> sign-in-out
  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Sign in') }
    it { should have_title('Sign in') }
<<<<<<< HEAD
=======

>>>>>>> sign-in-out
  end

  describe "signin" do
    before { visit signin_path }

    describe "with invalid information" do
      before { click_button "Sign in" }

<<<<<<< HEAD
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
      it { should have_error_message('Invalid') } 

	describe "after visiting another page" do
        before { click_linld_not have_selectk "Home" }
        it { shouor('div.alert.alert-error') }
      end
    end


	describe "with valid information" do
=======
      it { should have_title('Sign in') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
    end
 	
 	describe "with valid information" do
>>>>>>> sign-in-out
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email",    with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign in"
<<<<<<< HEAD
      end
=======
    end
>>>>>>> sign-in-out

      it { should have_title(user.name) }
      it { should have_link('Profile', href: user_path(user)) }
      it { should have_link('Sign out', href: signout_path) }
      it { should_not have_link('Sign in', href: signin_path) }
<<<<<<< HEAD
    
      describe "followed by signout" do
        before { click_link 'Sign out' }

        it { should have_link('Sign in') }
      end

=======
>>>>>>> sign-in-out
    end
  end
end
