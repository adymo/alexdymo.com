module Jekyll

    module NbspFilter

        def nbsp(input)
            input.gsub("Y Combinator", "Y&nbsp;Combinator")
        end

    end
end

Liquid::Template.register_filter(Jekyll::NbspFilter)
