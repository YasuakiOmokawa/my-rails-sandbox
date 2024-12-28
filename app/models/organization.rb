class Organization < ApplicationRecord
  enum :role, {
    member: 0,
    option: 1
  }
end

# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  role       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
