import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/utils/routes.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Profile",
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/images/arrow.png',
              width: 25,
              height: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),

          // Profile Image
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/profile-pic.png'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.edit, color: Colors.orange, size: 14),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 8),

          // User Name
          Text(
            "John Smith",
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 16),

          // Stats Row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatItem("45", "Photos"),
                _buildStatItem("500", "Followers"),
                _buildStatItem("200", "Following"),
              ],
            ),
          ),

          SizedBox(height: 16),

          // Profile Options
          // Expanded(
          //   child: ListView(
          //     padding: EdgeInsets.symmetric(horizontal: 24),
          //     children: [
          //       _buildProfileOption(
          //         Icons.account_circle,
          //         "Account Information",
          //       ),
          //       _buildProfileOption(Icons.notifications, "Notifications"),
          //       _buildProfileOption(Icons.toggle_on, "Active Status"),
          //       _buildProfileOption(Icons.folder, "Media Files"),
          //       _buildProfileOption(Icons.settings, "Settings"),
          //       _buildProfileOption(Icons.help, "Help & Support"),
          //       _buildProfileOption(Icons.article, "Terms & Conditions"),
          //       _buildProfileOption(Icons.logout, "Logout", isLogout: true),
          //     ],
          //   ),
          // ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 8), // Padding for spacing
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ), // Optional border
          ),
        ),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // Evenly distribute icons
          children: [
            // Home
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/home-icon.png',
                    color: Colors.black,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(height: 4), // Space between icon and text
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),

            // Calendar
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/calendar',
                ); // Navigate to Calendar Screen
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/calendar-icon.png',
                    color: Colors.black,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Calendar",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),

            // Center Floating Button
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xFFDC7228), Color(0xFFA54DB7)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: IconButton(
                icon: Icon(Icons.add, size: 35, color: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(context, '/create');
                },
              ),
            ),

            // Create List
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/create-list',
                ); // Navigate to Create List Screen
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/newpost-icon.png',
                    color: Colors.black,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Create List",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),

            // Profile
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/profile',
                ); // Navigate to Profile Screen
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/profile-icon.png',
                    color: Colors.black,
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black54),
        ),
      ],
    );
  }

  Widget _buildProfileOption(
    IconData icon,
    String label, {
    bool isLogout = false,
  }) {
    return ListTile(
      leading: Icon(icon, color: isLogout ? Colors.red : Colors.black),
      title: Text(
        label,
        style: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: isLogout ? Colors.red : Colors.black,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
      onTap: () {
        // Handle navigation
      },
    );
  }
}
