import 'package:employee/model/DataModel.dart';
import 'package:flutter/material.dart';
class EmployeeCard extends StatelessWidget {
  const EmployeeCard({super.key, required this.employee});
  final Employee employee;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    bool expBadge=(DateTime.now().difference(employee.joinDate).inDays / 365) > 5 && employee.isActive?true:false;
    int diff=(DateTime.now().difference(employee.joinDate).inDays / 365).toInt();
    return Container(
      width: double.infinity,
      height: size.height*0.15,
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 18),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: (DateTime.now().difference(employee.joinDate).inDays / 365) > 5 && employee.isActive?Colors.green:Color.fromRGBO(220, 220,220, 1),width: 1,strokeAlign: BorderSide.strokeAlignOutside),
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                offset: Offset(0,4),
                color: Color.fromRGBO(220, 220, 220, 0.25)
            )
          ]
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(employee.imageUrl.toString(),)
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text(employee.name,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text(employee.domain,
                          style: TextStyle(
                              color:Colors.blueGrey,
                              fontSize: 16
                          ),
                        ),
                      ],
                    ),
                    (expBadge)?Container(
                      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                      child: Text("${diff.toString()} yrs",style: TextStyle(color: Colors.white),),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ):SizedBox()
                  ],
                )),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Joined: ${employee.joinDate.year.toString()}",
                      style: TextStyle(color: Colors.grey,fontSize: 14),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: employee.isActive?Colors.green:Colors.red,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          employee.isActive?"Active":"Inactive",
                          style: TextStyle(color: employee.isActive?Colors.green:Colors.red,fontSize: 14),
                        )
                      ],
                    )
                  ],
                )



              ],
            ),
          )
        ],
      ),
    );
  }
}
