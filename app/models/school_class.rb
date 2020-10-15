class SchoolClass < ActiveRecord::Base
  def to_s
    "#{title}-#{room_number}"
  end
end
