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
    name: "いちごのショートケーキ（ホール）",
    introduction: "とちおとめ",
    price: "2500",
    is_active: true
  )

Item.create!(
    name: "ザッハトルテ",
    introduction: "美味",
    price: "2900",
    is_active: true
  )

Item.create!(
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
  address: "神奈川県",
  telephone_number: "090-0000-0000",
  is_deleted: true
  )

Customer.create!(
  first_name: "佐藤",
  last_name: "太郎",
  first_name_kana: "サトウ",
  last_name_kana: "タロウ",
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
    delivery_address: "神奈川県",
    delivery_target_full_name: "田中太郎",
    postage: 800,
    pay_amount: 5200,
    payment_methods: 0,
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
