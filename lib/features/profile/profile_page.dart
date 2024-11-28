import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              profileHeader(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Your Activities",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.bookmark_added),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add a comment",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text("23"),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.reviews),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Reviews",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text("25"),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              customContinerTile(context, "History", Icons.play_arrow, () {}),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              customContinerTile(context, "Settings", Icons.settings, () {}),
              const SizedBox(
                height: 15,
              ),
              customContinerTile(
                  context, "My Subscription Plan", Icons.monetization_on, () {}),
              const SizedBox(
                height: 15,
              ),
              customContinerTile(context, "Change Password", Icons.lock, () {}),
              const SizedBox(
                height: 15,
              ),
              customContinerTile(context, "Logout", Icons.logout, () {}),
            ],
          ),
        ),
      ),
    );
  }

  Container customContinerTile(
      BuildContext context, String name, IconData icon, Function() function) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
              onPressed: function,
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ))
        ],
      ),
    );
  }

  Padding profileHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://miro.medium.com/v2/resize:fit:785/0*Ggt-XwliwAO6QURi.jpg"),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                  color: Colors.grey[300])),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Name"),
              const Text("@username"),
              MaterialButton(
                color: Colors.amber,
                elevation: 0,
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(13)),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 16,
                    ),
                    Text(
                      "Premium",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.edit,
            ),
          ),
        ],
      ),
    );
  }
}
