module ApplicationHelper
    def locale(locale)
        I18n.locale == :en ? ("Estados Unidos"):("Português do Brasil")
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
