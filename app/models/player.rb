class Player < ApplicationRecord
  has_many :trainings, dependent: :destroy
end

class Training < ApplicationRecord
  belongs_to :player
end

#
# class Author < ApplicationRecord
#  has_many :books, dependent: :destroy
# end
#
# class Book < ApplicationRecord
#   belongs_to :author
# end
#