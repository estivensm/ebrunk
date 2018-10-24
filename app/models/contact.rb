# == Schema Information
#
# Table name: contacts
#
#  id           :integer          not null, primary key
#  name         :string
#  email        :string
#  message      :text
#  property_id  :integer
#  call         :boolean
#  call_date    :date
#  state_call   :boolean
#  url_call     :string
#  contac_state :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Contact < ApplicationRecord
end
