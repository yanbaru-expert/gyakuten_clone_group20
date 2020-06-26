EMAIL = 'test@example.com'
PASSWORD = 'password'
ADMIN_EMAIL = 'admin@example.com'
ADMIN_PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end
#AdminUser.create!(email: 'admin@example.com', password: 'password', #password_confirmation: 'password') if Rails.env.development?
AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |adminuser|
  adminuser.password = ADMIN_PASSWORD
  puts '管理者の初期データインポートに成功しました。'
end


require "csv"

CSV.foreach('db/csv_data/aws_text_data.csv', headers: true) do |row|
  AwsText.create(
    title: row['title'],
    content: row['content']
  )
end

CSV.foreach('db/csv_data/edit_movie_data.csv', headers: true) do |row|
  EditMovie.create(
    title: row['title'],
    url: row['url']
  )
end

CSV.foreach('db/csv_data/line_data.csv', headers: true) do |row|
  Line.create(
    genre: row['genre'],
    title: row['title'],
    contents: row['contents']
  )
end

CSV.foreach('db/csv_data/live_cording_data.csv', headers: true) do |row|
  LiveCording.create(
    title: row['title'],
    url: row['url']
  )
end

CSV.foreach('db/csv_data/marketing_movie_data.csv', headers: true) do |row|
  Marketing.create(
    title: row['title'],
    url: row['url']
  )
end

CSV.foreach('db/csv_data/money_movie_data.csv', headers: true) do |row|
  Money.create(
    title: row['title'],
    url: row['url']
  )
end

CSV.foreach('db/csv_data/movie_data.csv', headers: true) do |row|
  Movie.create(
    title: row['title'],
    url: row['url']
  )
end

CSV.foreach('db/csv_data/php_movie_data.csv', headers: true) do |row|
  Php.create(
    title: row['title'],
    url: row['url']
  )
end

CSV.foreach('db/csv_data/question_data.csv', headers: true) do |row|
  Question.create(
    title: row['title'],
    detail: row['detail']
  )
end

CSV.foreach('db/csv_data/talks_movie_data.csv', headers: true) do |row|
  Talk.create(
    title: row['title'],
    url: row['url']
  )
end

CSV.foreach('db/csv_data/text_data.csv', headers: true) do |row|
  Text.create(
    genre: row['genre'],
    title: row['title'],
    content: row['content']
  )
end

CSV.foreach('db/csv_data/writing_deta.csv', headers: true) do |row|
  Writing.create(
    title: row['title'],
    url: row['url']
  )
end