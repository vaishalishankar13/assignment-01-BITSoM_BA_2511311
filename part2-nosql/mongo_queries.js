// OP1: insertMany() — insert all 3 documents from sample_documents.json
// considering products as collection name

db.products.insertMany([{
"product_id": "ELEC-78291",
"product_name": "Sony Barvia 75 Inches Television",
"product_type":"electronic",
"specifications":{
"warrenty":"7 years",
"material used":["glass", "plastic", "copper"],
"display":"QLED",
"Resolution":"Full HD" 
},
"voltage": "110V-240V",
"price":30000
},
{
"product_id": "CLOTH-10293",
"product_type": "clothing",
"brand": "unibic",
"gender": "women",
"type": "kurti",
"variants": [
      {"size": "S", "color": "pink"},
      {"size": "M", "color": "orange"},
      {"size": "L", "color": "Red"}
  ],
"price":2500,
"material":"semi-cotton"
},
{
"product_id": "GROC-44521",
"product_type":"groceries",
"product_name":"mango pickle",
"ingredients":["raw mangoes", "turmeric powder", "mustard seeds", "red chilli powder", "salt" ],
"expiry_date": "03-12-2028",
"price":60
}
])

// OP2: find() — retrieve all Electronics products with price > 20000
db.products.find({"product_type":"electronic","price":{$gt:20000}})

// OP3: find() — retrieve all Groceries expiring before 2025-01-01
db.products.find({ 
    "product_type": "groceries", 
    "expiry_date": { $lt: "2025-01-01" } 
});

// OP4: updateOne() — add a "discount_percent" field to a specific product
db.products.updateOne({"product_id":"ELEC-78291"},{$set:{"discount_percent":25}});

// OP5: createIndex() — create an index on category field and explain why
// Creating a single field index on 'category' improves the performance of queries
db.products.createIndex({ "product_type": 1 });