class Comedian < ActiveRecord::Base

  def self.average_age
    average(:age).to_i
  end

  def special
    @specials = Special.all
    require 'pry'; binding.pry
    @specials.find_by(name: params[:name])
  end

end
