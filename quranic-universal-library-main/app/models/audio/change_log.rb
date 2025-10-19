# frozen_string_literal: true
# == Schema Information
#
# Table name: audio_change_logs
#
#  id                  :bigint           not null, primary key
#  date                :datetime
#  mini_desc           :text
#  rss_desc            :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  audio_recitation_id :integer
#

module Audio
  class ChangeLog < QuranApiRecord
    belongs_to :audio_recitation, class_name: 'Audio::Recitation', optional: true
  end
end
