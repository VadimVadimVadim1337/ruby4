require 'csv'
require './lib/main2'

data = CSV.read('data.csv')

stat = Main2.new(data)
puts "Макс = #{stat.max}"
puts "Мин = #{stat.min}"
puts "Сред.знач = #{stat.average}"
puts "Дисперс = #{stat.dispersion}"
