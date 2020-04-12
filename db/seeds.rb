# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.create([
    { name: '121以上(初心者・コースデビューを目指す)' },
    { name: '100切りゴルファーを目指す' },
    { name: '91-99(ドライバーショット、アプローチを強化したい)'},
    { name: '70代を目指す'},
    { name: 'トップアマ、競技志向レベル'},
    ])

 Tag2.create([
    { name: 'クラブを購入したい' },
    { name: 'スイング、フォームを綺麗にしたい' },
    { name: 'ボールコントロールを改善したい(スライス、右に曲がる)'},
    { name: 'ボールコントロールを改善したい(引っかける、左に曲がる)'},
    { name: 'ボールコントロールを改善したい(上に飛んでしまう)'},
    { name: '飛距離を伸ばしたい'},
    { name: 'パター'},
    { name: 'アプローチ'},
    ])

Tag3.create([
    { name: '~10代' },
    { name: '20代' },
    { name: '30代'},
    { name: '40代'},
    { name: '50代'},
    { name: '60代'},
    { name: '70代~'}
    ])   

Tag4.create([
    { name: '男性' },
    { name: '女性' }
    ])
#ここまで