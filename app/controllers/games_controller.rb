class GamesController < ApplicationController

  def new
    vowels = %w[a e i o u]
    consonants = ('a'..'z').to_a - vowels
    letters = vowels.sample(5) + consonants.sample(5)
    @letters = letters.shuffle!
    puts letters.shuffle!
  end

  def score
    @imput = params[:imput]
  end
end
