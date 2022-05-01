import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//--------------------------------------------- Bloc
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:tpk_login_arsa_01/script/bloc/login/login_bloc.dart';
// import 'package:tpk_login_arsa_01/script/bloc/login/login_event.dart';

//---------------------------------------------

String pageactive = '';

class App_Bar_NongtongCustom extends StatefulWidget {
  App_Bar_NongtongCustom({Key? key}) : super(key: key);

  @override
  App_Bar_NongtongCustomState createState() => App_Bar_NongtongCustomState();
}

class App_Bar_NongtongCustomState extends State<App_Bar_NongtongCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      //color: Color(0xff0b1327),
      color: const Color(0xFFFFE9F1),

      // changes position of shadow

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                Logo2(),
                Logo1(),
              ],
            ),
          ),
          Pack_topright_bar(),
        ],
      ),
    );
  }

  ///###################################################################################

}

class Logo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: const Icon(
          Icons.sort_rounded,
          color: Colors.black,
          size: 40,
        ),
      ),
    );
  }
}

//============================================================
class Logo1 extends StatelessWidget {
  const Logo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        //color: const Color(0xFFFEE2F9),
        child: const Text(
          "sra.",
          style: TextStyle(
            fontFamily: 'Mitr',
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.normal,
            letterSpacing: 0,
          ),
        ),
      ),
    );
  }
}

class Pack_topright_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
          width: 150,
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Icon_profile()
          ] //[Time_(), Icon_bell(), Icon_profile()],
              )),
    );
  }
}

class Icon_bell extends StatelessWidget {
  const Icon_bell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 24,
      // height: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Image.asset("assets/icons/icon-notifications.png"),
      ),
    );
  }
}

class Icon_profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        //  LoginContext.read<Login_Bloc>().add(Logout());
      },
      child: const Icon(
        Icons.account_circle,
        size: 30.0,
        color: Colors.black,
      ),
    );
  }
}

class Time_ extends StatefulWidget {
  Time_({Key? key}) : super(key: key);

  @override
  _Time_State createState() => _Time_State();
}

class _Time_State extends State<Time_> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Center(
          child: Text(
            DateFormat(' hh:mm a').format(DateTime.now()),
            style: const TextStyle(
              fontFamily: 'Mitr',
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            ),
          ),
        );
      },
    );
  }
}
