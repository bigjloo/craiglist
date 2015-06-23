Category.create(name: "coding")
Category.create(name: "sports")

Post.create(title: "activerecord", description: "simple", email: "ar@gmail.com", price: 299.00, category_id: 1)
Post.create(title: "ruby", description: "on rails", email: "ror@yahoo.com", price: 198, category_id: 1)
Post.create(title: "basketball", description: "basketball-desc", email: "bb@hotmail.com", price: 29.9, category_id: 2)
Post.create(title: "badminton", description: "badminton-description", email: "badminton@gmail.com", price: 19, category_id: 2)
Post.create(title: "magic", description: "academy", category_id: 3)