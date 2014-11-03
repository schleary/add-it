class Item < ActiveRecord::Base

  def self.sort_by_votes
    all.limit(20).sort_by{|i| -i[:votes]}
  end

end
