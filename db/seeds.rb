# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
    email: 'test@test.test',
    password: 'password'
)

EndUser.create!(
    last_name: '龍之介',
    first_name: '梶谷',
    last_name_kana: 'リュウノスケ',
    first_name_kana: 'カジタニ',
    postcode: '123456',
    address: '大阪府大阪市中央区難波',
    phone_number: '00000000000',
    email: 'test@test.test',
    password: 'password'
)

Genre.create!(
    [
        {
            name: 'ケーキ'
        },
        {
            name: 'プリン'
        },
        {
            name: '焼き菓子'
        },
        {
            name: 'キャンディ'
        }
    ]
)

Item.create!(
    [
        {
            name: 'ショートケーキ',
            description: "おいしいよーーー",
            genre_id: '1',
            tax: '1500',
            status: '販売中'
        },
        {
            name: '焼きプリン',
            description: "おいしいよーーー",
            genre_id: '2',
            tax: '1500',
            status: '販売中'
        },
        {
            name: '焼き菓子',
            description: "おいしいよーーー",
            genre_id: '3',
            tax: '1500',
            status: '販売中'
        },
        {
            name: 'りんご飴',
            description: "おいしいよーーー",
            genre_id: '4',
            tax: '1500',
            status: '販売中'
        }
    ]
)