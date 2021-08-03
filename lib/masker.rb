class Masker
    def mask(string)
        if string.length > 4
            letters = string.chars
            
            letters.reverse.each.with_index do |char, index|
                char.replace('#') if index > 3
            end
            letters.join
        else
            string
        end
    end
end