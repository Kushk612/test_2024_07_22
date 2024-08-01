require 'rails_helper'

RSpec.describe PokerFace, type: :model do
  let(:poker_face) { build :poker_face }

  before(:each) do
  end

  describe 'able to create the poker_face record' do
    it 'sholud able to create the record' do
      poker_face = PokerFace.create(name: Faker::Name.name, batch_id: 987_654,
                                    address: Faker::Address.full_address)
      expect(poker_face).to be_valid
      expect(PokerFace.count).to eq(1)
      expect(poker_face.batch_id).to eq(987_654)
    end

    it('poker has many polycomments') do
      pocker_face = PokerFace.reflect_on_association(:polycomments)
      expect(pocker_face.macro).to eq(:has_many)
    end

    it 'sholud not create pokcer face record without the batch_id' do
      poker_face = PokerFace.create(name: Faker::Name.name, batch_id: '',
                                    address: Faker::Address.full_address)
      expect(poker_face).not_to be_valid
      expect(PokerFace.count).to eq(0)
      expect(poker_face.errors.full_messages).to eq(["Batch can't be blank"])
    end
  end
end
