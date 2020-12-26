import 'package:flutter/material.dart';

class CustomBranch extends StatefulWidget {
  CustomBranch({Key key, this.branchImg, this.branchAddress, this.branchName}) : super(key: key);

  final String branchImg;
  final String branchAddress;
  final String branchName;

  @override
  _CustomBranchState createState() => _CustomBranchState();
}

class _CustomBranchState extends State<CustomBranch> {

  String _branch;

  void _chooseBranch() {
    setState(() {
      _branch = widget.branchAddress;
    });
  }

  void _goToFilters() {
    print('click $_branch');
    Navigator.pushNamed(context, '/filters');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _chooseBranch();
        _goToFilters();
      },
      child: Column(
        children: [
          Image.asset(
            widget.branchImg,
            width: 300,
            height: 80,
            fit: BoxFit.contain,
            colorBlendMode: BlendMode.darken,
            semanticLabel: widget.branchName,
          ),
          Text(
            widget.branchAddress,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}
