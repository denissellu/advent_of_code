# frozen_string_literal: true

require './main'

RSpec.describe 'Password Philosophy' do
  let(:file_path) { 'spec/fixtures/files/input.txt' }

  it 'get the valid number of password' do
    expect(valid_passwords(file_path)).to eq 2
  end

  it 'get the valid number of password' do
    expect(index_valid_passwords(file_path)).to eq 1
  end
end
