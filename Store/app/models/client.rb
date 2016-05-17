class Client < ActiveRecord::Base
  belongs_to :type_client
  has_many :sales
end
