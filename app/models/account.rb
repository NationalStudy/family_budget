class Account < ActiveRecord::Base
  belongs_to :type_accounts
  belongs_to :user
end
