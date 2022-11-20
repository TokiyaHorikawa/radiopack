# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  [
    { id: 1, name: '平清盛' },
    { id: 2, name: '源頼朝' },
    { id: 3, name: '木曽義仲' },
    { id: 4, name: '後鳥羽上皇' },
  ]
)

Channel.create!(
  [
    {
      id: 1,
      title: "コテンラジオ",
      url: 'https://open.spotify.com/show/3qiAapMhh8UgWVfDWTSq2f?si=d78eed58780149c2',
      description: '歴史を愛し、歴史をしりすぎて…'
    }
  ]
)

Content.create!(
  [
    {
      id: 1,
      title: '#287 鎌倉幕府の挑戦！ラスボス 後鳥羽上皇との仁義なきドッカンバトル「承久の乱」【COTEN RADIO】',
      url: 'https://open.spotify.com/episode/1VPLXcfEGisxZCk8BB3zqU?si=f42f31838b51401d',
      channel_id: 1
    },
    {
      id: 2,
      title: '#283 嗚呼、諸行無常。壇ノ浦の戦い 〜栄華を誇った平家の滅亡と幼き安徳天皇の壮絶な今際〜【COTEN RADIO】',
      url: 'https://open.spotify.com/episode/5Nvq8b0pxQ0iJ6oh7CnySt?si=e8bbe55a0fa84f80',
      channel_id: 1
    }
  ]
)

Post.create!(
  [
    {
      id: 1,
      title: '義経の○○はホゲホゲである！',
      description: '',
      user_id: 1,
      content_id: 1,
    },
    {
      id: 2,
      title: '平清盛はハゲチョビン！',
      description: '詳細はこんな感じでござる！',
      user_id: 2,
      content_id: 1,
    },
    {
      id: 3,
      title: '諸行無常の響あり',
      description: '詳細はこんな感じでござる！',
      user_id: 3,
      content_id: 2,
    }
  ]
)
