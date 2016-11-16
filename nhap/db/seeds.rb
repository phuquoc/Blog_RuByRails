Blog.delete_all
Comment.delete_all
article = Blog.create!(title: 'test', content: 'for test')
Blog.create!(title: 'test2', content: 'for test2')
Comment.create!(name: 'quoc', content: 'phu quoc commented',
blog_id: article.id)
Comment.create!(name: 'Nho', content: 'Phan Anh commented',
blog_id: article.id)
