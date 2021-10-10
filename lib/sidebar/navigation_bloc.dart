import 'package:bloc/bloc.dart';
import 'package:bmstaffhelp/applications.dart';
import 'package:bmstaffhelp/main.dart';
import 'package:bmstaffhelp/applications.dart';
import 'package:bmstaffhelp/screen/login/test.dart';
import '../durablegoods.dart';
import '../products.dart';
import 'package:bmstaffhelp/murabha2.dart';
import 'package:bmstaffhelp/response codes.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
  MyOrders2ClickedEvent,
  MyOrders3ClickedEvent,
  MyOrders4ClickedEvent,


}
abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);

  @override
  NavigationStates get initialState => MyHomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield MyHomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield Homee();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield durablegoods();
        break;

      case NavigationEvents.MyOrders2ClickedEvent:
        yield application();
        break;
      case NavigationEvents.MyOrders3ClickedEvent:
        yield CourseInfoScreen();
        break;
      case NavigationEvents.MyOrders4ClickedEvent:
        yield respone();
        break;
    }
  }
}
