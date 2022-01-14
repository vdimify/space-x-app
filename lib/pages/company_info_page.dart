import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:space_x_app/api/get_company_info_service.dart';
import 'package:space_x_app/widgets/company_info_list_item.dart';

class CompanyInfoPage extends StatelessWidget {
  const CompanyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GetCompanyInfoService service = context.read<GetCompanyInfoService>();
    return FutureBuilder(
      future: service.getCompanyInfo(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemBuilder: (context, index) {
              String mapKey = snapshot.data.keys.elementAt(index);
              return CompanyInfoListItem(
                  mapKey: mapKey, mapValue: snapshot.data[mapKey]);
            },
            itemCount: snapshot.data.length,
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text(
              "We are unable to show Company Information at the moment.",
              maxLines: 3,
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
