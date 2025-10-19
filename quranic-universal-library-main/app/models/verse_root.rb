# == Schema Information
#
# Table name: verse_roots
#
#  id         :integer          not null, primary key
#  value      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class VerseRoot < QuranApiRecord
  has_many :verses
  has_many :words, through: :verses
end
