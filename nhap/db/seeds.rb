Blog.delete_all
Comment.delete_all

article = Blog.create!(title: 'test', content: 'for test')
Comment.create!(name: 'nho',content: 'test comment 1',
                blog_id: article.id)
Comment.create!(name: 'anh',content: 'test comment 2 ',
                                blog_id: article.id)

Blog.create!(title: 'test2', content: 'for test2')
