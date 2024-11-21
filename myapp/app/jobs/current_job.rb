class CurrentJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts Myapp::Current.tenant_id
    if post = Myapp::Current.favorite_post
      puts "My favorite post is #{post.title}"
    else
      puts "No favorite post :("
    end
  end
end
