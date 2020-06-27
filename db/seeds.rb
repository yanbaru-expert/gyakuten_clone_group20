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

system("rake import_csv:aws_texts")
system("rake import_csv:edit_movie_data")
system("rake import_csv:line_data")
system("rake import_csv:live_cording_data")
system("rake import_csv:marketings_data")
system("rake import_csv:money_data")
system("rake import_csv:movie_data")
system("rake import_csv:php_data")
system("rake import_csv:questions")
system("rake import_csv:talks_data")
system("rake import_csv:text_data")
system("rake import_csv:writing_data")