class KaraokeMachine
  def initialize(melody)
    @melody=melody.reverse
  end

  def transpose(key)
    keys = %w(C C# D D# E F F# G G# A A# B)
    downkey = key % (-12)
    newmelody=""
    pre=""
    flg = false
    @melody.each_char do |m|
      if m=='#'
        flg = true
        next
      end
      if flg
        m=m+'#'
        flg =false
      end
      if keys.include?(m)
        newkey = keys.index(m)+downkey
        newmelody = keys[newkey] + newmelody
      else
        newmelody = m + newmelody
      end
    end

    return newmelody
  end
end