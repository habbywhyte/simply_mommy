# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Comment.destroy_all

hall_oates = Post.create({
  username: "Hall & Oates",
  title: "Oh my",
  body: "rails done did it again",
  posted_on: "April 25, 2016"
})

limp_bizkit = Post.create({
  username: "Limp Bizkit",
  title: "Sleep Deprived",
  body: "I can't sleep, ruby is keeping me up all night",
  posted_on: "April 25, 2016"
})

weird_al = Post.create({
  username: "Weird Al Yankovic",
  title: "Ruby is awesome",
  body: "I'm loving ruby on rails",
  posted_on: "April 25, 2016"
})

hall_oates.comments.create({
  username: "Taylor Swift",
  title: "I'm standing in a nice dress",
  body: "I'm loving ruby on rails",
  posted_on: "April 25, 2016"
})

limp_bizkit.comments.create({
  username: "Adele",
  title: "hello, its me.  I was wondering..",
  body: "I'm loving ruby on rails",
  posted_on: "April 25, 2016"
})

weird_al.comments.create({
  username: "Rihanna",
  title: "nobody text me in crisis",
  body: "I'm loving ruby on rails",
  posted_on: "April 25, 2016"
})
