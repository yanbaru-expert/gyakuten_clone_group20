require "import.rb"

namespace :import_csv do

      desc "aws_text_data.csvをインポートするタスク"

      task aws_texts: :environment do
        path = File.join Rails.root, "db/csv_data/aws_text_data.csv"

        list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")


        puts "インポート処理を開始"
        begin
          AwsText.create!(list)
          puts "インポート完了!!"
        rescue ActiveModel::UnknownAttributeError => invalid
          puts "インポートに失敗：UnknownAttributeError"
        end
      end


      desc "MOVIE_CSVデータをインポートするタスク"

      task movie_data: :environment do

        list = Import.csv_data(path: "db/csv_data/movie_data.csv")


        puts "インポート処理を開始"
        begin
          Movie.create!(list)
          puts "インポート完了!!"
        rescue ActiveModel::UnknownAttributeError => invalid
          puts "インポートに失敗：UnknownAttributeError"
        end
      end


      desc "question_data.csvをインポートするタスク"

      task questions: :environment do

        list = Import.csv_data(path: "db/csv_data/question_data.csv")


        puts "インポート処理を開始"
        begin
          Question.create!(list)
          puts "インポート完了!!"
        rescue ActiveModel::UnknownAttributeError => invalid
          puts "インポートに失敗：UnknownAttributeError"
        end

      end


      desc "php_movie_data.csvをインポートするタスク"

      task php_data: :environment do

        list = Import.csv_data(path: "db/csv_data/php_movie_data.csv")

        puts "インポート処理を開始"
        begin
          Php.create!(list)
          puts "インポート完了"
        rescue ActiveModel::UnknownAttributeError => invalid
          puts "インポートに失敗：UnknownAttributeError"
        end

      end

      desc "money_movie_data.csvをインポートするタスク"

      task money_data: :environment do

        list = Import.csv_data(path: "db/csv_data/money_movie_data.csv")

        puts "インポート処理を開始"
        begin
          Money.create!(list)
          puts "インポート完了"
        rescue ActiveModel::UnknownAttributeError => invalid
          puts "インポートに失敗：UnknownAttributeError"
        end

      end


      desc "talks_movie_data.csvをインポートするタスク"

      task talks_data: :environment do

        list = Import.csv_data(path: "db/csv_data/talks_movie_data.csv")

        puts "インポート処理を開始"
        begin
          Talk.create!(list)
          puts "インポート完了"
        rescue ActiveModel::UnknownAttributeError => invalid
          puts "インポートに失敗：UnknownAttributeError"
        end
        
      end
end
