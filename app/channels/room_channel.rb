<<<<<<< Updated upstream
class RoomChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find params[:room]
    stream_for room
  end
end
=======
class RoomChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find params[:room]
    stream_for room
  end
end
>>>>>>> Stashed changes
