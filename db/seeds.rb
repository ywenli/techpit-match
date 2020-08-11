p "create Users"
User.create!(
  email: 'user1@example.com',
  password: '12345678',
  name: 'けんと',
  self_introduction: 'けんと',
  sex: 0,
  img_name: open("#{Rails.root}/db/dummy_img/1.jpg")
)
User.create!(
  email: 'user2@example.com',
  password: '12345678',
  name: 'まどか',
  self_introduction: 'まどかです',
  sex: 1,
  img_name: open("#{Rails.root}/db/dummy_img/2.jpg")
)
User.create!(
  email: 'user3@example.com',
  password: '12345678',
  name: 'ひな',
  self_introduction: 'ひなです',
  sex: 1,
  img_name: open("#{Rails.root}/db/dummy_img/3.jpg")
)
User.create!(
  email: 'user4@example.com',
  password: '12345678',
  name: 'ことみ',
  self_introduction: 'ことみです',
  sex: 1,
  img_name: open("#{Rails.root}/db/dummy_img/4.jpg")
)