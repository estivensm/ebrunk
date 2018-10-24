# == Schema Information
#
# Table name: brunk_tracings
#
#  id         :integer          not null, primary key
#  brunk_id   :integer
#  runner_id  :integer
#  comment    :text
#  offer      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BrunkTracing < ApplicationRecord
end
