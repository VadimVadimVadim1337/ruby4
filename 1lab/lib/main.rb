require './main2'

ALLOWED_SCALES = %w[K C F].freeze

def check(inp, out)
  if ALLOWED_SCALES.include?(out) && ALLOWED_SCALES.include?(inp)
    return true if out != inp
  end
  false
end

puts('Введите температуру:')
temp = gets.chomp
puts('Введите первоначальную шкалу(C, K, F):')
inp = gets.chomp.upcase
puts('Введите шкалу перевода(C, K, F):')
out = gets.chomp.upcase

if check(inp, out)
  my_calc = SS.class_build(inp, out)
  puts my_calc.otvet(temp.to_i)
else
  puts 'Неверное значение'
end
