p '==================== customer create ===================='
Custamer.create!(
  email: "test@test.com",
  last_name: "長野",
  first_name: "景気",
  furigana_last_name: "ナガノ",
  furigana_first_name: "ケイキ",
  customer_adress: "レイル県レイルス市",
  post_code: "111-1111",
  telephone_number: "000-0000-0001",
  password: "pppppp",
  is_deleted: false
)
Custamer.create!(
  email: "test1@test.com",
  last_name: "長野1",
  first_name: "景気1",
  furigana_last_name: "ナガノ1",
  furigana_first_name: "ケイキ1",
  customer_adress: "レイル県レイルス市1",
  post_code: "111-1111",
  telephone_number: "000-0000-0001",
  password: "pppppp",
  is_deleted: false
)
Custamer.create!(
  email: "test2@test.com",
  last_name: "長野2",
  first_name: "景気2",
  furigana_last_name: "ナガノ2",
  furigana_first_name: "ケイキ2",
  customer_adress: "レイル県レイルス市2",
  post_code: "111-1111",
  telephone_number: "000-0000-0001",
  password: "pppppp",
  is_deleted: false
)

p '==================== admin create ===================='
Admin.create!(email: "admin@gmail.com", password: "pppppp")
