require 'rails_helper'

describe 'Visit home' do
  it 'Successfully' do
    visit root_path

    expect(current_path).to eq root_path
  end
end
