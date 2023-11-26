ActionView::Base.field_error_proc = proc do |html_tag, _instance|
  element = Nokogiri::HTML.fragment(html_tag).at('input,select,textarea')
  if element
    element['class'] = "#{element['class']} invalid"
    html_tag = "#{element}".html_safe
  end
  html_tag.html_safe
end
