require 'json'
require 'open-uri'

class PagesController < ApplicationController

  def new
    @letters = ("A".."Z").to_a.sample(7)
    3.times { @letters << %w[A E I O U].sample }
  end

  def score
    @answer = params[:answer]
    @result = ''
    url = "https://wagon-dictionary.herokuapp.com/#{answer}"
    found_word = open(url).read
    word_result = JSON.parse(found_word)
    word_result["found_word"]
    if word_result["found_word"] == true
      @result = 'Well done!'
    else
      @result = 'Try again'
    end

  end

end
