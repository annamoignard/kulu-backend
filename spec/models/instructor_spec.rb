require 'rails_helper'

RSpec.describe Instructor, type: :model do
  subject { FactoryBot.build(:instructor) }

  it 'is not valid without a class name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a user name' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end
