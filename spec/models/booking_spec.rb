require 'rails_helper'

RSpec.describe Booking, type: :model do
  subject { FactoryBot.build(:booking) }
  
    it 'is not valid without a session_id' do
    subject.session_id = nil
    expect(subject).to_not be_valid
  end
end
