class User < ApplicationRecord
  has_many :tasks

  enum role: %i[admin moderator user]
end
