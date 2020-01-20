module ApplicationHelper
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
