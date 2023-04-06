# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: "reo@gmail",
  password: "reoreo"
  )

Genre.create!(
  name: "ケーキ"
  )

Genre.create!(
  name: "プリン"
  )

Genre.create!(
  name: "焼き菓子"
  )

Item.create!(
  genre_id: 1,
  name: "いちごのショートケーキ（ホール）",
  introduction: "とちおとめ",
  price: "2500",
  is_active: true
  )

Item.create!(
  genre_id: 1,
  name: "ザッハトルテ",
  introduction: "美味",
  price: "2900",
  is_active: true
  )

Item.create!(
  genre_id: 1,
  name: "モンブラン",
  introduction: "濃厚",
  price: "500",
  is_active: true
  )

Item.create!(
  genre_id: 1,
  name: "チョコバナナミルフィーユ",
  introduction: "ちょこたっぷり",
  price: 1000,
  is_active: true
  )

Item.create!(
  genre_id: 2,
  name: "かぼちゃのプリン",
  introduction: "濃厚",
  price: 480,
  is_active: true
  )

Item.create!(
  genre_id: 1,
  name: "洋梨のチーズタルト",
  introduction: "洋梨たっぷり",
  price: 1200,
  is_active: true
  )

Item.create!(
  genre_id: 2,
  name: "卵たっぷり濃厚プリン",
  introduction: "濃厚",
  price: 500,
  is_active: true
  )

Item.create!(
  genre_id: 3,
  name: "紅茶のクッキー",
  introduction: "さくさく",
  price: 800,
  is_active: true
  )

Customer.create!(
  last_name: "田中",
  first_name: "太郎",
  last_name_kana: "タナカ",
  first_name_kana: "タロウ",
  email: "taro@gmail",
  password: "tarotaro",
  postal_code: "2250001",
  address: "神奈川県横浜市中区〇〇〇〇〇〇〇1-5-8　マンション205",
  telephone_number: "090-0000-0000",
  is_deleted: false
  )

Customer.create!(
  first_name: "太郎",
  last_name: "佐藤",
  first_name_kana: "タロウ",
  last_name_kana: "サトウ",
  postal_code: "2250002",
  address: "神奈川県",
  telephone_number: "090-0000-0002",
  email: "reotaro@gmail",
  password: "reoreo",
  is_deleted: false
  )

Customer.create!(
  last_name: "高橋",
  first_name: "花子",
  last_name_kana: "タカハシ",
  first_name_kana: "ハナコ",
  postal_code: "1110000",
  address: "東京都新宿区西新宿0-0-0　マンション1501",
  telephone_number: "09000001111",
  email: "hana@gmail",
  is_deleted: false
  )

Customer.create!(
  last_name: "山本",
  first_name: "次郎",
  last_name_kana: "ヤマモト",
  first_name_kana: "ジロウ",
  postal_code: "2222000",
  address: "神奈川県川崎市幸区〇〇0-0-0",
  telephone_number: "08000000000",
  email: "jiro@gmail",
  is_deleted: true
  )

Customer.create!(
  last_name: "高橋",
  first_name: "りん",
  last_name_kana: "タカハシ",
  first_name_kana: "リン",
  postal_code: "2220000",
  address: "神奈川県小田原市○○0-0-0",
  telephone_number: "09055556666",
  email: "rin@gmain",
  is_deleted: false
  )

Customer.create!(
  last_name: "山田",
  first_name: "漣",
  last_name_kana: "ヤマダ",
  first_name_kana: "レン",
  postal_code: "22224444",
  address: "神奈川県川崎市中原区○○0-0-0",
  telephone_number: "08044442222",
  email: "ren@gmail",
  is_deleted: false
  )

Customer.create!(
  last_name: "金川",
  first_name: "健",
  last_name_kana: "カナガワ",
  first_name_kana: "ケン",
  postal_code: "22221111",
  address: "神奈川県川崎市",
  telephone_number: "07055559999",
  email: "ken@gmain",
  is_deleted: false
  )

Customer.create!(
  last_name: "松田",
  first_name: "彩",
  last_name_kana: "マツダ",
  first_name_kana: "アヤ",
  postal_code: "22221111",
  address: "神奈川県横浜市中区〇〇〇〇〇〇〇1-5-108",
  telephone_number: "09066664444",
  email: "aya@gmain",
  is_deleted: false
  )

Customer.create!(
  last_name: "神田",
  first_name: "かな",
  last_name_kana: "カンダ",
  first_name_kana: "カナ",
  postal_code: "22227777",
  address: "神奈川県横浜市中区〇〇〇〇〇〇〇1-5-108",
  telephone_number: "08044446666",
  email: "kana@gmain",
  is_deleted: false
  )

Customer.create!(
  last_name: "田仲",
  first_name: "れい",
  last_name_kana: "タナカ",
  first_name_kana: "レイ",
  postal_code: "22226666",
  address: "神奈川県横浜市中区〇〇〇〇〇〇〇1-5-108",
  telephone_number: "08099991111",
  email: "rei@gmain",
  is_deleted: false
  )

Customer.create!(
  last_name: "田山",
  first_name: "正樹",
  last_name_kana: "タヤマ",
  first_name_kana: "マサキ",
  postal_code: "22226666",
  address: "神奈川県横浜市中区〇〇〇〇〇〇〇1-5-108",
  telephone_number: "09055553333",
  email: "masa@gmain",
  is_deleted: false
  )

Customer.create!(
  last_name: "加藤",
  first_name: "花子",
  last_name_kana: "ヤマダ",
  first_name_kana: "ハナコ",
  postal_code: "2220000",
  address: "東京都新宿区西新宿0-0-0　マンション1501",
  telephone_number: "09099990000",
   email: "mitiko@gmail",
  is_deleted: true
  )

Order.create!(
    customer_id: 1,
    delivery_target_postal_code: "2555555",
    delivery_address: "神奈川県横浜市中区〇〇〇〇〇〇〇1-5-8　マンション205",
    delivery_target_full_name: "田中太郎",
    postage: 800,
    pay_amount: 4400,
    payment_methods: 0,
    status: 0,
  )

Order.create!(
    customer_id: 2,
    delivery_target_postal_code: "1115555",
    delivery_address: "東京都世田谷区〇〇〇〇〇〇1-5-8　マンション205",
    delivery_target_full_name: "佐藤花子",
    postage: 800,
    pay_amount: 3740,
    payment_methods: 1,
    status: 0,
  )

OrderDetail.create!(
    item_id: 1,
    order_id: 1,
    product_sum: 2750,
    amount: 1,
    making_status: 0,
  )

OrderDetail.create!(
    item_id: 3,
    order_id: 1,
    product_sum: 1650,
    amount: 3,
    making_status: 0
  )

OrderDetail.create!(
    item_id: 2,
    order_id: 2,
    product_sum: 3190,
    amount: 1,
    making_status: 0,
  )

OrderDetail.create!(
    item_id: 3,
    order_id: 2,
    product_sum: 550,
    amount: 1,
    making_status: 0,
  )

Address.create!(
  customer_id: 1,
  name: "田中花子",
  postal_code: 2506666,
  address: "東京都渋谷区〇〇0-0"
  )

Address.create!(
  customer_id: 1,
  name: "田中次郎",
  postal_code: 1540000,
  address: "東京都港区〇〇0-0"
  )

Address.create!(
  customer_id: 2,
  name: "佐藤次郎",
  postal_code: 1540000,
  address: "東京都足立区〇〇0-0"
  )

Address.create!(
  customer_id: 2,
  name: "佐藤桜子",
  postal_code: 1310000,
  address: "東京都江戸川区〇〇0-0"
  )