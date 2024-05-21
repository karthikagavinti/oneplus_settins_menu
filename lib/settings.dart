import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            const SizedBox(height: 60),
            const Text(
              "Settings",
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 16),
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.white70),
                prefixIcon: const Icon(Icons.search, color: Colors.white70),
                filled: true,
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              color: Colors.white24.withAlpha(18),
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: const ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text(
                  'Y1652500627610',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Enjoy exclusive benefits and services designed for you!',
                  style: TextStyle(color: Colors.white30),
                ),
              ),
            ),
            const SizedBox(height: 8),
            buildSettingsCard([
              buildSettingsTile(
                icon: Icons.wifi,
                iconColor: Colors.white,
                backgroundColor: Colors.blue,
                title: 'Wi-Fi',
                trailing: 'TP-Link_2810_5G',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.network_cell,
                iconColor: Colors.white,
                backgroundColor: Colors.green,
                title: 'Mobile network',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.bluetooth,
                iconColor: Colors.white,
                backgroundColor: Colors.blue,
                title: 'Bluetooth',
                trailing: 'AirPods Pro',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.share,
                iconColor: Colors.white,
                backgroundColor: Colors.green,
                title: 'Connection & sharing',
              ),
            ]),
            const SizedBox(height: 8),
            buildSettingsCard([
              buildSettingsTile(
                icon: Icons.wallpaper,
                iconColor: Colors.white,
                backgroundColor: Colors.orange,
                title: 'Wallpapers & style',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.lock,
                iconColor: Colors.white,
                backgroundColor: Colors.redAccent,
                title: 'Home screen & Lock screen',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.brightness_6,
                iconColor: Colors.white,
                backgroundColor: Colors.yellow,
                title: 'Display & brightness',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.volume_up,
                iconColor: Colors.white,
                backgroundColor: Colors.green,
                title: 'Sounds & vibration',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.notifications,
                iconColor: Colors.white,
                backgroundColor: Colors.blue,
                title: 'Notification & status bar',
              ),
            ]),
            const SizedBox(height: 8),
            buildSettingsCard([
              buildSettingsTile(
                icon: Icons.apps,
                iconColor: Colors.white,
                backgroundColor: Colors.green,
                title: 'Apps',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.security,
                iconColor: Colors.white,
                backgroundColor: Colors.blue,
                title: 'Security and privacy',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.location_on,
                iconColor: Colors.white,
                backgroundColor: Colors.yellow,
                title: 'Location',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.warning,
                iconColor: Colors.white,
                backgroundColor: Colors.pink,
                title: 'Safety & emergency',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.battery_full,
                iconColor: Colors.white,
                backgroundColor: Colors.green,
                title: 'Battery',
              ),
            ]),
            const SizedBox(height: 8),
            buildSettingsCard([
              buildSettingsTile(
                icon: Icons.star,
                iconColor: Colors.white,
                backgroundColor: Colors.orange,
                title: 'Special features',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.family_restroom,
                iconColor: Colors.white,
                backgroundColor: Colors.green,
                title: 'Digital Wellbeing & parental \ncontrols',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.settings,
                iconColor: Colors.white,
                backgroundColor: Colors.green,
                title: 'Additional Settings',
              ),
            ]),
            const SizedBox(height: 8),
            buildSettingsCard([
              buildSettingsTile(
                icon: Icons.info,
                iconColor: Colors.white,
                backgroundColor: Colors.green,
                title: 'About device',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.account_circle,
                iconColor: Colors.white,
                backgroundColor: Colors.blue,
                title: 'Users & accounts',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.search,
                iconColor: Colors.white,
                backgroundColor: Colors.green,
                title: 'Google',
              ),
              buildDividerWithMargin(),
              buildSettingsTile(
                icon: Icons.help,
                iconColor: Colors.white,
                backgroundColor: Colors.blue,
                title: 'Help & feedback',
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget buildSettingsTile({
    required IconData icon,
    required Color iconColor,
    required Color backgroundColor,
    required String title,
    String? trailing,
  }) {
    return ListTile(
      leading: RoundedIcon(
        icon: icon,
        color: iconColor,
        backgroundColor: backgroundColor,
      ),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      trailing: trailing != null
          ? Text(trailing, style: const TextStyle(color: Colors.grey))
          : null,
    );
  }

  Widget buildDividerWithMargin() {
    return Container(
      margin: const EdgeInsets.only(
          left: 66.0, right: 20), // Adjust according to icon size and padding
      child: const Divider(thickness: 0.3, height: 1, color: Colors.grey),
    );
  }

  Widget buildSettingsCard(List<Widget> children) {
    return Card(
      color: Colors.white12,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: children,
      ),
    );
  }
}

class RoundedIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color backgroundColor;

  const RoundedIcon(
      {required this.icon,
      required this.color,
      required this.backgroundColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: color),
    );
  }
}
