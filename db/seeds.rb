puts 'Cleaning database...'
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

puts "Creating movies..."
Movie.create!(
  title: "Pelé: Birth of a Legend",
  overview: "The story of the rise of Pelé, the greatest football player of all time, from humble beginnings to international superstardom.",
  poster_url: "https://image.tmdb.org/t/p/original/3IChqECzRJfSBXTU6g6WFAzMd4L.jpg",
  rating: 7.5
)
Movie.create!(
  title: "Interstellar",
  overview: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.",
  poster_url: "https://image.tmdb.org/t/p/original/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg",
  rating: 8.6
)
Movie.create!(
  title: "Parasite",
  overview: "A poor family schemes to become employed by a wealthy family by infiltrating their household and posing as unrelated, highly qualified individuals.",
  poster_url: "https://image.tmdb.org/t/p/original/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg",
  rating: 8.6
)
Movie.create!(
  title: "The Grand Budapest Hotel",
  overview: "A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel's glorious years under an exceptional concierge.",
  poster_url: "https://image.tmdb.org/t/p/original/nX5XotM9yprCKarRH4fzOq1VM1J.jpg",
  rating: 8.1
)

puts 'Success!'
