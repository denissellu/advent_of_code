# frozen_string_literal: true

require './report'

RSpec.describe 'Daily Report' do
  let(:file_path) { 'spec/fixtures/files/input.txt' }

  it 'returns the sum of the two value that eq 2020' do
    expect(get_2020_expense(file_path)).to eq 514579
  end
end
