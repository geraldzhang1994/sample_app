module ApplicationHelper
    #return the full title of a page
    def full_title(page)
        base_title = "RoR Tutorial"
        if page.empty?
            base_title
        else
            "#{base_title} | #{page}"
        end
    end
end
