import 'package:flutter/material.dart';

class ExperienceComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.blueGrey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Professional Experience',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            _buildExperienceItem(
              'Car Retailing',
              '12/2021 - 04/2022',
              'The Car Retailing project simplifies the car buying process for customers and dealerships. It offers a user-friendly platform for browsing vehicles, managing inventory, and facilitating seamless communication between buyers and sellers.',
              'Successfully simplified the car buying process for customers and dealerships.',
            ),
            SizedBox(height: 20),
            _buildExperienceItem(
              'Airfare',
              '06/2022 - 10/2022',
              'The AirFare project is a user-friendly platform for travelers to book flights easily. It offers real-time updates on flight availability and pricing, secure online payments, and instant booking confirmations. For airlines, it provides backend tools to manage flight schedules and reservations efficiently, enhancing the overall booking experience for both users and airlines.',
              'Improved the booking experience for travelers and airlines.',
            ),
            SizedBox(height: 20),
            _buildExperienceItem(
              'E-commerce website',
              '11/2022 - 04/2023',
              'The E-commerce website is a versatile online platform for businesses to showcase and sell their products. Customers can browse a wide range of items, make secure purchases, while businesses benefit from streamlined inventory management and order processing.',
              'Enhanced online sales and customer experience for businesses.',
            ),
            SizedBox(height: 20),
            _buildExperienceItem(
              'Cricket 11circle',
              '09/2023 - 2024',
              'Cricket 11circle is a fantasy sports platform where users can create virtual teams composed of real players from various sports leagues and compete against each other based on the players\' actual performances in real-life matches. Users can strategize, join contests, and win prizes based on the performance of their chosen players. It offers an engaging and interactive experience for sports enthusiasts to showcase their knowledge and skills in their favorite sports.',
              'Provided an engaging platform for sports enthusiasts to showcase their skills.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceItem(String projectName, String duration, String description, String outcome) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projectName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    duration,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 10),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
