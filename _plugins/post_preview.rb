
# Filter to generate post preview. It returns:
# - content before <!--more--> if that syntax is used (wordpress-alike approach)
# - complete post otherwise
# TODO: return first 100 words of a post for preview without <!--more--> tag
module PostPreview

    def post_preview(input)
        if input.include? "<!--more-->"
            input.split("<!--more-->").first
        else
            input
        end
    end

end

Liquid::Template.register_filter(PostPreview)
