# == Schema Information
#
# Table name: morphology_word_verb_forms
#
#  id         :bigint           not null, primary key
#  name       :string
#  value      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  word_id    :bigint
#
# Indexes
#
#  index_morphology_word_verb_forms_on_name     (name)
#  index_morphology_word_verb_forms_on_word_id  (word_id)
#
# Foreign Keys
#
#  fk_rails_...  (word_id => words.id)
#

class Morphology::WordVerbForm < QuranApiRecord
  belongs_to :word, class_name: 'Morphology::Word'
end
