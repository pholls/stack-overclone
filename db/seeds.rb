# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

test_asker = User.create(
  name: 'example asker',
  email: 'example@example.com',
  password: ENV['TEST_PASSWORD']
)

lorem = "# Lorem ipsum\n"\
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "\
  "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n"\
  "## Tincidunt eget nullam non nisi.\n"\
  "Eu tincidunt tortor aliquam nulla facilisi cras fermentum odio. "\
  "Quis blandit turpis cursus in hac habitasse. Sit amet massa vitae tortor condimentum lacinia quis. Lacus suspendisse faucibus interdum posuere. Sed euismod nisi porta lorem mollis aliquam ut porttitor. Elit at imperdiet dui accumsan sit amet nulla. Adipiscing enim eu turpis egestas pretium aenean. Neque sodales ut etiam sit amet nisl. Eget gravida cum sociis natoque penatibus et magnis. Quis auctor elit sed vulputate mi sit. Vitae purus faucibus ornare suspendisse. "\
  "Convallis aenean et tortor at risus viverra adipiscing at in."\
  "## Consectetur a erat nam at lectus urna duis convallis.\n"\
  "Quisque non tellus orci ac auctor. "\
  "Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. "\
  "Sagittis id consectetur purus ut faucibus pulvinar elementum. "\
  "A iaculis at erat pellentesque adipiscing commodo. "\
  "Diam sit amet nisl suscipit. "\
  "Volutpat est velit egestas dui. "\
  "Morbi tempus iaculis urna id volutpat. "\
  "Elit at imperdiet dui accumsan sit amet. "\
  "Etiam dignissim diam quis enim lobortis scelerisque fermentum dui faucibus. "\
  "Purus in massa tempor nec feugiat nisl. "\
  "Placerat vestibulum lectus mauris ultrices.\n"\
  "## Purus semper eget duis at.\n"\
  "### Auctor elit sed vulputate mi.\n"\
  "Platea dictumst quisque sagittis purus sit amet. "\
  "Consequat ac felis donec et. "\
  "Pretium lectus quam id leo in vitae turpis. "\
  "Enim praesent elementum facilisis leo vel fringilla est ullamcorper. "\
  "Velit laoreet id donec ultrices tincidunt arcu. "\
  "Odio eu feugiat pretium nibh ipsum consequat nisl. "\
  "Duis ultricies lacus sed turpis tincidunt id aliquet. "\
  "Volutpat est velit egestas dui id ornare. "\
  "Fringilla phasellus faucibus scelerisque eleifend donec pretium. "\
  "Vel fringilla est ullamcorper eget nulla.\n"\
  "# Magna ac placerat vestibulum lectus mauris ultrices.\n"\
  "Tellus cras adipiscing enim eu turpis. "\
  "In massa tempor nec feugiat nisl pretium fusce id. "\
  "Amet tellus cras adipiscing enim eu turpis egestas. "\
  "Diam donec adipiscing tristique risus. "\
  "Vitae suscipit tellus mauris a diam maecenas sed enim ut. "\
  "Lacus vestibulum sed arcu non odio. "\
  "Nulla aliquet porttitor lacus luctus accumsan. "\
  "Feugiat in fermentum posuere urna nec tincidunt. "\
  "Lectus quam id leo in. "\
  "Feugiat in fermentum posuere urna. "\
  "Sit amet venenatis urna cursus eget. "\
  "Ac orci phasellus egestas tellus. "\
  "Dapibus ultrices in iaculis nunc sed augue. "\
  "Pharetra vel turpis nunc eget lorem dolor sed viverra ipsum. "\
  "Dictum fusce ut placerat orci nulla pellentesque dignissim enim. "\
  "Dictumst quisque sagittis purus sit amet volutpat consequat mauris nunc.\n"\
  "# Ridiculus mus mauris vitae ultricies.\n"\
  "## Risus nec feugiat in fermentum posuere urna nec tincidunt.\n"\
  "Aliquet nibh praesent tristique magna sit amet. "\
  "Diam quis enim lobortis scelerisque fermentum dui. "\
  "Et leo duis ut diam quam nulla. "\
  "Vitae suscipit tellus mauris a diam. "\
  "Bibendum at varius vel pharetra vel. "\
  "Mattis pellentesque id nibh tortor id aliquet lectus proin. "\
  "Sed tempus urna et pharetra pharetra massa massa. "\
  "Cursus in hac habitasse platea dictumst quisque sagittis. "\
  "Nibh sed pulvinar proin gravida hendrerit. "\
  "Diam sit amet nisl suscipit adipiscing bibendum est ultricies integer. "\
  "Semper quis lectus nulla at volutpat diam ut venenatis. "\
  "Condimentum mattis pellentesque id nibh tortor."

question = Question.create(
  title: "How do I show off my sweet app?",
  body: lorem,
  user: test_asker
)

unanswered_question = Question.create(
  title: "Unanswered Question?",
  body: lorem,
  user: test_asker
)

unaccepted_question = Question.create(
  title: "Unaccepted Question?",
  body: lorem,
  user: test_asker
)

test_answerer_1 = User.create(
  name: 'answerer 1',
  email: 'answerer_1@example.com',
  password: ENV['TEST_PASSWORD']
)

test_answerer_2 = User.create(
  name: 'answerer 2',
  email: 'answerer_2@example.com',
  password: ENV['TEST_PASSWORD']
)

test_answerer_3 = User.create(
  name: 'answerer 3',
  email: 'answerer_3@example.com',
  password: ENV['TEST_PASSWORD']
)

test_answerer_4 = User.create(
  name: 'answerer 4',
  email: 'answerer_4@example.com',
  password: ENV['TEST_PASSWORD']
)

answer_1 = Answer.create(
  user: test_answerer_1,
  body: "```\r\ncode block\r\n```",
  question: question,
  accepted: false
)

answer_2 = Answer.create(
  user: test_answerer_2,
  body: "|table|header|\r\n|-|-|\r\n|table|data|\r\n|more table|data|",
  question: question,
  accepted: false
)

answer_3 = Answer.create(
  user: test_answerer_3,
  body: 'a simple line',
  question: question,
  accepted: true
)

answer_4 = Answer.create(
  user: test_answerer_4,
  body: lorem.first(200),
  question: question,
  accepted: false
)

answer_1 = Answer.create(
  user: test_answerer_1,
  body: "```\r\ncode block\r\n```",
  question: unaccepted_question,
  accepted: false
)

answer_2 = Answer.create(
  user: test_answerer_2,
  body: "|table|header|\r\n|-|-|\r\n|table|data|\r\n|more table|data|",
  question: unaccepted_question,
  accepted: false
)

answer_3 = Answer.create(
  user: test_answerer_3,
  body: 'a simple line',
  question: unaccepted_question,
  accepted: false
)

answer_4 = Answer.create(
  user: test_answerer_4,
  body: lorem.first(200),
  question: unaccepted_question,
  accepted: false
)


