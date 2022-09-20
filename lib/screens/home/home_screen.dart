import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: UserInformation(),
      ),
    );
  }
}

class UserInformation extends StatefulWidget {
  @override
  _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('references').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            print(data);
            return ListTile(
              title: Text('data ${data['isUpdate']}'),
            );
          }).toList(),
        );
      },
    );
  }
}


// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: const MyBottomBar(),
//       drawer: const MyDrawer(),
//       appBar: AppBar(
//         title: const Text('Rizwan Traders'),
//         actions: [
//           Badge(
//             badgeColor: Colors.green,
//             position: const BadgePosition(start: -15, top: 1),
//             badgeContent: const Text('0'),
//             child: const Icon(Icons.shopping_cart),
//           ),
//           const SizedBox(
//             width: 20.0,
//           ),
//           Badge(
//               badgeColor: Colors.green,
//               position: const BadgePosition(start: -15, top: 1),
//               badgeContent: const Text('0'),
//               child: const Icon(Icons.notifications)),
//           const SizedBox(
//             width: 10.0,
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: const [
//             SizedBox(
//               height: 190,
//               width: double.infinity,
//               child: AdsCasrousel(),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 16.0),
//               child: Text(
//                 'Category',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             SizedBox(
//               height: 135,
//               width: double.infinity,
//               child: CategroyCarsousel(),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               child: SectionCards(),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 16.0),
//               child: Text(
//                 'Feature',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final user = FirebaseAuth.instance.currentUser!;
//     return BlocListener<AuthBloc, AuthState>(
//       listener: (context, state) {
//         if (state is UnAuthenticated) {
//           // Navigate to the sign in screen when the user Signs Out
//           Navigator.of(context).pushAndRemoveUntil(
//             MaterialPageRoute(builder: (context) => const SignIn()),
//             (route) => false,
//           );
//         }
//       },
//       child: Scaffold(
//         drawer: Drawer(
//           child: Column(
//             children: [
//               UserAccountsDrawerHeader(
//                 currentAccountPicture: CircleAvatar(
//                   backgroundImage: NetworkImage('${user.photoURL}'),
//                 ),
//                 accountName: Text('${user.displayName}'),
//                 accountEmail: Text('${user.email}'),
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height - 300,
//                 child: ListView(
//                   shrinkWrap: false,
//                   children: [
//                     const ListTile(
//                       //leading: Icon(Icons.home),
//                       title: Text('Home'),
//                     ),
//                     ListTile(
//                       onTap: () {
//                         context.read<AuthBloc>().add(SignOutRequested());
//                       },
//                       title: const Text('Sign Out'),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         appBar: AppBar(
//           title: const Text('Rizwan Traders'),
//         ),
//         body: UserInformation(),
//       ),
//     );
//   }
// }

// class UserInformation extends StatefulWidget {
//   @override
//   _UserInformationState createState() => _UserInformationState();
// }

// class _UserInformationState extends State<UserInformation> {
//   final Stream<QuerySnapshot> _productsStream =
//       FirebaseFirestore.instance.collection('products').snapshots();

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream: _productsStream,
//       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//         if (snapshot.hasError) {
//           return const Text('Something went wrong');
//         }

//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         }

//         return SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 16.0,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 200,
//                   decoration: const BoxDecoration(
//                     color: Colors.black87,
//                     boxShadow: <BoxShadow>[
//                       BoxShadow(
//                         color: Colors.black,
//                         blurRadius: 1.0,
//                         spreadRadius: 1.0,
//                         blurStyle: BlurStyle.outer,
//                       ),
//                     ],
//                     borderRadius: BorderRadius.horizontal(
//                       left: Radius.circular(16.0),
//                       right: Radius.circular(16.0),
//                     ),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: const [
//                       Text(
//                         'Rizwan Traders',
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                       Text(
//                         '(300) 0222 239',
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                       Text(
//                         'Shop #0 Al-Madeer Center Multan.',
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 16.0,
//                 ),
//                 const Text(
//                   'Category',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 16.0,
//                 ),
//                 GridView.count(
//                   crossAxisSpacing: 10.0,
//                   crossAxisCount: 2,
//                   shrinkWrap: true,
//                   children: [
//                     Container(
//                       decoration: const BoxDecoration(
//                         color: Colors.white,
//                         gradient: LinearGradient(
//                           begin: Alignment.topCenter,
//                           colors: [
//                             Color(0xff0083F3),
//                             Color(0xff0462B2),
//                           ],
//                         ),
//                         borderRadius: BorderRadius.horizontal(
//                           left: Radius.circular(16.0),
//                           right: Radius.circular(16.0),
//                         ),
//                       ),
//                       child: Center(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: const [
//                             Text(
//                               'Parts &',
//                               maxLines: 2,
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                             Text(
//                               'Accessories',
//                               maxLines: 2,
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       decoration: const BoxDecoration(
//                         color: Colors.white,
//                         gradient: LinearGradient(
//                           begin: Alignment.topCenter,
//                           colors: [
//                             Color(0xff0083F3),
//                             Color(0xff0462B2),
//                           ],
//                         ),
//                         borderRadius: BorderRadius.horizontal(
//                           left: Radius.circular(16.0),
//                           right: Radius.circular(16.0),
//                         ),
//                       ),
//                       child: Center(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: const [
//                             Text(
//                               'Mobile &',
//                               maxLines: 2,
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                             Text(
//                               'Tablet Phones',
//                               maxLines: 2,
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 16.0,
//                 ),
//                 const Text(
//                   'Showcase',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 16.0,
//                 ),
//                 GridView.builder(
//                   physics: const NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10.0,
//                     mainAxisSpacing: 10.0,
//                   ),
//                   itemCount: 10,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       decoration: const BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(color: Colors.black12, blurRadius: 15.0)
//                         ],
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(16.0),
//                         ),
//                         color: Colors.white,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                             height: 95,
//                             decoration: const BoxDecoration(
//                               borderRadius: BorderRadius.vertical(
//                                   top: Radius.circular(16.0)),
//                               image: DecorationImage(
//                                 image: AssetImage(
//                                   "assets/images/brands/samsung.png",
//                                 ),
//                                 fit: BoxFit.fitWidth,
//                                 alignment: Alignment.topCenter,
//                               ),
//                             ),
//                           ),
//                           Flexible(
//                             child: Container(
//                               padding: const EdgeInsets.only(
//                                 right: 10.0,
//                                 left: 12.0,
//                                 bottom: 1.0,
//                               ),
//                               child: const Text(
//                                 'Product Name this is is the',
//                                 overflow: TextOverflow.fade,
//                                 style: TextStyle(
//                                   fontSize: 14.0,
//                                   color: Color(0xFF212121),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.only(
//                               left: 12.0,
//                               bottom: 8.0,
//                             ),
//                             child: Text(
//                               'PKR 254',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//                 const SizedBox(
//                   height: 10.0,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }





// Column(
//           children: [
//             SizedBox(
//               height: 800,
//               child: ListView(
//                 shrinkWrap: true,
//                 children: snapshot.data!.docs.map((DocumentSnapshot document) {
//                   Map<String, dynamic> data =
//                       document.data()! as Map<String, dynamic>;
//                   return Card(
//                     child: ListTile(
//                       title: Text(data['name']),
//                       subtitle: Text(
//                           'Group: ${data['group']} Brand: ${data['brand']}'),
//                       trailing: const Text('Price: 0'),
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ],
//         );