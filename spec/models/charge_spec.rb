require 'rails_helper'

describe Charge do
  it { should have_valid(:date).when('7/31/17') }
  it { should have_valid(:description).when('description') }
  it { should have_valid(:amount).when(1.00) }
  it { should have_valid(:horse_id).when(1, 20, 300) }

  it { should_not have_valid(:date).when(nil, '') }
  it { should_not have_valid(:description).when(nil, '') }
  it { should_not have_valid(:amount).when(nil, '') }
end

RSpec.describe Charge do
  context 'making a new charge' do
    let(:charge) {Charge.new(date: '7/31/17', description: 'description', amount: 10.00, horse_id: 1)}

    it 'has a date' do
      expect(charge.date).to include('7/31/17')
    end

    it 'has a description' do
      expect(charge.description).to include('description')
    end

    it 'has an amount' do
      expect(charge.amount).to eq(10.00)
    end

    it 'has a horse_id' do
      expect(charge.horse_id).to eq(1)
    end
  end
end
