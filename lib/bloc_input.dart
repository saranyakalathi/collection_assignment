import 'dart:async';

void main(){
  final controller = StreamController<String>();

  //created sink and adding data
  final sink=controller.sink;

  controller.stream.listen((event) {
    print(event);
   });

   sink.add('sara ....');
   sink.add('Working');
   sink.close();
   controller.close();
}