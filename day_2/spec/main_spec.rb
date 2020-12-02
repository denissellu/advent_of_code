# frozen_string_literal: true

require './main'

RSpec.describe 'Password Philosophy' do
  let(:file_path) { 'spec/fixtures/files/input.txt' }

  it 'get the valid number of password' do
    expect(valid_password(file_path)).to eq 2
  end
end
