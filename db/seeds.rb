Payment.delete_all
OrderItem.delete_all
Order.delete_all
CampaignProduct.delete_all
Campaign.delete_all
Product.delete_all
User.delete_all

puts "DB clean"

user1 = User.create(email: 'filipo@gmail.com', password: '123456', name: 'Filipo',seller: true, nickname: 'Pipo', description: 'Trap music is my life', address: 'Italy')
photo_user1 = URI.open('https://c4.wallpaperflare.com/wallpaper/643/641/261/singers-kendrick-lamar-wallpaper-preview.jpg')
user1.photo.attach(io: File.open(photo_user1), filename: 'nes.jpg', content_type: 'image/jpg')
user2 = User.create(email: 'carles@gmail.com', password: '123456', name: 'Carles',seller: true, nickname: 'Carls', description: 'Techno music is my life', address: 'Girona')
photo_user2 = URI.open('https://wallpapercave.com/wp/wp1835627.jpg')
user2.photo.attach(io: File.open(photo_user2), filename: 'nes.jpg', content_type: 'image/jpg')
user3 = User.create(email: 'max@gmail.com', password: '123456', name: 'Max',seller: false, nickname: 'Maxim', description: 'Rock music is my life', address: 'Belgium')
photo_user3 = URI.open('https://i.pinimg.com/originals/2c/0c/e8/2c0ce826414c964703e12c1ad8e1bd96.png')
user3.photo.attach(io: File.open(photo_user3), filename: 'nes.png', content_type: 'image/png')
user4 = User.create(email: 'alejandro@gmail.com', password: '123456', name: 'Alejandro',seller: false, nickname: 'Mlejandrini', description: 'Shit music is my life', address: 'Mexico')
photo_user4 = URI.open('https://i.pinimg.com/564x/be/d0/77/bed077aaca3aaab4b167245fec3c322b.jpg')
user4.photo.attach(io: File.open(photo_user4), filename: 'nes.jpg', content_type: 'image/jpg')
user5 = User.create(email: 'kay@gmail.com', password: '123456', name: 'Lil Wayne', seller: true, nickname: 'lilW', description: 'Trap music is my life', address: 'Italy')
photo_user5 = URI.open('https://sc.cnbcfm.com/applications/cnbc.com/resources/files/2016/03/23/GettyImages-515329124.jpg')
user5.photo.attach(io: File.open(photo_user5), filename: 'nes.jpg', content_type: 'image/jpg')
user6 = User.create(email: 'durk@gmail.com', password: '123456', name: 'Kanye West', seller: true, nickname: 'YE', description: 'Techno music is my life', address: 'Girona')
photo_user6 = URI.open('https://cdn.mwallpapers.com/photos/celebrities/music/kanye-west-wallpaper-hd-android-iphone-desktop-hd-backgrounds-wallpapers-1080p-4khd-wallpapers-desktop-background-android-iphone-1080p-4k-w4nxy.jpg')
user6.photo.attach(io: File.open(photo_user6), filename: 'nes.jpg', content_type: 'image/jpg')
user7 = User.create(email: 'tony@gmail.com', password: '123456', name: 'Gue pequeno',seller: true, nickname: 'Gue', description: 'Trap music is my life', address: 'Italy')
photo_user7 = URI.open('https://www.biografias.gratis/wp-content/uploads/Gue_Pequeno_Tatuaggi.jpg')
user7.photo.attach(io: File.open(photo_user7), filename: 'nes.jpg', content_type: 'image/jpg')
user8 = User.create(email: 'cent@gmail.com', password: '123456', name: 'Drake',seller: true, nickname: 'Champagne papi', description: 'Techno music is my life', address: 'Girona')
photo_user8 = URI.open('https://wallpaperaccess.com/full/3517785.jpg')
user8.photo.attach(io: File.open(photo_user8), filename: 'nes.jpg', content_type: 'image/jpg')
user9 = User.create(email: 'ceciliog@gmail.com', password: '123456', name: 'J-Cole',seller: true, nickname: 'JC', description: 'Trap music is my life', address: 'Italy')
photo_user9 = URI.open('https://wallpapersflix.com/wp-content/uploads/2020/06/J-Cole-Laptop-Wallpaper-1.jpg')
user9.photo.attach(io: File.open(photo_user9), filename: 'nes.jpg', content_type: 'image/jpg')
user10 = User.create(email: 'rels@gmail.com', password: '123456', name: 'Rels B',seller: true, nickname: 'Skinny flak', description: 'Techno music is my life', address: 'Girona')
photo_user10 = URI.open('https://yt3.ggpht.com/ytc/AKedOLROKOPedV_VvjRiE2upVYC1VGzxUNaGApOZegexjA=s900-c-k-c0x00ffffff-no-rj')
user10.photo.attach(io: File.open(photo_user10), filename: 'nes.jpg', content_type: 'image/jpg')


puts "Users created"

campaign1 = Campaign.create(user: user1, name:'Summer Vibe', duration_days: 15, state: "active")
campaign2 = Campaign.create(user: user1, name:'Long-sleeve Drop', duration_days: 20, state: "active")
campaign3 = Campaign.create(user: user2, name:'Classic Tee', duration_days: 10, state: "active")
campaign4 = Campaign.create(user: user2, name:'Winter Vibe', duration_days: 25, state: "active")
campaign5 = Campaign.create(user: user1, name:'New Year Merch', duration_days: 15, state: "inactive")
campaign6 = Campaign.create(user: user1, name:'2022 Tour Merch', duration_days: 20, state: "inactive")
campaign7 = Campaign.create(user: user2, name:'Album Merch Drop', duration_days: 10, state: "inactive")
campaign8 = Campaign.create(user: user2, name:'Artists Favourites Resale', duration_days: 25, state: "inactive")

puts "Campaigns created"

product1 = Product.create(user: user1, name:'White tee', price: 25, garment: 't-shirt', color:'white', publish: true)
photo1 = URI.open('https://everpress.imgix.net/img/campaign/original/619cb705730bd7.14423200.png')
product1.photo.attach(io: File.open(photo1), filename: 'nes.png', content_type: 'image/png')

product2 = Product.create(user: user1, name:'Grey tee', price: 30, garment: 't-shirt', color:'grey', publish: true)
photo2 = URI.open('https://everpress.imgix.net/img/campaign/original/619c4c44e79554.35840533.png')
product2.photo.attach(io: File.open(photo2), filename: 'nes.png', content_type: 'image/png')

product3 = Product.create(user: user1, name:'Black hoodie', price: 35, garment: 'hoodie', color:'black', publish: true)
photo3 = URI.open('https://everpress.imgix.net/img/campaign/original/6193f7663c0db8.34585728.png')
product3.photo.attach(io: File.open(photo3), filename: 'nes.png', content_type: 'image/png')

product4 = Product.create(user: user1, name:'Grey hoodiee', price: 40, garment: 'hoodie', color:'grey', publish: true)
photo4 = URI.open('https://everpress.imgix.net/img/campaign/original/6197b4fc1266a3.42972041.png')
product4.photo.attach(io: File.open(photo4), filename: 'nes.png', content_type: 'image/png')

product5 = Product.create(user: user1, name:'Grey long-sleeve', price: 28, garment: 'long-sleeve', color:'grey', publish: true)
photo5 = URI.open('https://everpress.imgix.net/img/campaign/original/619c3d3bf17461.11520242.png')
product5.photo.attach(io: File.open(photo5), filename: 'nes.png', content_type: 'image/png')

product6 = Product.create(user: user2, name:'White tee', price: 21, garment: 't-shirt', color:'white', publish: true)
photo6 = URI.open('https://everpress.imgix.net/img/campaign/original/619bc3694e6e18.59902968.png')
product6.photo.attach(io: File.open(photo6), filename: 'nes.png', content_type: 'image/png')

product7 = Product.create(user: user2, name:'Grey tee', price: 19, garment: 't-shirt', color:'grey', publish: true)
photo7 = URI.open('https://everpress.imgix.net/img/campaign/original/619c3d2919b0d0.64795800.png')
product7.photo.attach(io: File.open(photo7), filename: 'nes.png', content_type: 'image/png')

product8 = Product.create(user: user2, name:'Pink hoodie', price: 32, garment: 'hoodie', color:'pink', publish: true)
photo8 = URI.open('https://everpress.imgix.net/img/campaign/original/619aec88c75638.68713612.png')
product8.photo.attach(io: File.open(photo8), filename: 'nes.png', content_type: 'image/png')

product9 = Product.create(user: user2, name:'Grey hoodiee', price: 38, garment: 'hoodie', color:'grey', publish: true)
photo9 = URI.open('https://everpress.imgix.net/img/campaign/original/619aec75eed0b3.24444860.png')
product9.photo.attach(io: File.open(photo9), filename: 'nes.png', content_type: 'image/png')

product10 = Product.create(user: user2, name:'Grey long-sleeve', price: 23, garment: 'long-sleeve', color:'grey', publish: true)
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
campaignproduct11 = CampaignProduct.create(product: product1, campaign: campaign5)
campaignproduct12 = CampaignProduct.create(product: product2, campaign: campaign5)
campaignproduct13 = CampaignProduct.create(product: product3, campaign: campaign5)
campaignproduct14 = CampaignProduct.create(product: product4, campaign: campaign6)
campaignproduct15 = CampaignProduct.create(product: product5, campaign: campaign6)
campaignproduct16 = CampaignProduct.create(product: product6, campaign: campaign7)
campaignproduct17 = CampaignProduct.create(product: product7, campaign: campaign7)
campaignproduct18 = CampaignProduct.create(product: product8, campaign: campaign8)
campaignproduct19 = CampaignProduct.create(product: product9, campaign: campaign8)
campaignproduct20 = CampaignProduct.create(product: product10, campaign: campaign8)

puts "Campaign Products created"

order1 = Order.create(user: user3, status: "paid", total_price: 1500.34)
order2 = Order.create(user: user3, status: "paid", total_price: 502.25)
order3 = Order.create(user: user3, status: "pending")
order4 = Order.create(user: user4, status: "paid", total_price: 690.99)
order5 = Order.create(user: user4, status: "paid", total_price: 230.23)
order6 = Order.create(user: user4, status: "pending")
order7 = Order.create(user: user2, status: "paid", total_price: 340.12)
order8 = Order.create(user: user2, status: "pending")
order9 = Order.create(user: user1, status: "paid", total_price: 590.34)
order10 = Order.create(user: user1, status: "pending")

puts "Orders created"

orderitem1 = OrderItem.create(size: "L", quantity: 5, order: order1, status: "paid", campaign: campaignproduct1.campaign, product: campaignproduct1.product, value: 250.45)
orderitem2 = OrderItem.create(size: "S", quantity: 1, order: order1, status: "paid", campaign: campaignproduct2.campaign, product: campaignproduct2.product, value: 50.34)
orderitem3 = OrderItem.create(size: "M", quantity: 4, order: order1, status: "paid", campaign: campaignproduct3.campaign, product: campaignproduct3.product, value: 244.3)
orderitem4 = OrderItem.create(size: "L", quantity: 3, order: order1, status: "paid", campaign: campaignproduct4.campaign, product: campaignproduct4.product, value: 130)
orderitem5 = OrderItem.create(size: "S", quantity: 1, order: order2, status: "paid", campaign: campaignproduct5.campaign, product: campaignproduct5.product, value: 246.45)
orderitem6 = OrderItem.create(size: "M", quantity: 3, order: order2, status: "paid", campaign: campaignproduct6.campaign, product: campaignproduct6.product, value: 32.45)
orderitem7 = OrderItem.create(size: "L", quantity: 2, order: order2, status: "paid", campaign: campaignproduct7.campaign, product: campaignproduct7.product, value: 235.12)
orderitem8 = OrderItem.create(size: "S", quantity: 8, order: order2, status: "paid", campaign: campaignproduct8.campaign, product: campaignproduct8.product, value: 135.34)
orderitem9 = OrderItem.create(size: "L", quantity: 5, order: order3, campaign: campaignproduct9.campaign, product: campaignproduct9.product, value: 112.32)
orderitem10 = OrderItem.create(size: "S", quantity: 1, order: order3, campaign: campaignproduct10.campaign, product: campaignproduct10.product, value: 110.10)
orderitem11 = OrderItem.create(size: "M", quantity: 4, order: order3, campaign: campaignproduct3.campaign, product: campaignproduct3.product, value: 45.78)
orderitem12 = OrderItem.create(size: "L", quantity: 3, order: order4, status: "paid", campaign: campaignproduct4.campaign, product: campaignproduct4.product, value: 120)
orderitem13 = OrderItem.create(size: "S", quantity: 1, order: order4, status: "paid", campaign: campaignproduct5.campaign, product: campaignproduct5.product, value: 264)
orderitem14 = OrderItem.create(size: "M", quantity: 3, order: order4, status: "paid", campaign: campaignproduct9.campaign, product: campaignproduct9.product, value: 223.24)
orderitem15 = OrderItem.create(size: "L", quantity: 2, order: order4, status: "paid", campaign: campaignproduct7.campaign, product: campaignproduct7.product, value: 212.2)
orderitem16 = OrderItem.create(size: "S", quantity: 8, order: order5, status: "paid", campaign: campaignproduct8.campaign, product: campaignproduct8.product, value: 193.99)
orderitem17 = OrderItem.create(size: "L", quantity: 2, order: order5, status: "paid", campaign: campaignproduct7.campaign, product: campaignproduct7.product, value: 176.36)
orderitem18 = OrderItem.create(size: "S", quantity: 8, order: order5, status: "paid", campaign: campaignproduct10.campaign, product: campaignproduct10.product, value: 25)
orderitem19 = OrderItem.create(size: "L", quantity: 5, order: order6, campaign: campaignproduct1.campaign, product: campaignproduct1.product, value: 223.56)
orderitem20 = OrderItem.create(size: "S", quantity: 1, order: order6, campaign: campaignproduct2.campaign, product: campaignproduct2.product, value: 345.78)
orderitem21 = OrderItem.create(size: "M", quantity: 4, order: order6, campaign: campaignproduct3.campaign, product: campaignproduct3.product, value: 233.56)
orderitem22 = OrderItem.create(size: "L", quantity: 5, order: order7, status: "paid", campaign: campaignproduct9.campaign, product: campaignproduct9.product, value: 112.32)
orderitem23 = OrderItem.create(size: "S", quantity: 1, order: order7, status: "paid", campaign: campaignproduct10.campaign, product: campaignproduct10.product, value: 110.10)
orderitem24 = OrderItem.create(size: "M", quantity: 4, order: order7, status: "paid", campaign: campaignproduct3.campaign, product: campaignproduct3.product, value: 45.78)
orderitem25 = OrderItem.create(size: "L", quantity: 3, order: order8, campaign: campaignproduct4.campaign, product: campaignproduct4.product, value: 120)
orderitem26 = OrderItem.create(size: "S", quantity: 1, order: order8, campaign: campaignproduct5.campaign, product: campaignproduct5.product, value: 264)
orderitem27 = OrderItem.create(size: "M", quantity: 3, order: order8, campaign: campaignproduct9.campaign, product: campaignproduct9.product, value: 223.24)
orderitem28 = OrderItem.create(size: "L", quantity: 2, order: order8, campaign: campaignproduct7.campaign, product: campaignproduct7.product, value: 212.2)
orderitem29 = OrderItem.create(size: "S", quantity: 8, order: order9, status: "paid", campaign: campaignproduct8.campaign, product: campaignproduct8.product, value: 193.99)
orderitem30 = OrderItem.create(size: "L", quantity: 2, order: order9, status: "paid", campaign: campaignproduct7.campaign, product: campaignproduct7.product, value: 176.36)
orderitem31 = OrderItem.create(size: "S", quantity: 8, order: order9, status: "paid", campaign: campaignproduct10.campaign, product: campaignproduct10.product, value: 25)
orderitem32 = OrderItem.create(size: "L", quantity: 5, order: order10, campaign: campaignproduct1.campaign, product: campaignproduct1.product, value: 223.56)
orderitem33 = OrderItem.create(size: "S", quantity: 1, order: order10, campaign: campaignproduct2.campaign, product: campaignproduct2.product, value: 345.78)
orderitem34 = OrderItem.create(size: "M", quantity: 4, order: order10, campaign: campaignproduct3.campaign, product: campaignproduct3.product, value: 233.56)

puts "Order Items created"

payment1 = Payment.create(order: order1)
payment2 = Payment.create(order: order2)
payment3 = Payment.create(order: order4)
payment4 = Payment.create(order: order5)
payment5 = Payment.create(order: order7)
payment6 = Payment.create(order: order9)
