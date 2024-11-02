// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mvvm/screen/home_mvvm/home_viewmodel.dart';
import 'package:mvvm/screen/profile/profile_view.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Using the reactive constructor gives you the traditional ViewModel
    // binding which will execute the builder again when notifyListeners is called.
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
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
                  child: Text('Add')),
              SizedBox(height: 25),
              ////// Profile Button
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileView()),
                    );
                  },
                  child: Text('Go to Profile')),
            ],
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {
          //     viewModel.updateTitle();
          //   },
          //   child: const Text("Add"),
          // ),
        );
      },
    );
  }
}
