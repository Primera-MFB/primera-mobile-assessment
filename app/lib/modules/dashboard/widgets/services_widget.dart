import 'package:app/config/palletefy.dart';
import 'package:flutter/material.dart';
import '../../../config/enumefy.dart';

class ServicesWidget extends StatelessWidget with Palletefy {
  final String serviceName;
  final List<Map<String, dynamic>> datas;
  const ServicesWidget(
      {Key? key, required this.serviceName, required this.datas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          serviceName,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: containerColor(ThemeModeType.systemMode),
          ),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: datas.length,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> data = datas[index];
              return _buildListTile(
                  title: data["title"],
                  child: data['enableChild'] == true
                      ? data['child']
                      : const SizedBox(
                          width: 4,
                        ),
                  icon: data["icon"]);
            },
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildListTile(
      {required String title, required Widget child, required IconData icon}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: textColor(ThemeModeType.systemMode))),
      trailing: child,
    );
  }
}
