import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_buddy/features/home/presentation/pages/home_screen.dart';
import 'package:gym_buddy/features/profile/presentation/pages/profile_screen.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/features/workout/presentation/pages/workout_screen.dart';
import 'package:gym_buddy/injections.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  int _previousIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<WorkoutBloc>()..add(const WorkoutEvent.loadWorkouts()),
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: const [HomeScreen(), WorkoutScreen(), ProfileScreen()],
        ),
        bottomNavigationBar: Platform.isAndroid
            ? _buildBottomNavBar()
            : _buildBottomNavBarIos(),
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      selectedIconTheme: const IconThemeData(color: Colors.black),
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _previousIndex = _currentIndex;
          _currentIndex = index;
        });

        // Refresh workouts when switching to workout tab
        if (index == 1 && _previousIndex != 1) {
          context.read<WorkoutBloc>().add(
            const WorkoutEvent.loadWorkouts(forceLoading: false),
          );
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: 'home'.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.fitness_center),
          label: 'workout'.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: 'profile'.tr(),
        ),
      ],
    );
  }

  Widget _buildBottomNavBarIos() {
    return CupertinoTabBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _previousIndex = _currentIndex;
          _currentIndex = index;
        });

        // Refresh workouts when switching to workout tab
        if (index == 1 && _previousIndex != 1) {
          context.read<WorkoutBloc>().add(
            const WorkoutEvent.loadWorkouts(forceLoading: false),
          );
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.home),
          label: 'home'.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.fitness_center),
          label: 'workout'.tr(),
        ),

        BottomNavigationBarItem(
          icon: const Icon(CupertinoIcons.person_solid),
          label: 'profile'.tr(),
        ),
      ],
    );
  }
}
