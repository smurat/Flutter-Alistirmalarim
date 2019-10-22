import 'package:flutter/material.dart';

class ListeDenemeler extends StatelessWidget {
  List<int> listeNumaralari = List.generate(30, (index) => index);
  List<String> listeAltBaslik =
      List.generate(300, (index) => "Liste elamanı alt başlık $index");

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listeNumaralari
          .map(
            (oankieleman) => Column(
              children: <Widget>[
                Container(
                  child: Card(
                    elevation: 10,
                    margin: EdgeInsets.all(10),
                    color: Colors.blue[300],
                    child: ListTile(
                      onTap: () => debugPrint("tıklandı"),
                      title: Text("Liste Elemanı Başlık : $oankieleman"),
                      subtitle: Text("altbaşlık :$oankieleman"),
                      trailing: Icon(Icons.all_out, size: 36),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "http://pngimg.com/uploads/youtube/youtube_PNG1.png"),
                      ),
                    ),
                  ),
                ),
                Divider(height: 0, indent: 20, thickness: 1),
              ],
            ),
          )
          .toList(),
    );
  }
}

/*
Column(
 children: <Widget>[
    Container(
      child: Card(
       elevation: 10,
       margin: EdgeInsets.all(10),
       color: Colors.blue[300],
       child: ListTile(
         onTap: () => debugPrint("tıklandı"),
         title: Text("Liste Elemanı Başlık : "),
         subtitle: Text("youtube.com"),
         trailing: Icon(Icons.accessibility, size: 36),
         leading: CircleAvatar(
            backgroundImage: NetworkImage(
             "http://pngimg.com/uploads/youtube/youtube_PNG1.png"),
          ),
         ),
       ),
     ),
     Divider(height: 0, indent: 20, thickness: 1),
   ],
 ),
 */
