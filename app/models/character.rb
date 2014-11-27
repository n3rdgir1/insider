require 'active_record'

class Character < ActiveRecord::Base
  belongs_to :user
end
