class StaticPagesController < ApplicationController
    def privacy
        view_to_render = if params[:lang] == 'pl'
            "privacy_pl"
            elsif params[:lang] == 'es'
                "privacy_es"
            else 
                @privacy_text = Faker::Lorem.paragraphs(number: 6)
                "privacy"
            end

        render view_to_render#, layout: 'blogpost'
    end

    def current_time
    end

    def home; end
end
