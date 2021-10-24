import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_adoption/models/pet_model.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
    required this.petList,
    required this.index,
  }) : super(key: key);

  final List<PetModel> petList;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Image.network(petList[index!].image),
              ),
              Positioned(
                top: 50,
                left: 10,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.deepPurple[800],
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      petList[index!].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      petList[index!].breed,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Chip(
                  label: Text(
                    '${petList[index!].age.toString()} years',
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.purple[300],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              petList[index!].desc,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple[400],
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 100,
                ),
              ),
              onPressed: () => print('Enquire'),
              child: const Text('Enquire'),
            ),
          ),
        ],
      ),
    );
  }
}
