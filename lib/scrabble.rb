require 'pry'

def scrabble(word)
  tiles = word.upcase.split("")
  total = 0

  scores = {"1" => ["A","E","I","O","U","L","N","R","S","T"],
    "2" => ["D","G"],
    "3" => ["B", "C", "M", "P"],
    "4" => ["F", "H", "V", "W", "Y"],
    "5" => ["K"],
    "8" => ["J", "X"],
    "10" => ["Q", "Z"]}

  tiles.each do |tile|
    scores.each do |score,letters|

      letters.each do |letter|
        if (/\w/.match(letter))
          if (letter == tile)
binding.pry
            total = total + score.to_i
          end
        end
      end
    end
  end

  return total
end
