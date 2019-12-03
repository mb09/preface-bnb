# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts("initializing users...")

User.destroy_all
admin = User.create(email:"aa@bb.cc", password:"123123", password_confirmation:"123123")
admin.admin = true
admin.save

puts("initializing flats...")

Flat.destroy_all
f1 = Flat.create(
		name: "Preface Coffee",
		description: "a nice place to go",
		address: "Causeway Bay, Hong Kong",
		user: admin,
	)
f1.remote_photo_url = "https://res.cloudinary.com/preface-nomad-dev/image/upload/v1575408556/preface-bnb-listing/placeholders/Screenshot_2019-12-03_at_19.47.39.png"
f1.save
f2 = Flat.create(
		name: "Island Side",
		description: "We do need a vacation sometimes ;)",
		address: "Lantau Island, Hong Kong",
		user: admin,
	)
f2.remote_photo_url = "https://res.cloudinary.com/preface-nomad-dev/image/upload/v1575408536/preface-bnb-listing/placeholders/christian-lambert-vmIWr0NnpCQ-unsplash.jpg"
f2.save
f3 = Flat.create(
		name: "Ruby Tuesday!",
		description: "Yeah, I mean code and dine!",
		address: "Tsim Sha Tsui, Hong Kong",
		user: admin,
	)
f3.remote_photo_url = "https://res.cloudinary.com/preface-nomad-dev/image/upload/v1575408546/preface-bnb-listing/placeholders/Screenshot_2019-12-03_at_20.17.46.png"
f3.save
f4 = Flat.create(
		name: "Sky View",
		description: "enjoy a quality view",
		address: "The Peak, Hong Kong",
		user: admin,
	)
f4.remote_photo_url = "https://res.cloudinary.com/preface-nomad-dev/image/upload/v1575408549/preface-bnb-listing/placeholders/Screenshot_2019-12-03_at_20.12.45.png"
f4.save
f5 = Flat.create(
		name: "Code and hike to the peak",
		description: "Let's do a bootcamp another way.",
		address: "Tai Mo Shan, Hong Kong",
		user: admin,
	)
f5.remote_photo_url = "https://res.cloudinary.com/preface-nomad-dev/image/upload/v1575408530/preface-bnb-listing/placeholders/holly-mandarich-UVyOfX3v0Ls-unsplash.jpg"
f5.save