
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> dummyOrders = [
  {
    'id': 32053,
    'category': 'Breakfast',
    'title': 'Chicken Thai Biriyani',
    'price': 60,
    'imageUrl':
        'https://images.unsplash.com/photo-1589302168068-964664d93dc0?auto=format&fit=crop&w=500&q=80',
    'status': 'pending',
  },
  {
    'id': 32054,
    'category': 'Lunch',
    'title': 'Beef Burger with Fries',
    'price': 45,
    'imageUrl':
        'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=80',
    'status': 'pending',
  },
  {
    'id': 32055,
    'category': 'Dinner',
    'title': 'Creamy Pasta Carbonara',
    'price': 55,
    'imageUrl':
        'https://images.unsplash.com/photo-1612874742237-6526221588e3?auto=format&fit=crop&w=500&q=80',
    'status': 'pending',
  },
  {
    'id': 32056,
    'category': 'Dessert',
    'title': 'Berry Pancake Special',
    'price': 30,
    'imageUrl':
        'https://images.unsplash.com/photo-1528207776546-365bb710ee93?auto=format&fit=crop&w=500&q=80',
    'status': 'pending',
  },
];

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  late List<Map<String, dynamic>> orders;

  @override
  void initState() {
    super.initState();
    orders = dummyOrders
        .map((order) => Map<String, dynamic>.from(order))
        .toList();
  }

  void updateStatus(int index, String status) {
    setState(() {
      orders[index]['status'] = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Food Orders"),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          orders[index]['imageUrl'],
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 100,
                              height: 100,
                              color: Colors.orange.shade50,
                              child: Icon(
                                Icons.restaurant,
                                size: 40,
                                color: Colors.deepOrange,
                              ),
                            );
                          },
                        ),
                      ),

                      SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              orders[index]['category'],
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              orders[index]['title'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[900],
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              "ID: ${orders[index]['id']}",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[600],
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              "\$${orders[index]['price']}",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Status: ${orders[index]['status']}',
                    style: TextStyle(
                      color: orders[index]['status'] == 'done'
                          ? Colors.green
                          : orders[index]['status'] == 'cancelled'
                              ? Colors.red
                              : Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(height: 8),

                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: orders[index]['status'] == 'pending'
                              ? () => updateStatus(index, 'done')
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          child: Text("Done"),
                        ),
                      ),

                      SizedBox(width: 10),

                      Expanded(
                        child: OutlinedButton(
                          onPressed: orders[index]['status'] == 'pending'
                              ? () => updateStatus(index, 'cancelled')
                              : null,
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.red,
                            side: BorderSide(color: Colors.red),
                          ),
                          child: Text("Cancel"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
