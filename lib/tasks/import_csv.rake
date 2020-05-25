require "import.rb"

namespace :import_csv do
    require 'csv'
      desc "AWS_CSVデータをインポートするタスク"
    
      task aws_texts: :environment do
        path = File.join Rails.root, "db/csv_data/aws_text_data.csv"
        list = []
        CSV.foreach(path, headers: true) do |row|
          list  =
            Import.csv_data(path: "db/csv_data/sample.csv")
          
        end
        puts "インポート処理を開始"
        begin
          AwsText.create!(list)
          puts "インポート完了!!"
        rescue ActiveModel::UnknownAttributeError => invalid
          puts "インポートに失敗：UnknownAttributeError"
        end
      end
    
end