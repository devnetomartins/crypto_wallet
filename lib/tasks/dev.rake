namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando banco de dados") { %x(rails db:drop) }
      show_spinner("Criando banco de dados") { %x(rails db:create) }
      show_spinner("Criando tabelas") { %x(rails db:migrate) }
      show_spinner("Cadastrando informações") { %x(rails db:seed) }
    else
      puts "Você não está em ambiente de desenvolvimento"
    end
  end

  private

    def show_spinner(msg)
      spinner = TTY::Spinner.new("[:spinner] #{msg}")
      spinner.auto_spin
      yield
      spinner.success('(Feito!)')
    end

end
