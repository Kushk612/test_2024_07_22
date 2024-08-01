# PokerFacesController
class PokerFacesController < ApplicationController
  def index
    @poker_faces = PokerFace.all
  end

  def update
    number_even?(params[:poker_face][:num].to_i)
  end

  def number_even?(num)
    @result_message = if (num % 2).zero?
                        "it's even"
                      else
                        "it's odd"
                      end
  end
end
