# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.create([
    { name: '気軽にエンジョイしたい方' },
    { name: '100切りを目指す方' },
    { name: '競技志向の方'},
    { name: '接待でゴルフをする方'},
    ])

 Tag2.create([
    { name: '道具' },
    { name: '練習法' },
    { name: 'ボールの軌道(スライス、右に曲がる)'},
    { name: 'ボールの軌道(引っかける、左に曲がる)'},
    { name: 'ボールの軌道(飛距離が出ない)'},
    { name: 'ボールの軌道(高く飛びすぎる)'}
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