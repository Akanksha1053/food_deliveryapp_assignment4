import 'package:flutter/material.dart';
import 'package:foodu_assignment4/constants_data.dart';
class FilterOptions extends StatefulWidget {
  const FilterOptions({
    Key? key,
  }) : super(key: key);

  @override
  State<FilterOptions> createState() => _FilterOptionsState();
}

class _FilterOptionsState extends State<FilterOptions> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, left: 24, right: 24),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListView.builder(
        itemCount: ConstantsData.horzScrollNameList.length-1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Material(
          color: Theme.of(context).scaffoldBackgroundColor,
            child: Container(
              padding: EdgeInsets.all(8),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    ConstantsData.horzScrollNameList[index].isSelected = !ConstantsData.horzScrollNameList[index].isSelected;
                  });
                },
                child: Container(
                  padding:EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.green,width: 2),
                      color: (ConstantsData.horzScrollNameList[index].isSelected) ? Colors.green : Theme.of(context).scaffoldBackgroundColor
                  ),
                  child: Center(

                    child: Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(0),

                          child:(ConstantsData.horzScrollNameList[index].isSelected) ? Icon(Icons.check_box,color: Colors.white,size: 20,):Image(image: lst[index]),
                        ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          ConstantsData.horzScrollNameList[index].name,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color:(ConstantsData.horzScrollNameList[index].isSelected) ?Colors.white: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
