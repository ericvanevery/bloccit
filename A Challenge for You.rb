A Challenge for You

Now's a good time to commit your code. (Don't push yet, just commit.) 

After you've committed, work through the following steps on your own:

# Create image_uploader that will be used to upload images for Posts;
#  Hint: use rails g uploader...


 #    ++ rails generate uploader Image
     


# Add an image attribute to Post model;
 # Hint: use rails g migration...

 # ++  rails g migration AddImageToPost image:string

# Modify models/post.rb to make image accessible;

# Modify models/post.rb to declare mount_uploader for the image attribute;

#Modify image_uploader.rb to use Fog for storage. Declare the following as well:
 # process :resize_to_fill => [300, 300]

 # version :thumb do
 #   process :resize_to_fill => [50, 50]
 # end

Add the ability to upload image in the views/posts/_form.html.erb;

Display the uploaded image in the views/posts/show.html.erb;

Display the uploaded image in the views/topics/show.html.erb;

Really try to accomplish these steps on your own, before looking at the 
code in the repo or speaking with your mentor. You should be able to apply 
the lessons learned in this checkpoint to accomplish all the tasks.

