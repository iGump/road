# == Schema Information
#
# Table name: geo_points
#
#  id                    :integer         not null, primary key
#  sti_type              :string(255)     not null
#  latitude              :decimal(, )     not null
#  longitude             :decimal(, )     not null
#  elevation             :decimal(, )     not null
#  attributes_updated_at :datetime        not null
#  story_id              :integer         not null
#  creator_id            :integer
#  created_at            :datetime        not null
#  updated_at            :datetime        not null
#

require 'spec_helper'

describe Poi do
  pending "add some examples to (or delete) #{__FILE__}"
end