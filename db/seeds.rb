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
  image: "galactic_mug.jpg"
)

Product.create!(
  supplier_id: supplier1.id,
  name: "Quantum Physics Handbook",
  price: 59.99,
  description: "A must-read guide for interdimensional scientists.",
  image: "quantum_handbook.jpg"
)

Product.create!(
  supplier_id: supplier2.id,
  name: "Neon Synthwave Headphones",
  price: 149.99,
  description: "Immerse yourself in retro-futuristic soundscapes.",
  image: "synthwave_headphones.jpg"
)

Product.create!(
  supplier_id: supplier2.id,
  name: "AI-Powered Pocket Assistant",
  price: 299.99,
  description: "Your personal AI assistant, now in pocket size!",
  image: "pocket_ai.jpg"
)

Image.create!(
  product_id: 1,
  url: "https://i.pinimg.com/236x/14/4a/0b/144a0bffe37f29f414e2dae2bd0141cf.jpg"
)
