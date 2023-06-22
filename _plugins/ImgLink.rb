module Jekyll
  class ImgLink < Liquid::Tag

    def initialize(tag_name, filename, tokens)
      super
      @filename = filename.strip
    end

    def render(context)
      html = "<a href=\"/assets/images/zoomzoom/#{@filename}\"><img src=\"/assets/images/zoomzoom/#{@filename}\"></a>"
      template = Liquid::Template.parse(html)
      template.render(context)
    end
  end
end

Liquid::Template.register_tag('img_link', Jekyll::ImgLink)
