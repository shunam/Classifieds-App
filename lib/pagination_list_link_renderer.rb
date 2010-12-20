class PaginationListLinkRenderer < WillPaginate::LinkRenderer

  def to_html
    #links = windowed_links

    links = []
    links.push(page_link_or_span(@collection.previous_page, 'previous', @options[:previous_label]))
    links.push(page_link_or_span(@collection.next_page, 'next', @options[:next_label]))

    html = links.join(@options[:separator])
    @options[:container] ? @template.content_tag(:div, html, html_attributes.merge!({:class => "link_button"})) : html
  end

protected

  def windowed_links
    visible_page_numbers#.map { |n| page_link_or_span(n, (n == current_page ? 'current' : nil)) }
    ["Page #{current_page} of #{visible_page_numbers.last}"]
  end

  def page_link_or_span(page, span_class, text = nil)
    text ||= page.to_s
    if page && page != current_page
      page_link(page, text, :class => span_class)
    end
  end

  def page_link(page, text, attributes = {})
    case attributes[:class]
      when "next"
        @template.link_to(text, url_for(page), :class => "nextLink replacement")
      when "previous"
        @template.link_to(text, url_for(page), :class => "prevStatic replacement")
      else
        @template.link_to(text, url_for(page))
    end
  end

  def page_span(page, text, attributes = {})
    @template.content_tag(:li, text, attributes)
  end

end