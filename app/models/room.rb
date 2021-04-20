<<<<<<< Updated upstream
class Room < ApplicationRecord
  has_many :room_messages, dependent: :destroy,
                           inverse_of: :room
end
=======
class Room < ApplicationRecord
  has_many :room_messages, dependent: :destroy,
                           inverse_of: :room
end
>>>>>>> Stashed changes
