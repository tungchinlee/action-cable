require 'rails_helper'

RSpec.describe User, type: :model do

  it 'it is not vaild without a name' do
    user = User.new(username: nil)
    expect(user).not_to be_valid
  end

  it 'it is not vaild without a email' do
    user = User.new(email: nil)
    expect(user).not_to be_valid
  end

  it 'it is not vaild without a password' do
    user = User.new(encrypted_password: nil)
    expect(user).not_to be_valid
  end

  it 'has many messages' do
    user = User.create(username: 'U-1')
    message1 = Message.create(user_id: user.id)
    message2 = Message.create(user_id: user.id)
    expect(user.messages).to include(message1, message2)
  end
end
