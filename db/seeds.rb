u1 = User.create(email: 'user@example.com',  password: 'password')
u2 = User.create(email: 'user2@example.com', password: 'password')

p1 = u1.posts.create(title: 'First Post',  body:  'A Plane')
p2 = u1.posts.create(title: 'Second Post', body: 'A Train')
p3 = u1.posts.create(title: 'Third Post',  body: 'An automobile')

p4 = u2.posts.create(title: 'First Post',  body: 'Lions and Tigers')
p5 = u2.posts.create(title: 'Second Post', body: 'And Bears!')
p6 = u2.posts.create(title: 'Third Post',  body: 'Oh My!')

p3.comments.create(body: "This post was terrible", user: u1)
p4.comments.create(body: "This post was the best thing in the whole world", user: u1)
