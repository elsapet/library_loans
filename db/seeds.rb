# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bulgakov = Author.find_or_create_by(name: "Mikail Bulgakov")
ishiguro = Author.find_or_create_by(name: "Kazuo Ishiguro")

[
  {
    title: "Diaboliad",
    year: 1924
  },
  {
    title: "The Heart of a Dog",
    year: 1925
  },
  {
    title: "The Fatal Eggs",
    year: 1925
  },
  {
    title: "The White Guard",
    year: 1925
  },
  {
    title: "A Young Doctor's Notebook",
    year: 1926
  },
  {
    title: "The Master and Margarita",
    year: 1940
  }
].each do |bulgakov_books|
  Book.create(
    author: bulgakov,
    title: bulgakov_books[:title],
    year: bulgakov_books[:year]
  )
end

[
  {
    title: "A Pale View of Hills",
    year: 1982
  },
  {
    title: "An Artist of the Floating World",
    year: 1986
  },
  {
    title: "The Remains of the Day",
    year: 1989
  },
  {
    title: "The Unconsoled",
    year: 1995
  },
  {
    title: "When We Were Orphans",
    year: 2000
  },
  {
    title: "Never Let Me Go",
    year: 2005
  },
  {
    title: "The Buried Giant",
    year: 2015
  },
  {
    title: "Klara and the Sun",
    year: 2021
  }
].each do |ishiguro_books|
  Book.find_or_create_by(
    author: ishiguro,
    title: ishiguro_books[:title],
    year: ishiguro_books[:year]
  )
end