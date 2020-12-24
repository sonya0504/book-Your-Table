import 'package:flutter/material.dart';
import 'package:desk4u/modules/Custom_branch.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
                'Wybierz oddział:',
                style: Theme.of(context).textTheme.headline1,
            ),
          ),
          CustomBranch(branchImg: 'assets/images/deviniti-logo.png', branchAddress: 'sudecka', branchName: 'Deviniti'),
          CustomBranch(branchImg: 'assets/images/deviniti-logo.png', branchAddress: 'dębowa', branchName: 'Deviniti'),
          CustomBranch(branchImg: 'assets/images/logo-sp.png', branchAddress: 'sp-sudecka', branchName: 'SerwisPrawa'),
        ],
      ),
    );
  }
}
