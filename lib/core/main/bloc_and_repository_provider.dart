
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../data/respositories/firebase_cloudStroage_repository.dart';

import 'app.dart';

class BlocAndRepositoryProvider extends StatelessWidget {
  const BlocAndRepositoryProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => FirebaseCloudStoreRepository(),),
        // FirebaseCloudStoreRepository
      ],
      child: MultiBlocProvider(
        providers: [


        ],
        child: const MyApp(),
      ),
    );
  }
}
