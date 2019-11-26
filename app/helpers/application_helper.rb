module ApplicationHelper
    def date_br
        Date.today.strftime("%d/%m/%Y")
    end

    def env_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif Raisl.env.production?
            "Produção"
        else
            "Testes"
        end
    end
    
end
