class KBot
    HOLA = {'es' => 'Hola', 'en' => 'Hello', }
    PUEDO_AYUDAR = {'es' => 'Cómo te ayudo?', 'en' => 'Can I help you?', }

    def initialize(lang)
      @lang = lang
    end

    def saludar(nombre)
        hora = Time.now.hour
        case hora
        when (0..12) then
            momento = "Buen día"
        when (13..18) then
            momento = "Buenas tardes"
        end
        puts "#{HOLA[@lang]}, #{momento} #{nombre}!"
        puts PUEDO_AYUDAR[@lang]

    end
end

kbot= KBot.new ARGV[1]
kbot.saludar ARGV[0]