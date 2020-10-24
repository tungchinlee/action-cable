require 'rails_helper'

RSpec.describe Chatroom, type: :model do
  it { should have_many(:users) } 
  it { should have_many(:messages) } 
end
