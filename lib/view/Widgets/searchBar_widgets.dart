import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_now/constant/colorConst.dart';


class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {

  var search= TextEditingController();

  @override
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    search.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Icon(Icons.search, color: Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: TextColor,
              ),
              width: 5,
              height: 30,
            ),
            flex: 1,
          ),
          SizedBox(width: 5,),
          Expanded(
            flex: 3,
            child: InkWell(
                onTap: (){
                  // Navigator.push(context,MaterialPageRoute(builder: (context)=>SearchScreen()));
                },
                child: Text('أبحث عن أي منتج',style: GoogleFonts.cairo(
                    color: Colors.black26,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),)
            ),
          ),
        ],
      ),
    );
  }

}