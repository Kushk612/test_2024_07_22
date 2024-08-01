require 'rails_helper'

RSpec.describe PokerFacesController, type: :controller do
  render_views

  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'get number_even?' do
    it 'return even on num' do
      poker_face = PokerFace.create(name: Faker::Name.name,
                                    batch_id: 100,
                                    address: Faker::Address.full_address)
      put :update, params: { id: poker_face.id, poker_face: { num: 10 } }
      expect(response).to be_successful
      expect(assigns(:result_message)).to eq("it's even")
    end

    it 'return odd on num' do
      poker_face = PokerFace.create(name: Faker::Name.name,
                                    batch_id: 100,
                                    address: Faker::Address.full_address)
      put :update, params: { id: poker_face.id, poker_face: { num: 101 } }
      expect(response).to be_successful
      expect(assigns(:result_message)).to eq("it's odd")
    end
  end
end
