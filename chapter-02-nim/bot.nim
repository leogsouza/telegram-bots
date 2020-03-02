import telebot, asyncdispatch, options

const API_KEY = slurp("secret.key")

proc updateHandler(b: TeleBot, u: Update) {.async.} =
  let
    response = u.message.get
    message = newMessage(response.chat.id, "hello")
  discard await b.send(message)

let bot = newTeleBot(API_KEY)
bot.onUpdate(updateHandler)
bot.poll(300)
  