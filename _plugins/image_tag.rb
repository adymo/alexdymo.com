require 'rubygems'
require 'fastimage'

module Jekyll

    class ImageTag < Liquid::Tag

        THUMBNAIL_MAX_WIDTH = 480
        LINE_HEIGHT = 24

        def initialize(tag_name, markup, tokens)
            super
            @caption, @filename = markup.split(",")
            @caption.strip!
            @filename.strip!
        end

        def render(context)
            # calculate thumbnail width and height
            image_path = File.join(File.expand_path(File.dirname(__FILE__)), "..", @filename)
            width, height = FastImage.size(image_path)
            ratio = width.to_f / height

            if width > THUMBNAIL_MAX_WIDTH
                # need thumbnail for the image
                # pick nearest multiple of LINE_HEIGHT as thumbnail height
                # to maintain the text vertical rhytm
                thumbnail_height = (THUMBNAIL_MAX_WIDTH / ratio / LINE_HEIGHT.to_f).floor * LINE_HEIGHT

                # autogenerate thumbnail if it doesn't exist yet
                # we need thumbnails because default
                thumbnail_filename = @filename.gsub(".png", "_thumbnail.png")
                thumbnail_path = File.join(File.expand_path(File.dirname(__FILE__)), "..", thumbnail_filename)
                unless File.exists?(thumbnail_path)
                    # Note: requires convert (from ImageMagick) and pngnq installed
                    `convert -resize x#{thumbnail_height} "#{image_path}" "#{thumbnail_path}"`
                    `pngnq -e ".png" -f "#{thumbnail_path}"`
                end
                thumbnail_width, thumbnail_height = FastImage.size(thumbnail_path)

                <<-EOS
                <div class="figure" style="width: #{thumbnail_width}px;">
                    <a href="#{@filename}"><img src="#{thumbnail_filename}" height="#{thumbnail_height}" width="#{thumbnail_width}" /></a>
                    <div class="figcaption">#{@caption}</div>
                </div>
                EOS
            else
                # no thumbnail required, just display image as is
                # note: image height must already be a multiple of LINE_HEIGHT
                # no automatic conversion is done in this case
                <<-EOS
                <div class="figure" style="width: #{width}px;">
                    <img src="#{@filename}" height="#{height}" width="#{width}" /></a>
                    <div class="figcaption">#{@caption}</div>
                </div>
                EOS
            end
        end
    end
end

Liquid::Template.register_tag('image_tag', Jekyll::ImageTag)


