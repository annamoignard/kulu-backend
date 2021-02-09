require 'rails_helper'

RSpec.describe Booking, type: :model do
  subject { FactoryBot.build(:booking) }
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
   
end