require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:username)}
    it { should have_many(:chatrooms) } 
    it { should have_many(:messages) } 
  end
  # it 'has many messages' do
  #   user = User.create(username: 'U-1', email: '123123@123', password: '123123')
  #   chatroom = Chatroom.create
  #   message1 = Message.create(user_id: user.id, chatroom_id: chatroom.id)
  #   message2 = Message.create(user_id: user.id, chatroom_id: chatroom.id)
  #   expect(user.messages).to include(message1, message2)
  # end

  # it 'has many chatroom' do
  #   user = User.create(username: 'U-1', email: '123123@123', password: '123123')
  #   chatroom1 = Chatroom.create
  #   chatroom2 = Chatroom.create
  #   cuatroom_users = ChatroomUser.create(user_id: user.id, chatroom_id: chatroom1.id)
  #   cuatroom_users = ChatroomUser.create(user_id: user.id, chatroom_id: chatroom2.id)
  #   expect(user.chatrooms).to include(chatroom1, chatroom2)
  # end

end
