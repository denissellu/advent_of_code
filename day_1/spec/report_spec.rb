# frozen_string_literal: true

require './report'

RSpec.describe 'Daily Report' do
  let(:file_path) { 'spec/fixtures/files/input.txt' }

  it 'returns the sum of the two value that eq 2020' do
    expect(get_2020_expense(file_path, 2)).to eq 514_579
  end

  it 'returns the sum of the three value that eq 2020' do
    expect(get_2020_expense(file_path, 3)).to eq  241_861_950
  end
end
