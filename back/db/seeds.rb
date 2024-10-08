# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Post.create!(
  [
    { title: "秋の始まり", body: "秋の涼しい風が心地よい季節が始まりました。木々の葉が色づき、秋の収穫が待ち遠しいです。この時期には、散歩や読書に最適な時間が増え、心が落ち着きます。" },
    { title: "テクノロジーの最新トレンド", body: "テクノロジーの世界では、AIと機械学習の進化が止まりません。これらの技術は、仕事から日常生活まで、私たちの生活を根本的に変えています。最新のトレンドを追いかけることは、これからの未来を形作る上で欠かせません。" },
    { title: "健康的な生活のための簡単なヒント", body: "健康的な生活を送ることは、多忙な日々の中でも可能です。バランスの取れた食事、定期的な運動、十分な睡眠が鍵となります。小さな変更から始めて、徐々にライフスタイルに組み込んでいきましょう。" },
  ]
)
