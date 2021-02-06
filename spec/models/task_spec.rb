require 'rails_helper'

Rspec.describe Booking, type: :model do
  # pending "add some examples to (or delete) #{_FILE_}"
  subject { described_class.new(
    title: 'Test Booking',
    booking_date: {date}
  )}



  context 'validations' do'
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a difficylty of greater than 5' do
    subject.difficulty = 6
    expect(subject).to_not be_valid
  
  context 'instance Methods'
  end
end