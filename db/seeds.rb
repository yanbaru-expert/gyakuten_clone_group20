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