class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable,
         :confirmable, :recoverable, :rememberable

  validates :first_name, :last_name, presence: true
end
