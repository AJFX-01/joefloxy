import 'package:flutter/material.dart';
import '../constant_utils.dart';
import 'view_product.dart';

class ProductCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String manufacturer;
  final double price;
  final double rating;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.manufacturer,
    required this.price,
    required this.rating,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  double imageHeight = PlatformType.isAndriod ? 100 : 120;
  double imageWidth = PlatformType.isIOS ? 120 : 100;

  double favoriteIconWidth = PlatformType.isIOS ? 95 : 80;

  double bottom = PlatformType.isIOS ? 60 : 20;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ViewProductScreen(),
        ),
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.fromLTRB(8, 80, 8, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 90),
                // Product title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 70,
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: AppColor.secondaryColor,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 13,
                        ),
                        Text(
                          "(${widget.rating})",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                // Manufacturer and rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      (widget.manufacturer.toUpperCase()),
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${widget.price}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: AppColor.secondaryColor),
                    ),
                    CircleAvatar(
                      backgroundColor: AppColor.secondaryColor,
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        color: AppColor.whiteColor,
                        size: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: bottom,
            left: 15,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(219, 249, 246, 235),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: favoriteIconWidth,
                      ),
                      GestureDetector(
                        onTap: () => toggleFavorite(),
                        child: CircleAvatar(
                          backgroundColor:
                              isFavorite ? Colors.purple : Colors.blueGrey[200],
                          radius: 10,
                          child: Icon(
                            Icons.favorite,
                            color: AppColor.whiteColor,
                            size: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.imageUrl,
                      height: imageHeight,
                      width: imageWidth,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }
}
