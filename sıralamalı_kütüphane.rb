book1 = ["Algorithms", "Cormen", 2009, 3]
book2 = ["DeepLearning", "Goodfellow", 2016, 5]
book3 = ["OperatingSystems", "Tanenbaum", 2014, 4]
book4 = ["ComputerNetworks", "Tanenbaum", 2019, 5]
book5 = ["ArtificialIntelligence", "Russell", 2021, 5]
book6 = ["DataStructures", "Sedgewick", 2011, 4]
book7 = ["ComputerVision", "Szeliski", 2010, 4]
book8 = ["DatabaseSystems", "Silberschatz", 2020, 3]

books = [book1, book2, book3, book4, book5, book6, book7, book8]

puts "\n","----------------------------------------------------------------------------------------------------","Hoşgeldiniz..."
puts "----------------------------------------------------------------------------------------------------"

def list_books(books)

  puts "Kütüphanedeki tüm kitaplar:","\n"
  books.sort { |a, b| a[2] <=> b[2] }.each do |book|
    puts book.inspect
  end

  puts "\n----------------------------------------------------------------------------------------------------"

end

def sort_by_author(books)
  print "Hangi yazarın kitaplarını görmek istediğinizi giriniz:"
  author = gets.chomp

  puts "\n----------------------------------------------------------------------------------------------------"

  puts author,"adlı yazarın kütüphanedeki kitapları:","\n"
  authors_books = books.select { |book| book[1].include?(author) }
  if authors_books.any?
    authors_books.sort { |a, b| a[0] <=> b[0] }.each do |book|
      puts book[0]

    end
  end

  puts "\n----------------------------------------------------------------------------------------------------"

end

def sort_by_year(books)

  print "Lütfen hangi yıldan itibaren yayımlanan kitapları görmek istediğinizi giriniz:"
  year = gets.chomp.to_i

  puts "\n----------------------------------------------------------------------------------------------------"

  puts year,"yılından itibaren yayımlanan kitaplar:","\n"
  books_year = books.select { |book| book[2] >= year }
  if books_year.any?
    books_year.sort { |a, b| a[2] <=> b[2] }.each do |book|
      puts book.inspect

    end
  end

  puts "\n----------------------------------------------------------------------------------------------------"

end

def average_rating(books)
  rating_toplam = books.sum { |book| book[3] }  
  ortalama = rating_toplam / 8.to_f
  puts "Kütüphanedeki tüm kitapların reyting ortalaması:","\n"
  puts "%.3f" % ortalama
  puts "\n----------------------------------------------------------------------------------------------------"

end

def max_rating(books)
  puts "En yüksek reytingli kitaplar:","\n"
  books_max_rating = books.select { |book| book[3] == 5 }
  if books_max_rating.any?
    books_max_rating.sort { |a, b| a[0] <=> b[0] }.each do |book|
      puts book[0]

    end
  end

  puts "\n----------------------------------------------------------------------------------------------------"

end

while true

  puts "Sıralama-komut seçenekleri:"
  puts "1) 'list books' (Kitaplıktaki tüm kitapları listeler.)"
  puts "2) 'sort by author' (Seçilen yazarın kitaplarını listeler.)"
  puts "3) 'sort by year' (İstenen yıldan itibaren yayımlanan kitapları listeler.)"
  puts "4) 'average rating' (Tüm kitapların ortalama reytingini gösterir.)"
  puts "5) 'max rating' (En yüksek reytinge sahip kitapları listeler.)"
  puts "6) 'exit' (Programı kapat.)"
  puts "\n----------------------------------------------------------------------------------------------------"
  print "Çalıştırmak istediğiniz komut: "

   sort_request = gets.chomp

  puts "\n----------------------------------------------------------------------------------------------------"

  if sort_request == "1"
    list_books(books)

  elsif sort_request == "2"
    sort_by_author(books)

  elsif sort_request == "3"
    sort_by_year(books)

  elsif sort_request == "4"
    average_rating(books)

  elsif sort_request == "5"
    max_rating(books)

  elsif sort_request == "6"
    puts "Güle güle...","----------------------------------------------------------------------------------------------------"
    break

  end
end