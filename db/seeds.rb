Payment.delete_all
OrderItem.delete_all
Order.delete_all
CampaignProduct.delete_all
Campaign.delete_all
Product.delete_all
User.delete_all

puts "DB clean"

user1 = User.create(email: 'filipo@gmail.com', password: '123456', name: 'Filipo',seller: true, nickname: 'pipo', description: 'Trap music is my life', address: 'Italy')
user2 = User.create(email: 'carles@gmail.com', password: '123456', name: 'Carles',seller: true, nickname: 'carls', description: 'Techno music is my life', address: 'Girona')
user3 = User.create(email: 'max@gmail.com', password: '123456', name: 'Max',seller: false, nickname: 'maxim', description: 'Rock music is my life', address: 'Belgium')
user4 = User.create(email: 'alejandro@gmail.com', password: '123456', name: 'Alejandro',seller: false, nickname: 'alejandrini', description: 'Shit music is my life', address: 'Mexico')

campaign1 = Campaign.create(user: user1, name:'first campaign', duration_days: 15, active: true)
campaign2 = Campaign.create(user: user1, name:'second campaign', duration_days: 20, active: false)
campaign3 = Campaign.create(user: user2, name:'third campaign', duration_days: 10, active: true)
campaign4 = Campaign.create(user: user2, name:'forth campaign', duration_days: 25, active: false)

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
