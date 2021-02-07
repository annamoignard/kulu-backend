require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is not valid without a login username' do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a login password' do
    subject.password = nil
    expect(subject).to_not be_valid
  end
end
