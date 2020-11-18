class Task{
  String name;
  bool checkDone;

  Task({this.name, this.checkDone=false});

  void toggleup(){
    checkDone=!checkDone;
  }


}