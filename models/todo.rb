class Todo < ActiveRecord::Base
  def to_s
    if !self.complete
      "You have till #{self.timestamp} to complete #{task}!!"
    end
  end
end
