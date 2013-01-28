module UsersHelper

 # Returns the Gravatar (http://gravator.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
