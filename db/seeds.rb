Payment.delete_all
OrderItem.delete_all
Order.delete_all
CampaignProduct.delete_all
Campaign.delete_all
Product.delete_all
User.delete_all

puts "DB clean"

user1 = User.create(email: 'filipo@gmail.com', password: '123456', name: 'Filipo',seller: true, nickname: 'pipo', description: 'Trap music is my life', address: 'Italy')
photo_user1 = URI.open('https://i.pinimg.com/originals/19/63/da/1963daa666a8030047e2a9f13beb6975.jpg')
user1.photo.attach(io: File.open(photo_user1), filename: 'nes.jpg', content_type: 'image/jpg')
user2 = User.create(email: 'carles@gmail.com', password: '123456', name: 'Carles',seller: true, nickname: 'carls', description: 'Techno music is my life', address: 'Girona')
photo_user2 = URI.open('https://mejorespeliculas.top/wp-content/uploads/2020/06/Dise%C3%B1o-sin-t%C3%ADtulo-2020-06-24T155502.517-min.jpg')
user2.photo.attach(io: File.open(photo_user2), filename: 'nes.jpg', content_type: 'image/jpg')
user3 = User.create(email: 'max@gmail.com', password: '123456', name: 'Max',seller: false, nickname: 'maxim', description: 'Rock music is my life', address: 'Belgium')
photo_user3 = URI.open('https://i.pinimg.com/originals/2c/0c/e8/2c0ce826414c964703e12c1ad8e1bd96.png')
user3.photo.attach(io: File.open(photo_user3), filename: 'nes.png', content_type: 'image/png')
user4 = User.create(email: 'alejandro@gmail.com', password: '123456', name: 'Alejandro',seller: false, nickname: 'alejandrini', description: 'Shit music is my life', address: 'Mexico')
photo_user4 = URI.open('https://i.pinimg.com/564x/be/d0/77/bed077aaca3aaab4b167245fec3c322b.jpg')
user4.photo.attach(io: File.open(photo_user4), filename: 'nes.jpg', content_type: 'image/jpg')

puts "Users created"

campaign1 = Campaign.create(user: user1, name:'first campaign', duration_days: 15, active: true)
campaign2 = Campaign.create(user: user1, name:'second campaign', duration_days: 20, active: false)
campaign3 = Campaign.create(user: user2, name:'third campaign', duration_days: 10, active: true)
campaign4 = Campaign.create(user: user2, name:'forth campaign', duration_days: 25, active: false)

puts "Campaigns created"

product1 = Product.create(user: user1, name:'t-shirt1', price: 25, garment: 't-shirt', color:'white', publish: true)
photo1 = URI.open('https://everpress.imgix.net/img/campaign/original/619cb705730bd7.14423200.png')
product1.photo.attach(io: File.open(photo1), filename: 'nes.png', content_type: 'image/png')

product2 = Product.create(user: user1, name:'t-shirt2', price: 30, garment: 't-shirt', color:'grey', publish: true)
photo2 = URI.open('https://everpress.imgix.net/img/campaign/original/619c4c44e79554.35840533.png')
product2.photo.attach(io: File.open(photo2), filename: 'nes.png', content_type: 'image/png')

product3 = Product.create(user: user1, name:'hoodie1', price: 35, garment: 'hoodie', color:'black', publish: true)
photo3 = URI.open('https://everpress.imgix.net/img/campaign/original/6193f7663c0db8.34585728.png')
product3.photo.attach(io: File.open(photo3), filename: 'nes.png', content_type: 'image/png')

product4 = Product.create(user: user1, name:'hoodie2', price: 40, garment: 'hoodie', color:'grey', publish: true)
photo4 = URI.open('https://everpress.imgix.net/img/campaign/original/6197b4fc1266a3.42972041.png')
product4.photo.attach(io: File.open(photo4), filename: 'nes.png', content_type: 'image/png')

product5 = Product.create(user: user1, name:'long-sleeve1', price: 28, garment: 'long-sleeve', color:'grey', publish: true)
photo5 = URI.open('https://everpress.imgix.net/img/campaign/original/619c3d3bf17461.11520242.png')
product5.photo.attach(io: File.open(photo5), filename: 'nes.png', content_type: 'image/png')

product6 = Product.create(user: user2, name:'t-shirt3', price: 21, garment: 't-shirt', color:'white', publish: true)
photo6 = URI.open('https://everpress.imgix.net/img/campaign/original/619bc3694e6e18.59902968.png')
product6.photo.attach(io: File.open(photo6), filename: 'nes.png', content_type: 'image/png')

product7 = Product.create(user: user2, name:'t-shirt4', price: 19, garment: 't-shirt', color:'grey', publish: true)
photo7 = URI.open('https://everpress.imgix.net/img/campaign/original/619c3d2919b0d0.64795800.png')
product7.photo.attach(io: File.open(photo7), filename: 'nes.png', content_type: 'image/png')

product8 = Product.create(user: user2, name:'hoodie3', price: 32, garment: 'hoodie', color:'pink', publish: true)
photo8 = URI.open('https://everpress.imgix.net/img/campaign/original/619aec88c75638.68713612.png')
product8.photo.attach(io: File.open(photo8), filename: 'nes.png', content_type: 'image/png')

product9 = Product.create(user: user2, name:'hoodie4', price: 38, garment: 'hoodie', color:'grey', publish: true)
photo9 = URI.open('https://everpress.imgix.net/img/campaign/original/619aec75eed0b3.24444860.png')
product9.photo.attach(io: File.open(photo9), filename: 'nes.png', content_type: 'image/png')

product10 = Product.create(user: user2, name:'long-sleeve2', price: 23, garment: 'long-sleeve', color:'grey', publish: true)
photo10 = URI.open('https://everpress.imgix.net/img/campaign/original/61803819ab95c6.87146106.png')
product10.photo.attach(io: File.open(photo10), filename: 'nes.png', content_type: 'image/png')


puts "Products created"


campaignproduct1 = CampaignProduct.create(product: product1, campaign: campaign1)
campaignproduct2 = CampaignProduct.create(product: product2, campaign: campaign1)
campaignproduct3 = CampaignProduct.create(product: product3, campaign: campaign1)
campaignproduct4 = CampaignProduct.create(product: product4, campaign: campaign2)
campaignproduct5 = CampaignProduct.create(product: product5, campaign: campaign2)
campaignproduct6 = CampaignProduct.create(product: product6, campaign: campaign3)
campaignproduct7 = CampaignProduct.create(product: product7, campaign: campaign3)
campaignproduct8 = CampaignProduct.create(product: product8, campaign: campaign4)
campaignproduct9 = CampaignProduct.create(product: product9, campaign: campaign4)
campaignproduct10 = CampaignProduct.create(product: product10, campaign: campaign4)

puts "Campaign Products created"

order1 = Order.create(user: user3)
order2 = Order.create(user: user3)
order3 = Order.create(user: user4)
order4 = Order.create(user: user4)
order5 = Order.create(user: user1)
order6 = Order.create(user: user2)

puts "Orders created"

orderitem1 = OrderItem.create(size: "L", quantity: 5, order: order1, campaign: campaignproduct1.campaign, product: campaignproduct1.product)
orderitem2 = OrderItem.create(size: "S", quantity: 1, order: order1, campaign: campaignproduct2.campaign, product: campaignproduct2.product)
orderitem3 = OrderItem.create(size: "M", quantity: 4, order: order1, campaign: campaignproduct3.campaign, product: campaignproduct3.product)
orderitem4 = OrderItem.create(size: "L", quantity: 3, order: order1, campaign: campaignproduct4.campaign, product: campaignproduct4.product)
orderitem5 = OrderItem.create(size: "S", quantity: 1, order: order2, campaign: campaignproduct5.campaign, product: campaignproduct5.product)
orderitem6 = OrderItem.create(size: "M", quantity: 3, order: order2, campaign: campaignproduct6.campaign, product: campaignproduct6.product)
orderitem7 = OrderItem.create(size: "L", quantity: 2, order: order2, campaign: campaignproduct7.campaign, product: campaignproduct7.product)
orderitem8 = OrderItem.create(size: "S", quantity: 8, order: order2, campaign: campaignproduct8.campaign, product: campaignproduct8.product)
orderitem9 = OrderItem.create(size: "L", quantity: 5, order: order3, campaign: campaignproduct9.campaign, product: campaignproduct9.product)
orderitem10 = OrderItem.create(size: "S", quantity: 1, order: order3, campaign: campaignproduct10.campaign, product: campaignproduct10.product)
orderitem11 = OrderItem.create(size: "M", quantity: 4, order: order3, campaign: campaignproduct3.campaign, product: campaignproduct3.product)
orderitem12 = OrderItem.create(size: "L", quantity: 3, order: order4, campaign: campaignproduct4.campaign, product: campaignproduct4.product)
orderitem13 = OrderItem.create(size: "S", quantity: 1, order: order4, campaign: campaignproduct5.campaign, product: campaignproduct5.product)
orderitem14 = OrderItem.create(size: "M", quantity: 3, order: order4, campaign: campaignproduct9.campaign, product: campaignproduct9.product)
orderitem15 = OrderItem.create(size: "L", quantity: 2, order: order4, campaign: campaignproduct7.campaign, product: campaignproduct7.product)
orderitem16 = OrderItem.create(size: "S", quantity: 8, order: order5, campaign: campaignproduct8.campaign, product: campaignproduct8.product)
orderitem17 = OrderItem.create(size: "L", quantity: 2, order: order5, campaign: campaignproduct7.campaign, product: campaignproduct7.product)
orderitem18 = OrderItem.create(size: "S", quantity: 8, order: order5, campaign: campaignproduct10.campaign, product: campaignproduct10.product)
orderitem19 = OrderItem.create(size: "L", quantity: 5, order: order6, campaign: campaignproduct1.campaign, product: campaignproduct1.product)
orderitem20 = OrderItem.create(size: "S", quantity: 1, order: order6, campaign: campaignproduct2.campaign, product: campaignproduct2.product)
orderitem21 = OrderItem.create(size: "M", quantity: 4, order: order6, campaign: campaignproduct3.campaign, product: campaignproduct3.product)

puts "Order Items created"

payment1 = Payment.create(order: order1)
payment2 = Payment.create(order: order3)
payment3 = Payment.create(order: order5)
