class Triangle
  def self.type(a, b, c)
    if !(a.is_a?(Integer)) or
       !(b.is_a?(Integer)) or
       !(c.is_a?(Integer))
      return "三角形じゃないです＞＜"
    end

    if (a < (b + c)) and
       (b < (a + c)) and
       (c < (a + b))
      if a == b and b == c
        "正三角形ですね！"
      elsif a == b or a == c or b == c
        "二等辺三角形ですね！"
      else
        "不等辺三角形ですね！"
      end
    else
      "三角形じゃないです＞＜"
    end
  end
end

puts Triangle.type(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i)
