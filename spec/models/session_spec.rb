# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Session, type: :model do
  subject { FactoryBot.build(:session) }

  it 'is not valid without a cost' do
    subject.cost = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an instructor' do
    subject.instructor_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a class name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a booked day' do
    subject.day = nil
    expect(subject).to_not be_valid
  end
end
