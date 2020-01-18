namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Excluindo banco de dados")
      spinner.auto_spin
      %x(rails db:drop)
      spinner.success('(Feito!)')

      spinner = TTY::Spinner.new("[:spinner] Criando banco de dados")
      spinner.auto_spin
      %x(rails db:create)
      spinner.success('(Feito!)')

      spinner = TTY::Spinner.new("[:spinner] Criando tabelas")
      spinner.auto_spin
      %x(rails db:migrate)
      spinner.success('(Feito!)')

      spinner = TTY::Spinner.new("[:spinner] Cadastrando informações")
      spinner.auto_spin
      %x(rails db:seed)
      spinner.success('(Feito!)')
    else
      puts "Você não está em ambiente de desenvolvimento"
    end
  end

end
