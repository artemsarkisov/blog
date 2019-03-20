require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    let(:user) {build(:user)}
    it 'ensures username presence' do
      user.username = nil
      expect(user.save).to eq(false)
    end

    it 'ensures email presence' do
      user.email = nil
      expect(user.save).to eq(false)
    end

    it 'should save successfully' do
      expect(user.save).to eq(true)
    end
  end

  context 'admin tests' do
    let(:users) { create_list(:random_user, 5) }
    before(:each) do
      users.last(3).map { |u| u.update(admin: false) }
    end
    it 'asserts users without admin rights' do
      expect(users.count { |u| !u.admin }).to eq(3)
    end

    it 'assets users with admin rights' do
      expect(users.count(&:admin)).to eq(2)
    end
  end
end