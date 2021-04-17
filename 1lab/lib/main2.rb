class FK
  def otvet(number)
    (number - 32) / 1.8 + 273
  end
end

class KC
  def otvet(number)
    number - 273
  end
end

class KF
  def otvet(number)
    (number - 273) * 1.8 + 32
  end
end

class CF
  def otvet(number)
    (number * 9 / 5) + 32
  end
end

class CK
  def otvet(number)
    number + 273
  end
end

class FC
  def otvet(number)
    (number - 32) * 5 / 9
  end
end

class SS
  def self.class_build(inp, out)
    str = "#{inp}#{out}"
    Object.const_get(str).new
  end
end
