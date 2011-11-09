module PostsHelper
  def h_with_replace text, youtube = true
    text = h(text).to_str
    text.gsub!(/\[youtube\](.+?)\[\/youtube\]/) do
      #raise [$1, $`, $&, $'].inspect
      "<iframe width='420' height='315' src='http://www.youtube.com/embed/#{$1}' frameborder='0' allowfullscreen>
        </iframe>"
    end if youtube
    text.html_safe
  end
end
