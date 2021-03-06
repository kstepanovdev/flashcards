require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there s very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe DecksController, type: :controller do

  before do
    @user = FactoryGirl.create(:user)
    login_user
  end

  describe '#set_current' do
    it 'should redirect to decks_path with notice' do
      deck = FactoryGirl.create(:deck, user_id: @user.id)
      post :set_current, params: {id: deck.id}
      expect(flash[:notice]).to eq ('Deck MyString is current now')
      expect(response).to redirect_to(decks_path)
    end
  end
end
