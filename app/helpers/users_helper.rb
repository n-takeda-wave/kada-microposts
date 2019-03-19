module UsersHelper
  def gravatar_url(user, options = { size: 80 })
    # user: Userクラスのインスタンス
    # options: {size: gravatarで取りたい画像のサイズ}
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end
end
