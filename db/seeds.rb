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

Genre.create!(
  name: "キャンディ"
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
  is_deleted: true
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