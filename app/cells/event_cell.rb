class EventCell < Cell::ViewModel


  include PrismicHelper
  include PrismicController

  def show
    render
  end


  private

  def title
    model['event.title'].as_html_safe(link_resolver())
  end

  def image
    model['event.main_image']
  end

  def link
    link_to title, link_resolver().link_to(model)
  end

  def reference
    if model['main.reference']
      model['main.reference'].as_html_safe(link_resolver())
    end
  end
  def lede
    if model['event.longlede']
      model['event.longlede'].as_html_safe(link_resolver())
    end
  end
end
