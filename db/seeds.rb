supplier1 = Supplier.create!(
  name: "Nebula Imports",
  email: "support@nebulaimports.com",
  phone_number: "555-4321")
supplier2 = Supplier.create!(name: "CyberRelics",
  email: "contact@cyberrelics.com",
  phone_number: "555-8765")

Product.create!(
  supplier_id: supplier1.id,
  name: "Galactic Coffee Mug",
  price: 19.99,
  description: "Enjoy your morning coffee like a true space traveler.",
  image: "https://cdn.thisiswhyimbroke.com/thumb/galaxy-coffee-mugs_400x333.jpg"
)

Product.create!(
  supplier_id: supplier1.id,
  name: "Quantum Physics Handbook",
  price: 59.99,
  description: "A must-read guide for interdimensional scientists.",
  image: "https://caltechsites-prod.s3.amazonaws.com/scienceexchange/images/Quantum_Physics-HeaderImage-F.2e16d0ba.fill-933x525-c100.jpg"
)

Product.create!(
  supplier_id: supplier2.id,
  name: "Neon Synthwave Headphones",
  price: 149.99,
  description: "Immerse yourself in retro-futuristic soundscapes.",
  image: "https://images.stockcake.com/public/b/d/e/bde9ffd3-6b54-4add-860d-116dcfe1efa6_large/neon-floating-headphones-stockcake.jpg"
)

Product.create!(
  supplier_id: supplier2.id,
  name: "AI-Powered Pocket Assistant",
  price: 299.99,
  description: "Your personal AI assistant, now in pocket size!",
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzVWl2JWTm3fQGujXT-2PRIBwM_eAo_J8woA&s"
)



Image.create!(
  product_id: 1,
  url: "https://cdn.thisiswhyimbroke.com/thumb/galaxy-coffee-mugs_400x333.jpg"
)
Image.create!(
  product_id: 1,
  url: "https://i.etsystatic.com/13970879/r/il/cc2d16/5147953874/il_570xN.5147953874_gmmd.jpg"
)

Image.create!(
  product_id: 2,
  url: "https://caltechsites-prod.s3.amazonaws.com/scienceexchange/images/Quantum_Physics-HeaderImage-F.2e16d0ba.fill-933x525-c100.jpg"
)
Image.create!(
  product_id: 2,
  url: "https://media.istockphoto.com/id/508139163/photo/atom.jpg?s=612x612&w=0&k=20&c=8rhAb5d43TUIiJl65LKlb5Y1p3KhP4fvihJ6I5zgyM8="
)

Image.create!(
  product_id: 3,
  url: "https://images.stockcake.com/public/b/d/e/bde9ffd3-6b54-4add-860d-116dcfe1efa6_large/neon-floating-headphones-stockcake.jpg"
)
Image.create!(
  product_id: 3,
  url: "https://images.stockcake.com/public/8/8/3/883d046a-634b-4a51-91dd-a8cdf22a3c0b_large/vibrant-neon-headphones-stockcake.jpg"
)

Image.create!(
  product_id: 4,
  url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzVWl2JWTm3fQGujXT-2PRIBwM_eAo_J8woA&s"
)
Image.create!(
  product_id: 4,
  url: "https://assets.newatlas.com/dims4/default/42e9614/2147483647/strip/true/crop/1597x993+0+0/resize/1597x993!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2F52%2F27%2F69df7e8c4e0db7f2ef949be4bc0d%2F03.jpg"
)

futuristic = Category.create!(name: "Futuristic Gadgets")
cosmic = Category.create!(name: "Cosmic Lifestyle")


CategoryProduct.create!(category_id: futuristic.id, product_id: 2) # Quantum Physics Handbook
CategoryProduct.create!(category_id: futuristic.id, product_id: 4) # AI-Powered Pocket Assistant
CategoryProduct.create!(category_id: futuristic.id, product_id: 3) # Neon Synthwave Headphones

CategoryProduct.create!(category_id: cosmic.id, product_id: 1)     # Galactic Coffee Mug
CategoryProduct.create!(category_id: cosmic.id, product_id: 3)     # Neon Synthwave Headphones
