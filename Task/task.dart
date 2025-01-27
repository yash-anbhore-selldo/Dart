import 'dart:convert';
import 'dart:io';

void main() async{
    final file = File('demo.json');
    print(file);
    final filedatastring = await file.readAsString();
    // print(filedatastring);

    var jsonMap = jsonDecode(filedatastring);
    
    var data = jsonMap['data'];
    // print(data);

    List <double> ans = [];

    // var value = data['dimensions']['dimensions']['values'];

    // print(value);

    for(var item in data){
      var dimensions = item['dimensions'];
      // print(dimensions);

      for(var dimension in dimensions){
        var innerDimensions = dimension['dimensions'];

        for(var innerDimension in innerDimensions){
            var values = innerDimension['values'];
            if(ans.isEmpty){
              ans = List.generate(values.length, (index) => values[index].toDouble()); 
            }
            else{
              for(int i=0;i<values.length;i++){
                ans[i]+=values[i].toDouble();
              }
            }
        }
      }
    }
    print(ans);

}













