// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mvvm/screen/profile/profile_viewmodel.dart';

import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewmodel>.reactive(
      viewModelBuilder: () => ProfileViewmodel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Countes',
                style: TextStyle(fontSize: 25),
              ),
              Center(
                child: Text(viewModel.counter.toString(),
                    style: TextStyle(fontSize: 35)),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                  onPressed: () {
                    viewModel.addValue();
                  },
                  child: Text('Add'))
            ],
          ),
        );
      },
    );
  }
}
