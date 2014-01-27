module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravaatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
    # generate image <img src= grataraa url,
  end
end

# user.update_attributes(name: "Example User",
#                       email: "example@railstutorial.org",
#                         password: "foobar",
#                        password_confirmation: "foobar")