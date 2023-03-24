# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: "reo@gmail",
  password: "remomo"
  )

Item.create!(
    name: 'いちごのケーキ',
    introduction: "栃木県とちおとめ",
    price: "2500",
    is_active: true
  )

Genre.create!(
    name: 'ケーキ'
  )


Customer!(
  last_name: "田中",
  first_name: "れお",
  last_name_kana: "タナカ",
  first_name_kana: "レオ",
  email: "reoreo@gmail",
  password: "reomom",
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
  password: "reomomo",
  is_deleted: true
  )
