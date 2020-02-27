require 'telegram_bot'
require 'yaml'

bot = TelegramBot.new(token: ENV['BOT_TOKEN'])
bot.get_updates() do |message|
  # puts message.to_s
  puts message.to_yaml
  message.reply do |reply|
    reply.text = "Hello, #{message.from.first_name}!"
    reply.send_with(bot)
  end
end