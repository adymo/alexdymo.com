
# Hack to raise liquid errors from jekyll.
# By default it just eats them, see
# https://github.com/mojombo/jekyll/pull/624
class Liquid::Template
    def initialize
        @rethrow_errors = true;
    end
end

# Jekyll was not designed to handle liquid exceptions in posts,
# it expects Post::name function in order to display the exception
class Jekyll::Post
    def name
        @name
    end
end
