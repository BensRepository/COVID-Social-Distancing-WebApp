class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         class User < ActiveRecord::Base

  include SimpleDiscussion::ForumUser

  def name
    "#{first_name} #{last_name}"
  end
end
end
