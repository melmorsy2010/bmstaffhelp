import 'package:flutter/material.dart';
import 'dart:math';
import 'package:bmstaffhelp/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class loancalc2 extends StatefulWidget {
  
  @override
  loancalc2State createState() => loancalc2State();
}

class loancalc2State extends State<loancalc2> {



  List _tenureTypes = ['Month(s)', 'Year(s)'];
  String _tenureType = "Year(s)";
  String _emiResult = "";
  String _totalinterest = "";
  String _totalamount = "";
  String _principle = "";
  String _p1 = "";
  String _pR = "";
  String _int = "";
  String _advance = "";
  String _fullpayment = "";
  String _totalcost = "";

  ////////////////////////////
  String _srow2principle = "";
  String _srow2installment = "";
  String _srow2p = "";
  String _srow2i = "";
  String _srow2remian = "";
  String _srow2advance = "";
  String _srow2totalpayment = "";
  String _srow2totalcost = "";

  //////row 3//////////////////////
  String _srow3p = "";
  String _srow3i = "";
  String _srow3remian = "";
  String _srow3advance = "";
  String _srow3totalpayment = "";
  String _srow3totalcost = "";
  //////row 4//////////////////////
  String _srow4p = "";
  String _srow4i = "";
  String _srow4remian = "";
  String _srow4advance = "";
  String _srow4totalpayment = "";
  String _srow4totalcost = "";
  //////row 5//////////////////////
  String _srow5p = "";
  String _srow5i = "";
  String _srow5remian = "";
  String _srow5advance = "";
  String _srow5totalpayment = "";
  String _srow5totalcost = "";
  //////row 6//////////////////////
  String _srow6p = "";
  String _srow6i = "";
  String _srow6remian = "";
  String _srow6advance = "";
  String _srow6totalpayment = "";
  String _srow6totalcost = "";
  //////row 7//////////////////////
  String _srow7p = "";
  String _srow7i = "";
  String _srow7remian = "";
  String _srow7advance = "";
  String _srow7totalpayment = "";
  String _srow7totalcost = "";
  //////row 8//////////////////////
  String _srow8p = "";
  String _srow8i = "";
  String _srow8remian = "";
  String _srow8advance = "";
  String _srow8totalpayment = "";
  String _srow8totalcost = "";
  //////row 9//////////////////////
  String _srow9p = "";
  String _srow9i = "";
  String _srow9remian = "";
  String _srow9advance = "";
  String _srow9totalpayment = "";
  String _srow9totalcost = "";
  //////row10//////////////////////
  String _srow10p = "";
  String _srow10i = "";
  String _srow10remian = "";
  String _srow10advance = "";
  String _srow10totalpayment = "";
  String _srow10totalcost = "";
  //////row11//////////////////////
  String _srow11p = "";
  String _srow11i = "";
  String _srow11remian = "";
  String _srow11advance = "";
  String _srow11totalpayment = "";
  String _srow11totalcost = "";
  //////12//////////////////////
  String _srow12p = "";
  String _srow12i = "";
  String _srow12remian = "";
  String _srow12advance = "";
  String _srow12totalpayment = "";
  String _srow12totalcost = "";
  //////13//////////////////////
  String _srow13p = "";
  String _srow13i = "";
  String _srow13remian = "";
  String _srow13advance = "";
  String _srow13totalpayment = "";
  String _srow13totalcost = "";
  //////14//////////////////////
  String _srow14p = "";
  String _srow14i = "";
  String _srow14remian = "";
  String _srow14advance = "";
  String _srow14totalpayment = "";
  String _srow14totalcost = "";
  //////15//////////////////////
  String _srow15p = "";
  String _srow15i = "";
  String _srow15remian = "";
  String _srow15advance = "";
  String _srow15totalpayment = "";
  String _srow15totalcost = "";
  //////16//////////////////////
  String _srow16p = "";
  String _srow16i = "";
  String _srow16remian = "";
  String _srow16advance = "";
  String _srow16totalpayment = "";
  String _srow16totalcost = "";
  //////17//////////////////////
  String _srow17p = "";
  String _srow17i = "";
  String _srow17remian = "";
  String _srow17advance = "";
  String _srow17totalpayment = "";
  String _srow17totalcost = "";
  //////18//////////////////////
  String _srow18p = "";
  String _srow18i = "";
  String _srow18remian = "";
  String _srow18advance = "";
  String _srow18totalpayment = "";
  String _srow18totalcost = "";
  //////19//////////////////////
  String _srow19p = "";
  String _srow19i = "";
  String _srow19remian = "";
  String _srow19advance = "";
  String _srow19totalpayment = "";
  String _srow19totalcost = "";
  //////20//////////////////////
  String _srow20p = "";
  String _srow20i = "";
  String _srow20remian = "";
  String _srow20advance = "";
  String _srow20totalpayment = "";
  String _srow20totalcost = "";
  //////21//////////////////////
  String _srow21p = "";
  String _srow21i = "";
  String _srow21remian = "";
  String _srow21advance = "";
  String _srow21totalpayment = "";
  String _srow21totalcost = "";
  //////22//////////////////////
  String _srow22p = "";
  String _srow22i = "";
  String _srow22remian = "";
  String _srow22advance = "";
  String _srow22totalpayment = "";
  String _srow22totalcost = "";
  //////23//////////////////////
  String _srow23p = "";
  String _srow23i = "";
  String _srow23remian = "";
  String _srow23advance = "";
  String _srow23totalpayment = "";
  String _srow23totalcost = "";
  //////21//////////////////////
  String _srow24p = "";
  String _srow24i = "";
  String _srow24remian = "";
  String _srow24advance = "";
  String _srow24totalpayment = "";
  String _srow24totalcost = "";
  //////21//////////////////////
  String _srow25p = "";
  String _srow25i = "";
  String _srow25remian = "";
  String _srow25advance = "";
  String _srow25totalpayment = "";
  String _srow25totalcost = "";
  //////21//////////////////////
  String _srow26p = "";
  String _srow26i = "";
  String _srow26remian = "";
  String _srow26advance = "";
  String _srow26totalpayment = "";
  String _srow26totalcost = "";
  //////21//////////////////////
  String _srow27p = "";
  String _srow27i = "";
  String _srow27remian = "";
  String _srow27advance = "";
  String _srow27totalpayment = "";
  String _srow27totalcost = "";
  //////21//////////////////////
  String _srow28p = "";
  String _srow28i = "";
  String _srow28remian = "";
  String _srow28advance = "";
  String _srow28totalpayment = "";
  String _srow28totalcost = "";
  //////21//////////////////////
  String _srow29p = "";
  String _srow29i = "";
  String _srow29remian = "";
  String _srow29advance = "";
  String _srow29totalpayment = "";
  String _srow29totalcost = "";
  //////21//////////////////////
  String _srow30p = "";
  String _srow30i = "";
  String _srow30remian = "";
  String _srow30advance = "";
  String _srow30totalpayment = "";
  String _srow30totalcost = "";
  //////21//////////////////////
  String _srow31p = "";
  String _srow31i = "";
  String _srow31remian = "";
  String _srow31advance = "";
  String _srow31totalpayment = "";
  String _srow31totalcost = "";
  //////21//////////////////////
  String _srow32p = "";
  String _srow32i = "";
  String _srow32remian = "";
  String _srow32advance = "";
  String _srow32totalpayment = "";
  String _srow32totalcost = "";
  //////21//////////////////////
  String _srow33p = "";
  String _srow33i = "";
  String _srow33remian = "";
  String _srow33advance = "";
  String _srow33totalpayment = "";
  String _srow33totalcost = "";
  //////21//////////////////////
  String _srow34p = "";
  String _srow34i = "";
  String _srow34remian = "";
  String _srow34advance = "";
  String _srow34totalpayment = "";
  String _srow34totalcost = "";
  //////21//////////////////////
  String _srow35p = "";
  String _srow35i = "";
  String _srow35remian = "";
  String _srow35advance = "";
  String _srow35totalpayment = "";
  String _srow35totalcost = "";
  //////21//////////////////////
  String _srow36p = "";
  String _srow36i = "";
  String _srow36remian = "";
  String _srow36advance = "";
  String _srow36totalpayment = "";
  String _srow36totalcost = "";
  //////21//////////////////////
  String _srow37p = "";
  String _srow37i = "";
  String _srow37remian = "";
  String _srow37advance = "";
  String _srow37totalpayment = "";
  String _srow37totalcost = "";
  //////21//////////////////////
  String _srow38p = "";
  String _srow38i = "";
  String _srow38remian = "";
  String _srow38advance = "";
  String _srow38totalpayment = "";
  String _srow38totalcost = "";
  //////21//////////////////////
  String _srow39p = "";
  String _srow39i = "";
  String _srow39remian = "";
  String _srow39advance = "";
  String _srow39totalpayment = "";
  String _srow39totalcost = "";
  //////21//////////////////////
  String _srow40p = "";
  String _srow40i = "";
  String _srow40remian = "";
  String _srow40advance = "";
  String _srow40totalpayment = "";
  String _srow40totalcost = "";
  //////21//////////////////////
  String _srow41p = "";
  String _srow41i = "";
  String _srow41remian = "";
  String _srow41advance = "";
  String _srow41totalpayment = "";
  String _srow41totalcost = "";
  //////21//////////////////////
  String _srow42p = "";
  String _srow42i = "";
  String _srow42remian = "";
  String _srow42advance = "";
  String _srow42totalpayment = "";
  String _srow42totalcost = "";
  //////21//////////////////////
  String _srow43p = "";
  String _srow43i = "";
  String _srow43remian = "";
  String _srow43advance = "";
  String _srow43totalpayment = "";
  String _srow43totalcost = "";
  //////21//////////////////////
  String _srow44p = "";
  String _srow44i = "";
  String _srow44remian = "";
  String _srow44advance = "";
  String _srow44totalpayment = "";
  String _srow44totalcost = "";
  //////21//////////////////////
  String _srow45p = "";
  String _srow45i = "";
  String _srow45remian = "";
  String _srow45advance = "";
  String _srow45totalpayment = "";
  String _srow45totalcost = "";
  //////21//////////////////////
  String _srow46p = "";
  String _srow46i = "";
  String _srow46remian = "";
  String _srow46advance = "";
  String _srow46totalpayment = "";
  String _srow46totalcost = "";
  //////21//////////////////////
  String _srow47p = "";
  String _srow47i = "";
  String _srow47remian = "";
  String _srow47advance = "";
  String _srow47totalpayment = "";
  String _srow47totalcost = "";
  //////21//////////////////////
  String _srow48p = "";
  String _srow48i = "";
  String _srow48remian = "";
  String _srow48advance = "";
  String _srow48totalpayment = "";
  String _srow48totalcost = "";
  //////21//////////////////////
  String _srow49p = "";
  String _srow49i = "";
  String _srow49remian = "";
  String _srow49advance = "";
  String _srow49totalpayment = "";
  String _srow49totalcost = "";
  //////21//////////////////////
  String _srow50p = "";
  String _srow50i = "";
  String _srow50remian = "";
  String _srow50advance = "";
  String _srow50totalpayment = "";
  String _srow50totalcost = "";
  //////21//////////////////////
  String _srow51p = "";
  String _srow51i = "";
  String _srow51remian = "";
  String _srow51advance = "";
  String _srow51totalpayment = "";
  String _srow51totalcost = "";
  //////21//////////////////////
  String _srow52p = "";
  String _srow52i = "";
  String _srow52remian = "";
  String _srow52advance = "";
  String _srow52totalpayment = "";
  String _srow52totalcost = "";
  //////21//////////////////////
  String _srow53p = "";
  String _srow53i = "";
  String _srow53remian = "";
  String _srow53advance = "";
  String _srow53totalpayment = "";
  String _srow53totalcost = "";
  //////21//////////////////////
  String _srow54p = "";
  String _srow54i = "";
  String _srow54remian = "";
  String _srow54advance = "";
  String _srow54totalpayment = "";
  String _srow54totalcost = "";
  //////21//////////////////////
  String _srow55p = "";
  String _srow55i = "";
  String _srow55remian = "";
  String _srow55advance = "";
  String _srow55totalpayment = "";
  String _srow55totalcost = "";
  //////21//////////////////////
  String _srow56p = "";
  String _srow56i = "";
  String _srow56remian = "";
  String _srow56advance = "";
  String _srow56totalpayment = "";
  String _srow56totalcost = "";
  //////21//////////////////////
  String _srow57p = "";
  String _srow57i = "";
  String _srow57remian = "";
  String _srow57advance = "";
  String _srow57totalpayment = "";
  String _srow57totalcost = "";
  //////21//////////////////////
  String _srow58p = "";
  String _srow58i = "";
  String _srow58remian = "";
  String _srow58advance = "";
  String _srow58totalpayment = "";
  String _srow58totalcost = "";
  //////21//////////////////////
  String _srow59p = "";
  String _srow59i = "";
  String _srow59remian = "";
  String _srow59advance = "";
  String _srow59totalpayment = "";
  String _srow59totalcost = "";
  //////21//////////////////////
  String _srow60p = "";
  String _srow60i = "";
  String _srow60remian = "";
  String _srow60advance = "";
  String _srow60totalpayment = "";
  String _srow60totalcost = "";
  //////21//////////////////////
////////////////////////////////////
  String _srow61p = "";
  String _srow61i = "";
  String _srow61remian = "";
  String _srow61advance = "";
  String _srow61totalpayment = "";
  String _srow61totalcost = "";

////////////////////////////////////
  String _srow62p = "";
  String _srow62i = "";
  String _srow62remian = "";
  String _srow62advance = "";
  String _srow62totalpayment = "";
  String _srow62totalcost = "";

////////////////////////////////////
  String _srow63p = "";
  String _srow63i = "";
  String _srow63remian = "";
  String _srow63advance = "";
  String _srow63totalpayment = "";
  String _srow63totalcost = "";

////////////////////////////////////
  String _srow64p = "";
  String _srow64i = "";
  String _srow64remian = "";
  String _srow64advance = "";
  String _srow64totalpayment = "";
  String _srow64totalcost = "";

////////////////////////////////////
  String _srow65p = "";
  String _srow65i = "";
  String _srow65remian = "";
  String _srow65advance = "";
  String _srow65totalpayment = "";
  String _srow65totalcost = "";
////////////////////////////////////
  String _srow66p = "";
  String _srow66i = "";
  String _srow66remian = "";
  String _srow66advance = "";
  String _srow66totalpayment = "";
  String _srow66totalcost = "";
////////////////////////////////////
  String _srow67p = "";
  String _srow67i = "";
  String _srow67remian = "";
  String _srow67advance = "";
  String _srow67totalpayment = "";
  String _srow67totalcost = "";
////////////////////////////////////
  String _srow68p = "";
  String _srow68i = "";
  String _srow68remian = "";
  String _srow68advance = "";
  String _srow68totalpayment = "";
  String _srow68totalcost = "";
////////////////////////////////////
  String _srow69p = "";
  String _srow69i = "";
  String _srow69remian = "";
  String _srow69advance = "";
  String _srow69totalpayment = "";
  String _srow69totalcost = "";
////////////////////////////////////
  String _srow70p = "";
  String _srow70i = "";
  String _srow70remian = "";
  String _srow70advance = "";
  String _srow70totalpayment = "";
  String _srow70totalcost = "";
////////////////////////////////////
  String _srow71p = "";
  String _srow71i = "";
  String _srow71remian = "";
  String _srow71advance = "";
  String _srow71totalpayment = "";
  String _srow71totalcost = "";
////////////////////////////////////
  String _srow72p = "";
  String _srow72i = "";
  String _srow72remian = "";
  String _srow72advance = "";
  String _srow72totalpayment = "";
  String _srow72totalcost = "";
////////////////////////////////////
  String _srow73p = "";
  String _srow73i = "";
  String _srow73remian = "";
  String _srow73advance = "";
  String _srow73totalpayment = "";
  String _srow73totalcost = "";
////////////////////////////////////
  String _srow74p = "";
  String _srow74i = "";
  String _srow74remian = "";
  String _srow74advance = "";
  String _srow74totalpayment = "";
  String _srow74totalcost = "";
////////////////////////////////////
  String _srow75p = "";
  String _srow75i = "";
  String _srow75remian = "";
  String _srow75advance = "";
  String _srow75totalpayment = "";
  String _srow75totalcost = "";
////////////////////////////////////
  String _srow76p = "";
  String _srow76i = "";
  String _srow76remian = "";
  String _srow76advance = "";
  String _srow76totalpayment = "";
  String _srow76totalcost = "";
////////////////////////////////////
  String _srow77p = "";
  String _srow77i = "";
  String _srow77remian = "";
  String _srow77advance = "";
  String _srow77totalpayment = "";
  String _srow77totalcost = "";
////////////////////////////////////
  String _srow78p = "";
  String _srow78i = "";
  String _srow78remian = "";
  String _srow78advance = "";
  String _srow78totalpayment = "";
  String _srow78totalcost = "";
////////////////////////////////////
  String _srow79p = "";
  String _srow79i = "";
  String _srow79remian = "";
  String _srow79advance = "";
  String _srow79totalpayment = "";
  String _srow79totalcost = "";
////////////////////////////////////
  String _srow80p = "";
  String _srow80i = "";
  String _srow80remian = "";
  String _srow80advance = "";
  String _srow80totalpayment = "";
  String _srow80totalcost = "";
////////////////////////////////////
  String _srow81p = "";
  String _srow81i = "";
  String _srow81remian = "";
  String _srow81advance = "";
  String _srow81totalpayment = "";
  String _srow81totalcost = "";
////////////////////////////////////
  String _srow82p = "";
  String _srow82i = "";
  String _srow82remian = "";
  String _srow82advance = "";
  String _srow82totalpayment = "";
  String _srow82totalcost = "";
////////////////////////////////////
  String _srow83p = "";
  String _srow83i = "";
  String _srow83remian = "";
  String _srow83advance = "";
  String _srow83totalpayment = "";
  String _srow83totalcost = "";
////////////////////////////////////
  String _srow84p = "";
  String _srow84i = "";
  String _srow84remian = "";
  String _srow84advance = "";
  String _srow84totalpayment = "";
  String _srow84totalcost = "";
////////////////////////////////////
  String _srow85p = "";
  String _srow85i = "";
  String _srow85remian = "";
  String _srow85advance = "";
  String _srow85totalpayment = "";
  String _srow85totalcost = "";
///////////////////////////////////
  String _srow86p = "";
  String _srow86i = "";
  String _srow86remian = "";
  String _srow86advance = "";
  String _srow86totalpayment = "";
  String _srow86totalcost = "";
////////////////////////////////////
  String _srow87p = "";
  String _srow87i = "";
  String _srow87remian = "";
  String _srow87advance = "";
  String _srow87totalpayment = "";
  String _srow87totalcost = "";
////////////////////////////////////
  String _srow88p = "";
  String _srow88i = "";
  String _srow88remian = "";
  String _srow88advance = "";
  String _srow88totalpayment = "";
  String _srow88totalcost = "";
////////////////////////////////////
  String _srow89p = "";
  String _srow89i = "";
  String _srow89remian = "";
  String _srow89advance = "";
  String _srow89totalpayment = "";
  String _srow89totalcost = "";
////////////////////////////////////
  String _srow90p = "";
  String _srow90i = "";
  String _srow90remian = "";
  String _srow90advance = "";
  String _srow90totalpayment = "";
  String _srow90totalcost = "";
////////////////////////////////////
  String _srow91p = "";
  String _srow91i = "";
  String _srow91remian = "";
  String _srow91advance = "";
  String _srow91totalpayment = "";
  String _srow91totalcost = "";
////////////////////////////////////
  String _srow92p = "";
  String _srow92i = "";
  String _srow92remian = "";
  String _srow92advance = "";
  String _srow92totalpayment = "";
  String _srow92totalcost = "";
////////////////////////////////////
  String _srow93p = "";
  String _srow93i = "";
  String _srow93remian = "";
  String _srow93advance = "";
  String _srow93totalpayment = "";
  String _srow93totalcost = "";
////////////////////////////////////
  String _srow94p = "";
  String _srow94i = "";
  String _srow94remian = "";
  String _srow94advance = "";
  String _srow94totalpayment = "";
  String _srow94totalcost = "";
////////////////////////////////////
  String _srow95p = "";
  String _srow95i = "";
  String _srow95remian = "";
  String _srow95advance = "";
  String _srow95totalpayment = "";
  String _srow95totalcost = "";
////////////////////////////////////
  String _srow96p = "";
  String _srow96i = "";
  String _srow96remian = "";
  String _srow96advance = "";
  String _srow96totalpayment = "";
  String _srow96totalcost = "";
////////////////////////////////////
  String _srow97p = "";
  String _srow97i = "";
  String _srow97remian = "";
  String _srow97advance = "";
  String _srow97totalpayment = "";
  String _srow97totalcost = "";
////////////////////////////////////
  String _srow98p = "";
  String _srow98i = "";
  String _srow98remian = "";
  String _srow98advance = "";
  String _srow98totalpayment = "";
  String _srow98totalcost = "";
////////////////////////////////////
  String _srow99p = "";
  String _srow99i = "";
  String _srow99remian = "";
  String _srow99advance = "";
  String _srow99totalpayment = "";
  String _srow99totalcost = "";
////////////////////////////////////
  String _srow100p = "";
  String _srow100i = "";
  String _srow100remian = "";
  String _srow100advance = "";
  String _srow100totalpayment = "";
  String _srow100totalcost = "";
////////////////////////////////////
  String _srow101p = "";
  String _srow101i = "";
  String _srow101remian = "";
  String _srow101advance = "";
  String _srow101totalpayment = "";
  String _srow101totalcost = "";
////////////////////////////////////
  String _srow102p = "";
  String _srow102i = "";
  String _srow102remian = "";
  String _srow102advance = "";
  String _srow102totalpayment = "";
  String _srow102totalcost = "";
////////////////////////////////////
  String _srow103p = "";
  String _srow103i = "";
  String _srow103remian = "";
  String _srow103advance = "";
  String _srow103totalpayment = "";
  String _srow103totalcost = "";
////////////////////////////////////
  String _srow104p = "";
  String _srow104i = "";
  String _srow104remian = "";
  String _srow104advance = "";
  String _srow104totalpayment = "";
  String _srow104totalcost = "";
////////////////////////////////////
  String _srow105p = "";
  String _srow105i = "";
  String _srow105remian = "";
  String _srow105advance = "";
  String _srow105totalpayment = "";
  String _srow105totalcost = "";
////////////////////////////////////
  String _srow106p = "";
  String _srow106i = "";
  String _srow106remian = "";
  String _srow106advance = "";
  String _srow106totalpayment = "";
  String _srow106totalcost = "";
////////////////////////////////////
  String _srow107p = "";
  String _srow107i = "";
  String _srow107remian = "";
  String _srow107advance = "";
  String _srow107totalpayment = "";
  String _srow107totalcost = "";
////////////////////////////////////
  String _srow108p = "";
  String _srow108i = "";
  String _srow108remian = "";
  String _srow108advance = "";
  String _srow108totalpayment = "";
  String _srow108totalcost = "";
////////////////////////////////////
  String _srow109p = "";
  String _srow109i = "";
  String _srow109remian = "";
  String _srow109advance = "";
  String _srow109totalpayment = "";
  String _srow109totalcost = "";
///////////////////////////////////
  String _srow110p = "";
  String _srow110i = "";
  String _srow110remian = "";
  String _srow110advance = "";
  String _srow110totalpayment = "";
  String _srow110totalcost = "";
////////////////////////////////////
///////////////////////////////////
  String _srow111p = "";
  String _srow111i = "";
  String _srow111remian = "";
  String _srow111advance = "";
  String _srow111totalpayment = "";
  String _srow111totalcost = "";
///////////////////////////////////
  String _srow112p = "";
  String _srow112i = "";
  String _srow112remian = "";
  String _srow112advance = "";
  String _srow112totalpayment = "";
  String _srow112totalcost = "";
///////////////////////////////////
  String _srow113p = "";
  String _srow113i = "";
  String _srow113remian = "";
  String _srow113advance = "";
  String _srow113totalpayment = "";
  String _srow113totalcost = "";
///////////////////////////////////
  String _srow114p = "";
  String _srow114i = "";
  String _srow114remian = "";
  String _srow114advance = "";
  String _srow114totalpayment = "";
  String _srow114totalcost = "";
///////////////////////////////////
  String _srow115p = "";
  String _srow115i = "";
  String _srow115remian = "";
  String _srow115advance = "";
  String _srow115totalpayment = "";
  String _srow115totalcost = "";
///////////////////////////////////
  String _srow116p = "";
  String _srow116i = "";
  String _srow116remian = "";
  String _srow116advance = "";
  String _srow116totalpayment = "";
  String _srow116totalcost = "";
///////////////////////////////////
  String _srow117p = "";
  String _srow117i = "";
  String _srow117remian = "";
  String _srow117advance = "";
  String _srow117totalpayment = "";
  String _srow117totalcost = "";
///////////////////////////////////
  String _srow118p = "";
  String _srow118i = "";
  String _srow118remian = "";
  String _srow118advance = "";
  String _srow118totalpayment = "";
  String _srow118totalcost = "";
///////////////////////////////////
  String _srow119p = "";
  String _srow119i = "";
  String _srow119remian = "";
  String _srow119advance = "";
  String _srow119totalpayment = "";
  String _srow119totalcost = "";
///////////////////////////////////
  String _srow120p = "";
  String _srow120i = "";
  String _srow120remian = "";
  String _srow120advance = "";
  String _srow120totalpayment = "";
  String _srow120totalcost = "";



  final TextEditingController _principalAmount = TextEditingController();
  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();

  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

        backgroundColor: Colors.grey,
        resizeToAvoidBottomInset: false,

        body: SingleChildScrollView(
          child: Stack(
            children: [

              Container(
                foregroundDecoration: BoxDecoration(color: Colors.black26),
                height: 1000,
                child: Image.asset(
                  'assets/dark.jpg', fit: BoxFit.cover, width: MediaQuery
                    .of(context)
                    .size
                    .width,),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 10),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.backward,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(width: 50,),
                        Container(child: Text("LOAN CALCULATOR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                      ],
                    ),
                  ),

                  Divider(color: Colors.white,),
                  Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Column(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 20, bottom: 5),
                              child: TextField(
                                style: TextStyle(color: Colors.black),

                                controller: _principalAmount,
                                decoration: InputDecoration(
                                    hoverColor: Colors.red,
                                    hintText: "Enter Principal Amount",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.transparent),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.transparent),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                    prefixIcon: Icon(
                                      Icons.screen_share,
                                      color: Colors.red,
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[200]
                                ),
                                keyboardType: TextInputType.number,
                              )
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 4),
                              child: TextField(
                                style: TextStyle(color: Colors.black),

                                controller: _interestRate,
                                decoration: InputDecoration(
                                    hoverColor: Colors.red,
                                    hintText: "Enter Interest Rate",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.transparent),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.transparent),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                    prefixIcon: Icon(
                                      Icons.rate_review,
                                      color: Colors.red,
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[200]),
                                keyboardType: TextInputType.number,
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 6, bottom: 5),
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                    flex: 4,
                                    fit: FlexFit.tight,
                                    child: TextField(
                                      style: TextStyle(color: Colors.black),

                                      controller: _tenure,
                                      decoration: InputDecoration(
                                        hoverColor: Colors.red,
                                        hintText: "Tenure",
                                        hintStyle: TextStyle(
                                            color: Colors.grey),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        prefixIcon: Icon(
                                          Icons.timer,
                                          color: Colors.red,
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                      ),
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                  Flexible(
                                      flex: 1,
                                      child: Column(children: [
                                        Text(_tenureType,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        Switch(
                                            activeColor: Colors.white,
                                            value: _switchValue,
                                            onChanged: (bool value) {
                                              print(value);

                                              if (value) {
                                                _tenureType = _tenureTypes[1];
                                              } else {
                                                _tenureType = _tenureTypes[0];
                                              }

                                              setState(() {
                                                _switchValue = value;
                                              });
                                            })
                                      ]))
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.red,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1,
                                      color: Colors.red,
                                      spreadRadius: 1,
                                      offset: Offset.zero)
                                ]),
                            width: 300,
                            child: FlatButton(
                              onPressed: _handleCalculation,
                              child: Text(
                                "Calculate",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              textColor: Colors.white,
                            ),
                          ),
                          emiResultsWidget(_emiResult)

                        ],
                      ))
                ],
              ),
            ],
          ),
        ));
  }

  void _handleCalculation() {
    
    //  Amortization
    //  A = Payemtn amount per period
    //  P = Initial Printical (loan amount)
    //  r = interest rate
    //  n = total number of payments or periods

    double A = 0.0;
    double T = 0.0;
    double S = 0.0;
    double PR = 0.0;
    double p1 = 0.0;
    double inte = 0.0;
    double advance = 0.0;
    double fullpayment = 0.0;
    double totalcost = 0.0;


    double P = double.parse(_principalAmount.text);
    double r = double.tryParse(_interestRate.text) / 12 / 100;
    int n = _tenureType == "Year(s)"
        ? int.parse(_tenure.text) * 12
        : int.parse(_tenure.text);

    A = (P * r * pow((1 + r), n) / (pow((1 + r), n) - 1));
    T = ((A * n) - P);
    S = (A * n);
    PR = ((P * r));
    p1 = (A - PR);
    inte = (P - p1);
    advance = inte * 5 / 100;
    fullpayment = advance + inte;
    totalcost = fullpayment + A;
    _emiResult = A.toStringAsFixed(2);
    _totalinterest = T.toStringAsFixed(2);
    _totalamount = S.toStringAsFixed(2);

    Map<String, double> dataMap = {
      "TOTAL INTERST": T,
      "TOTAL AMOUNT": S,

    };

    ////////////////////////////////////
    _p1 = p1.toStringAsFixed(2);
    _pR = PR.toStringAsFixed(2);
    _int = inte.toStringAsFixed(2);
    _principle = P.toStringAsFixed(2);
    _advance = advance.toStringAsFixed(2);
    _fullpayment = fullpayment.toStringAsFixed(2);
    _totalcost = totalcost.toStringAsFixed(2);
////////////////////////////////////////////////row 2
    double _row2principle = 0.0;
    double _row2installment = 0.0;
    double _row2p = 0.0;
    double _row2i = 0.0;
    double _row2remian = 0.0;
    double _row2advance = 0.0;
    double _row2totalpayment = 0.0;
    double _row2totalcost = 0.0;

    _row2i = (inte * r);
    _row2p = A - _row2i;
    _row2remian = (inte - _row2p);
    _row2advance = _row2remian * 5 / 100;
    _row2totalpayment = _row2remian + _row2advance;
    _row2totalcost = _row2totalpayment + (A * 2);
    _srow2principle = inte.toStringAsFixed(2);
    _srow2i = _row2i.toStringAsFixed(2);
    _srow2p = _row2p.toStringAsFixed(2);
    _srow2remian = _row2remian.toStringAsFixed(2);
    _srow2advance = _row2advance.toStringAsFixed(2);
    _srow2totalpayment = _row2totalpayment.toStringAsFixed(2);
    _srow2totalcost = _row2totalcost.toStringAsFixed(2);
////////////////////////////////////////////////row 3
    double _row3p = 0.0;
    double _row3i = 0.0;
    double _row3remian = 0.0;
    double _row3advance = 0.0;
    double _row3totalpayment = 0.0;
    double _row3totalcost = 0.0;

    _row3i = (_row2remian * r);
    _row3p = A - _row3i;
    _row3remian = (_row2remian - _row3p);
    _row3advance = _row3remian * 5 / 100;
    _row3totalpayment = _row3remian + _row3advance;
    _row3totalcost = _row3totalpayment + (A * 3);
    _srow3i = _row3i.toStringAsFixed(2);
    _srow3p = _row3p.toStringAsFixed(2);
    _srow3remian = _row3remian.toStringAsFixed(2);
    _srow3advance = _row3advance.toStringAsFixed(2);
    _srow3totalpayment = _row3totalpayment.toStringAsFixed(2);
    _srow3totalcost = _row3totalcost.toStringAsFixed(2);
////////////////////////////////////////////////row 4
    double _row4p = 0.0;
    double _row4i = 0.0;
    double _row4remian = 0.0;
    double _row4advance = 0.0;
    double _row4totalpayment = 0.0;
    double _row4totalcost = 0.0;

    _row4i = (_row3remian * r);
    _row4p = A - _row4i;
    _row4remian = (_row3remian - _row4p);
    _row4advance = _row4remian * 5 / 100;
    _row4totalpayment = _row4remian + _row4advance;
    _row4totalcost = _row4totalpayment + (A * 4);
    _srow4i = _row4i.toStringAsFixed(2);
    _srow4p = _row4p.toStringAsFixed(2);
    _srow4remian = _row4remian.toStringAsFixed(2);
    _srow4advance = _row4advance.toStringAsFixed(2);
    _srow4totalpayment = _row4totalpayment.toStringAsFixed(2);
    _srow4totalcost = _row4totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////row 5
    double _row5p = 0.0;
    double _row5i = 0.0;
    double _row5remian = 0.0;
    double _row5advance = 0.0;
    double _row5totalpayment = 0.0;
    double _row5totalcost = 0.0;

    _row5i = (_row4remian * r);
    _row5p = A - _row5i;
    _row5remian = (_row4remian - _row5p);
    _row5advance = _row5remian * 5 / 100;
    _row5totalpayment = _row5remian + _row5advance;
    _row5totalcost = _row5totalpayment + (A * 5);
    _srow5i = _row5i.toStringAsFixed(2);
    _srow5p = _row5p.toStringAsFixed(2);
    _srow5remian = _row5remian.toStringAsFixed(2);
    _srow5advance = _row5advance.toStringAsFixed(2);
    _srow5totalpayment = _row5totalpayment.toStringAsFixed(2);
    _srow5totalcost = _row5totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////row 6
    double _row6p = 0.0;
    double _row6i = 0.0;
    double _row6remian = 0.0;
    double _row6advance = 0.0;
    double _row6totalpayment = 0.0;
    double _row6totalcost = 0.0;

    _row6i = (_row5remian * r);
    _row6p = A - _row6i;
    _row6remian = (_row5remian - _row6p);
    _row6advance = _row6remian * 5 / 100;
    _row6totalpayment = _row6remian + _row6advance;
    _row6totalcost = _row6totalpayment + (A * 6);
    _srow6i = _row6i.toStringAsFixed(2);
    _srow6p = _row6p.toStringAsFixed(2);
    _srow6remian = _row6remian.toStringAsFixed(2);
    _srow6advance = _row6advance.toStringAsFixed(2);
    _srow6totalpayment = _row6totalpayment.toStringAsFixed(2);
    _srow6totalcost = _row6totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////row 7
    double _row7p = 0.0;
    double _row7i = 0.0;
    double _row7remian = 0.0;
    double _row7advance = 0.0;
    double _row7totalpayment = 0.0;
    double _row7totalcost = 0.0;

    _row7i = (_row6remian * r);
    _row7p = A - _row7i;
    _row7remian = (_row6remian - _row7p);
    _row7advance = _row7remian * 5 / 100;
    _row7totalpayment = _row7remian + _row7advance;
    _row7totalcost = _row7totalpayment + (A * 7);
    _srow7i = _row7i.toStringAsFixed(2);
    _srow7p = _row7p.toStringAsFixed(2);
    _srow7remian = _row7remian.toStringAsFixed(2);
    _srow7advance = _row7advance.toStringAsFixed(2);
    _srow7totalpayment = _row7totalpayment.toStringAsFixed(2);
    _srow7totalcost = _row7totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////row 8
    double _row8p = 0.0;
    double _row8i = 0.0;
    double _row8remian = 0.0;
    double _row8advance = 0.0;
    double _row8totalpayment = 0.0;
    double _row8totalcost = 0.0;

    _row8i = (_row7remian * r);
    _row8p = A - _row8i;
    _row8remian = (_row7remian - _row8p);
    _row8advance = _row8remian * 5 / 100;
    _row8totalpayment = _row8remian + _row8advance;
    _row8totalcost = _row8totalpayment + (A * 8);
    _srow8i = _row8i.toStringAsFixed(2);
    _srow8p = _row8p.toStringAsFixed(2);
    _srow8remian = _row8remian.toStringAsFixed(2);
    _srow8advance = _row8advance.toStringAsFixed(2);
    _srow8totalpayment = _row8totalpayment.toStringAsFixed(2);
    _srow8totalcost = _row8totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////row 9
    double _row9p = 0.0;
    double _row9i = 0.0;
    double _row9remian = 0.0;
    double _row9advance = 0.0;
    double _row9totalpayment = 0.0;
    double _row9totalcost = 0.0;

    _row9i = (_row8remian * r);
    _row9p = A - _row9i;
    _row9remian = (_row8remian - _row9p);
    _row9advance = _row9remian * 5 / 100;
    _row9totalpayment = _row9remian + _row9advance;
    _row9totalcost = _row9totalpayment + (A * 9);
    _srow9i = _row9i.toStringAsFixed(2);
    _srow9p = _row9p.toStringAsFixed(2);
    _srow9remian = _row9remian.toStringAsFixed(2);
    _srow9advance = _row9advance.toStringAsFixed(2);
    _srow9totalpayment = _row9totalpayment.toStringAsFixed(2);
    _srow9totalcost = _row9totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////row10
    double _row10p = 0.0;
    double _row10i = 0.0;
    double _row10remian = 0.0;
    double _row10advance = 0.0;
    double _row10totalpayment = 0.0;
    double _row10totalcost = 0.0;

    _row10i = (_row9remian * r);
    _row10p = A - _row10i;
    _row10remian = (_row9remian - _row10p);
    _row10advance = _row10remian * 5 / 100;
    _row10totalpayment = _row10remian + _row10advance;
    _row10totalcost = _row10totalpayment + (A * 10);
    _srow10i = _row10i.toStringAsFixed(2);
    _srow10p = _row10p.toStringAsFixed(2);
    _srow10remian = _row10remian.toStringAsFixed(2);
    _srow10advance = _row10advance.toStringAsFixed(2);
    _srow10totalpayment = _row10totalpayment.toStringAsFixed(2);
    _srow10totalcost = _row10totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////row11
    double _row11p = 0.0;
    double _row11i = 0.0;
    double _row11remian = 0.0;
    double _row11advance = 0.0;
    double _row11totalpayment = 0.0;
    double _row11totalcost = 0.0;

    _row11i = (_row10remian * r);
    _row11p = A - _row11i;
    _row11remian = (_row10remian - _row11p);
    _row11advance = _row11remian * 5 / 100;
    _row11totalpayment = _row11remian + _row11advance;
    _row11totalcost = _row11totalpayment + (A * 11);
    _srow11i = _row11i.toStringAsFixed(2);
    _srow11p = _row11p.toStringAsFixed(2);
    _srow11remian = _row11remian.toStringAsFixed(2);
    _srow11advance = _row11advance.toStringAsFixed(2);
    _srow11totalpayment = _row11totalpayment.toStringAsFixed(2);
    _srow11totalcost = _row11totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////row12
    double _row12p = 0.0;
    double _row12i = 0.0;
    double _row12remian = 0.0;
    double _row12advance = 0.0;
    double _row12totalpayment = 0.0;
    double _row12totalcost = 0.0;

    _row12i = (_row11remian * r);
    _row12p = A - _row12i;
    _row12remian = (_row11remian - _row12p);
    _row12advance = _row12remian * 5 / 100;
    _row12totalpayment = _row12remian + _row12advance;
    _row12totalcost = _row12totalpayment + (A * 12);
    _srow12i = _row12i.toStringAsFixed(2);
    _srow12p = _row12p.toStringAsFixed(2);
    _srow12remian = _row12remian.toStringAsFixed(2);
    _srow12advance = _row12advance.toStringAsFixed(2);
    _srow12totalpayment = _row12totalpayment.toStringAsFixed(2);
    _srow12totalcost = _row12totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////ROW13
    double _row13p = 0.0;
    double _row13i = 0.0;
    double _row13remian = 0.0;
    double _row13advance = 0.0;
    double _row13totalpayment = 0.0;
    double _row13totalcost = 0.0;

    _row13i = (_row12remian * r);
    _row13p = A - _row13i;
    _row13remian = (_row12remian - _row13p);
    _row13advance = _row13remian * 5 / 100;
    _row13totalpayment = _row13remian + _row13advance;
    _row13totalcost = _row13totalpayment + (A * 13);
    _srow13i = _row13i.toStringAsFixed(2);
    _srow13p = _row13p.toStringAsFixed(2);
    _srow13remian = _row13remian.toStringAsFixed(2);
    _srow13advance = _row13advance.toStringAsFixed(2);
    _srow13totalpayment = _row13totalpayment.toStringAsFixed(2);
    _srow13totalcost = _row13totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////ROW14
    double _row14p = 0.0;
    double _row14i = 0.0;
    double _row14remian = 0.0;
    double _row14advance = 0.0;
    double _row14totalpayment = 0.0;
    double _row14totalcost = 0.0;

    _row14i = (_row13remian * r);
    _row14p = A - _row14i;
    _row14remian = (_row13remian - _row14p);
    _row14advance = _row14remian * 5 / 100;
    _row14totalpayment = _row14remian + _row14advance;
    _row14totalcost = _row14totalpayment + (A * 14);
    _srow14i = _row14i.toStringAsFixed(2);
    _srow14p = _row14p.toStringAsFixed(2);
    _srow14remian = _row14remian.toStringAsFixed(2);
    _srow14advance = _row14advance.toStringAsFixed(2);
    _srow14totalpayment = _row14totalpayment.toStringAsFixed(2);
    _srow14totalcost = _row14totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////ROW15
    double _row15p = 0.0;
    double _row15i = 0.0;
    double _row15remian = 0.0;
    double _row15advance = 0.0;
    double _row15totalpayment = 0.0;
    double _row15totalcost = 0.0;

    _row15i = (_row14remian * r);
    _row15p = A - _row15i;
    _row15remian = (_row14remian - _row15p);
    _row15advance = _row15remian * 5 / 100;
    _row15totalpayment = _row15remian + _row15advance;
    _row15totalcost = _row15totalpayment + (A * 15);
    _srow15i = _row15i.toStringAsFixed(2);
    _srow15p = _row15p.toStringAsFixed(2);
    _srow15remian = _row15remian.toStringAsFixed(2);
    _srow15advance = _row15advance.toStringAsFixed(2);
    _srow15totalpayment = _row15totalpayment.toStringAsFixed(2);
    _srow15totalcost = _row15totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////ROW16
    double _row16p = 0.0;
    double _row16i = 0.0;
    double _row16remian = 0.0;
    double _row16advance = 0.0;
    double _row16totalpayment = 0.0;
    double _row16totalcost = 0.0;

    _row16i = (_row15remian * r);
    _row16p = A - _row16i;
    _row16remian = (_row15remian - _row16p);
    _row16advance = _row16remian * 5 / 100;
    _row16totalpayment = _row16remian + _row16advance;
    _row16totalcost = _row16totalpayment + (A * 16);
    _srow16i = _row16i.toStringAsFixed(2);
    _srow16p = _row16p.toStringAsFixed(2);
    _srow16remian = _row16remian.toStringAsFixed(2);
    _srow16advance = _row16advance.toStringAsFixed(2);
    _srow16totalpayment = _row16totalpayment.toStringAsFixed(2);
    _srow16totalcost = _row16totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////ROW17
    double _row17p = 0.0;
    double _row17i = 0.0;
    double _row17remian = 0.0;
    double _row17advance = 0.0;
    double _row17totalpayment = 0.0;
    double _row17totalcost = 0.0;

    _row17i = (_row16remian * r);
    _row17p = A - _row17i;
    _row17remian = (_row16remian - _row17p);
    _row17advance = _row17remian * 5 / 100;
    _row17totalpayment = _row17remian + _row17advance;
    _row17totalcost = _row17totalpayment + (A * 17);
    _srow17i = _row17i.toStringAsFixed(2);
    _srow17p = _row17p.toStringAsFixed(2);
    _srow17remian = _row17remian.toStringAsFixed(2);
    _srow17advance = _row17advance.toStringAsFixed(2);
    _srow17totalpayment = _row17totalpayment.toStringAsFixed(2);
    _srow17totalcost = _row17totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////ROW18
    double _row18p = 0.0;
    double _row18i = 0.0;
    double _row18remian = 0.0;
    double _row18advance = 0.0;
    double _row18totalpayment = 0.0;
    double _row18totalcost = 0.0;

    _row18i = (_row17remian * r);
    _row18p = A - _row18i;
    _row18remian = (_row17remian - _row18p);
    _row18advance = _row18remian * 5 / 100;
    _row18totalpayment = _row18remian + _row18advance;
    _row18totalcost = _row18totalpayment + (A * 18);
    _srow18i = _row18i.toStringAsFixed(2);
    _srow18p = _row18p.toStringAsFixed(2);
    _srow18remian = _row18remian.toStringAsFixed(2);
    _srow18advance = _row18advance.toStringAsFixed(2);
    _srow18totalpayment = _row18totalpayment.toStringAsFixed(2);
    _srow18totalcost = _row18totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////ROW19
    double _row19p = 0.0;
    double _row19i = 0.0;
    double _row19remian = 0.0;
    double _row19advance = 0.0;
    double _row19totalpayment = 0.0;
    double _row19totalcost = 0.0;

    _row19i = (_row18remian * r);
    _row19p = A - _row19i;
    _row19remian = (_row18remian - _row19p);
    _row19advance = _row19remian * 5 / 100;
    _row19totalpayment = _row19remian + _row19advance;
    _row19totalcost = _row19totalpayment + (A * 19);
    _srow19i = _row19i.toStringAsFixed(2);
    _srow19p = _row19p.toStringAsFixed(2);
    _srow19remian = _row19remian.toStringAsFixed(2);
    _srow19advance = _row19advance.toStringAsFixed(2);
    _srow19totalpayment = _row19totalpayment.toStringAsFixed(2);
    _srow19totalcost = _row19totalcost.toStringAsFixed(2);
    ////////////////////////////////////////////////ROW20
    double _row20p = 0.0;
    double _row20i = 0.0;
    double _row20remian = 0.0;
    double _row20advance = 0.0;
    double _row20totalpayment = 0.0;
    double _row20totalcost = 0.0;

    _row20i = (_row19remian * r);
    _row20p = A - _row20i;
    _row20remian = (_row19remian - _row20p);
    _row20advance = _row20remian * 5 / 100;
    _row20totalpayment = _row20remian + _row20advance;
    _row20totalcost = _row20totalpayment + (A * 20);
    _srow20i = _row20i.toStringAsFixed(2);
    _srow20p = _row20p.toStringAsFixed(2);
    _srow20remian = _row20remian.toStringAsFixed(2);
    _srow20advance = _row20advance.toStringAsFixed(2);
    _srow20totalpayment = _row20totalpayment.toStringAsFixed(2);
    _srow20totalcost = _row20totalcost.toStringAsFixed(2);
    ///////////////////////////////////////////////ROW21
    double _row21p = 0.0;
    double _row21i = 0.0;
    double _row21remian = 0.0;
    double _row21advance = 0.0;
    double _row21totalpayment = 0.0;
    double _row21totalcost = 0.0;

    _row21i = (_row20remian * r);
    _row21p = A - _row21i;
    _row21remian = (_row20remian - _row21p);
    _row21advance = _row21remian * 5 / 100;
    _row21totalpayment = _row21remian + _row21advance;
    _row21totalcost = _row21totalpayment + (A * 21);
    _srow21i = _row21i.toStringAsFixed(2);
    _srow21p = _row21p.toStringAsFixed(2);
    _srow21remian = _row21remian.toStringAsFixed(2);
    _srow21advance = _row21advance.toStringAsFixed(2);
    _srow21totalpayment = _row21totalpayment.toStringAsFixed(2);
    _srow21totalcost = _row21totalcost.toStringAsFixed(2);
    ///////////////////////////////////////////////ROW22
    double _row22p = 0.0;
    double _row22i = 0.0;
    double _row22remian = 0.0;
    double _row22advance = 0.0;
    double _row22totalpayment = 0.0;
    double _row22totalcost = 0.0;

    _row22i = (_row21remian * r);
    _row22p = A - _row22i;
    _row22remian = (_row21remian - _row22p);
    _row22advance = _row22remian * 5 / 100;
    _row22totalpayment = _row22remian + _row22advance;
    _row22totalcost = _row22totalpayment + (A * 22);
    _srow22i = _row22i.toStringAsFixed(2);
    _srow22p = _row22p.toStringAsFixed(2);
    _srow22remian = _row22remian.toStringAsFixed(2);
    _srow22advance = _row22advance.toStringAsFixed(2);
    _srow22totalpayment = _row22totalpayment.toStringAsFixed(2);
    _srow22totalcost = _row22totalcost.toStringAsFixed(2);
    ///////////////////////////////////////////////ROW23
    double _row23p = 0.0;
    double _row23i = 0.0;
    double _row23remian = 0.0;
    double _row23advance = 0.0;
    double _row23totalpayment = 0.0;
    double _row23totalcost = 0.0;

    _row23i = (_row22remian * r);
    _row23p = A - _row23i;
    _row23remian = (_row22remian - _row23p);
    _row23advance = _row23remian * 5 / 100;
    _row23totalpayment = _row23remian + _row23advance;
    _row23totalcost = _row23totalpayment + (A * 23);
    _srow23i = _row23i.toStringAsFixed(2);
    _srow23p = _row23p.toStringAsFixed(2);
    _srow23remian = _row23remian.toStringAsFixed(2);
    _srow23advance = _row23advance.toStringAsFixed(2);
    _srow23totalpayment = _row23totalpayment.toStringAsFixed(2);
    _srow23totalcost = _row23totalcost.toStringAsFixed(2);
    ///////////////////////////////////////////////ROW24
    double _row24p = 0.0;
    double _row24i = 0.0;
    double _row24remian = 0.0;
    double _row24advance = 0.0;
    double _row24totalpayment = 0.0;
    double _row24totalcost = 0.0;

    _row24i = (_row23remian * r);
    _row24p = A - _row24i;
    _row24remian = (_row23remian - _row24p);
    _row24advance = _row24remian * 5 / 100;
    _row24totalpayment = _row24remian + _row24advance;
    _row24totalcost = _row24totalpayment + (A * 24);
    _srow24i = _row24i.toStringAsFixed(2);
    _srow24p = _row24p.toStringAsFixed(2);
    _srow24remian = _row24remian.toStringAsFixed(2);
    _srow24advance = _row24advance.toStringAsFixed(2);
    _srow24totalpayment = _row24totalpayment.toStringAsFixed(2);
    _srow24totalcost = _row24totalcost.toStringAsFixed(2);

    /////////////////////////////////////////////////////////////////////
    double _row25p = 0.0;
    double _row25i = 0.0;
    double _row25remian = 0.0;
    double _row25advance = 0.0;
    double _row25totalpayment = 0.0;
    double _row25totalcost = 0.0;

    _row25i = (_row24remian * r);
    _row25p = A - _row25i;
    _row25remian = (_row24remian - _row25p);
    _row25advance = _row25remian * 5 / 100;
    _row25totalpayment = _row25remian + _row25advance;
    _row25totalcost = _row25totalpayment + (A * 25);
    _srow25p = _row25p.toStringAsFixed(2);
    _srow25i = _row25i.toStringAsFixed(2);
    _srow25remian = _row25remian.toStringAsFixed(2);
    _srow25advance = _row25advance.toStringAsFixed(2);
    _srow25totalpayment = _row25totalpayment.toStringAsFixed(2);
    _srow25totalcost = _row25totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row26p = 0.0;
    double _row26i = 0.0;
    double _row26remian = 0.0;
    double _row26advance = 0.0;
    double _row26totalpayment = 0.0;
    double _row26totalcost = 0.0;

    _row26i = (_row25remian * r);
    _row26p = A - _row26i;
    _row26remian = (_row25remian - _row26p);
    _row26advance = _row26remian * 5 / 100;
    _row26totalpayment = _row26remian + _row26advance;
    _row26totalcost = _row26totalpayment + (A * 26);
    _srow26p = _row26p.toStringAsFixed(2);

    _srow26i = _row26i.toStringAsFixed(2);
    _srow26remian = _row26remian.toStringAsFixed(2);
    _srow26advance = _row26advance.toStringAsFixed(2);
    _srow26totalpayment = _row26totalpayment.toStringAsFixed(2);
    _srow26totalcost = _row26totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row27p = 0.0;
    double _row27i = 0.0;
    double _row27remian = 0.0;
    double _row27advance = 0.0;
    double _row27totalpayment = 0.0;
    double _row27totalcost = 0.0;

    _row27i = (_row26remian * r);
    _row27p = A - _row27i;
    _row27remian = (_row26remian - _row27p);
    _row27advance = _row27remian * 5 / 100;
    _row27totalpayment = _row27remian + _row27advance;
    _row27totalcost = _row27totalpayment + (A * 27);
    _srow27p = _row27p.toStringAsFixed(2);

    _srow27i = _row27i.toStringAsFixed(2);
    _srow27remian = _row27remian.toStringAsFixed(2);
    _srow27advance = _row27advance.toStringAsFixed(2);
    _srow27totalpayment = _row27totalpayment.toStringAsFixed(2);
    _srow27totalcost = _row27totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row28p = 0.0;
    double _row28i = 0.0;
    double _row28remian = 0.0;
    double _row28advance = 0.0;
    double _row28totalpayment = 0.0;
    double _row28totalcost = 0.0;

    _row28i = (_row27remian * r);
    _row28p = A - _row28i;
    _row28remian = (_row27remian - _row28p);
    _row28advance = _row28remian * 5 / 100;
    _row28totalpayment = _row28remian + _row28advance;
    _row28totalcost = _row28totalpayment + (A * 28);
    _srow28p = _row28p.toStringAsFixed(2);

    _srow28i = _row28i.toStringAsFixed(2);
    _srow28remian = _row28remian.toStringAsFixed(2);
    _srow28advance = _row28advance.toStringAsFixed(2);
    _srow28totalpayment = _row28totalpayment.toStringAsFixed(2);
    _srow28totalcost = _row28totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row29p = 0.0;
    double _row29i = 0.0;
    double _row29remian = 0.0;
    double _row29advance = 0.0;
    double _row29totalpayment = 0.0;
    double _row29totalcost = 0.0;

    _row29i = (_row28remian * r);
    _row29p = A - _row29i;
    _row29remian = (_row28remian - _row29p);
    _row29advance = _row29remian * 5 / 100;
    _row29totalpayment = _row29remian + _row29advance;
    _row29totalcost = _row29totalpayment + (A * 29);
    _srow29p = _row29p.toStringAsFixed(2);

    _srow29i = _row29i.toStringAsFixed(2);
    _srow29remian = _row29remian.toStringAsFixed(2);
    _srow29advance = _row29advance.toStringAsFixed(2);
    _srow29totalpayment = _row29totalpayment.toStringAsFixed(2);
    _srow29totalcost = _row29totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row30p = 0.0;
    double _row30i = 0.0;
    double _row30remian = 0.0;
    double _row30advance = 0.0;
    double _row30totalpayment = 0.0;
    double _row30totalcost = 0.0;

    _row30i = (_row29remian * r);
    _row30p = A - _row30i;
    _row30remian = (_row29remian - _row30p);
    _row30advance = _row30remian * 5 / 100;
    _row30totalpayment = _row30remian + _row30advance;
    _row30totalcost = _row30totalpayment + (A * 30);
    _srow30p = _row30p.toStringAsFixed(2);

    _srow30i = _row30i.toStringAsFixed(2);
    _srow30remian = _row30remian.toStringAsFixed(2);
    _srow30advance = _row30advance.toStringAsFixed(2);
    _srow30totalpayment = _row30totalpayment.toStringAsFixed(2);
    _srow30totalcost = _row30totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row31p = 0.0;
    double _row31i = 0.0;
    double _row31remian = 0.0;
    double _row31advance = 0.0;
    double _row31totalpayment = 0.0;
    double _row31totalcost = 0.0;

    _row31i = (_row30remian * r);
    _row31p = A - _row31i;
    _row31remian = (_row30remian - _row31p);
    _row31advance = _row31remian * 5 / 100;
    _row31totalpayment = _row31remian + _row31advance;
    _row31totalcost = _row31totalpayment + (A * 31);
    _srow31p = _row31p.toStringAsFixed(2);

    _srow31i = _row31i.toStringAsFixed(2);
    _srow31remian = _row31remian.toStringAsFixed(2);
    _srow31advance = _row31advance.toStringAsFixed(2);
    _srow31totalpayment = _row31totalpayment.toStringAsFixed(2);
    _srow31totalcost = _row31totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row32p = 0.0;
    double _row32i = 0.0;
    double _row32remian = 0.0;
    double _row32advance = 0.0;
    double _row32totalpayment = 0.0;
    double _row32totalcost = 0.0;

    _row32i = (_row31remian * r);
    _row32p = A - _row32i;
    _row32remian = (_row31remian - _row32p);
    _row32advance = _row32remian * 5 / 100;
    _row32totalpayment = _row32remian + _row32advance;
    _row32totalcost = _row32totalpayment + (A * 32);
    _srow32i = _row32i.toStringAsFixed(2);
    _srow32p = _row32p.toStringAsFixed(2);

    _srow32remian = _row32remian.toStringAsFixed(2);
    _srow32advance = _row32advance.toStringAsFixed(2);
    _srow32totalpayment = _row32totalpayment.toStringAsFixed(2);
    _srow32totalcost = _row32totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row33p = 0.0;
    double _row33i = 0.0;
    double _row33remian = 0.0;
    double _row33advance = 0.0;
    double _row33totalpayment = 0.0;
    double _row33totalcost = 0.0;

    _row33i = (_row32remian * r);
    _row33p = A - _row33i;
    _row33remian = (_row32remian - _row33p);
    _row33advance = _row33remian * 5 / 100;
    _row33totalpayment = _row33remian + _row33advance;
    _row33totalcost = _row33totalpayment + (A * 33);
    _srow33p = _row33p.toStringAsFixed(2);

    _srow33i = _row33i.toStringAsFixed(2);
    _srow33remian = _row33remian.toStringAsFixed(2);
    _srow33advance = _row33advance.toStringAsFixed(2);
    _srow33totalpayment = _row33totalpayment.toStringAsFixed(2);
    _srow33totalcost = _row33totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row34p = 0.0;
    double _row34i = 0.0;
    double _row34remian = 0.0;
    double _row34advance = 0.0;
    double _row34totalpayment = 0.0;
    double _row34totalcost = 0.0;

    _row34i = (_row33remian * r);
    _row34p = A - _row34i;
    _row34remian = (_row33remian - _row34p);
    _row34advance = _row34remian * 5 / 100;
    _row34totalpayment = _row34remian + _row34advance;
    _row34totalcost = _row34totalpayment + (A * 34);
    _srow34p = _row34p.toStringAsFixed(2);

    _srow34i = _row34i.toStringAsFixed(2);
    _srow34remian = _row34remian.toStringAsFixed(2);
    _srow34advance = _row34advance.toStringAsFixed(2);
    _srow34totalpayment = _row34totalpayment.toStringAsFixed(2);
    _srow34totalcost = _row34totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row35p = 0.0;
    double _row35i = 0.0;
    double _row35remian = 0.0;
    double _row35advance = 0.0;
    double _row35totalpayment = 0.0;
    double _row35totalcost = 0.0;

    _row35i = (_row34remian * r);
    _row35p = A - _row35i;
    _row35remian = (_row34remian - _row35p);
    _row35advance = _row35remian * 5 / 100;
    _row35totalpayment = _row35remian + _row35advance;
    _row35totalcost = _row35totalpayment + (A * 35);
    _srow35p = _row35p.toStringAsFixed(2);

    _srow35i = _row35i.toStringAsFixed(2);
    _srow35remian = _row35remian.toStringAsFixed(2);
    _srow35advance = _row35advance.toStringAsFixed(2);
    _srow35totalpayment = _row35totalpayment.toStringAsFixed(2);
    _srow35totalcost = _row35totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row36p = 0.0;
    double _row36i = 0.0;
    double _row36remian = 0.0;
    double _row36advance = 0.0;
    double _row36totalpayment = 0.0;
    double _row36totalcost = 0.0;

    _row36i = (_row35remian * r);
    _row36p = A - _row36i;
    _row36remian = (_row35remian - _row36p);
    _row36advance = _row36remian * 5 / 100;
    _row36totalpayment = _row36remian + _row36advance;
    _row36totalcost = _row36totalpayment + (A * 36);
    _srow36p = _row36p.toStringAsFixed(2);

    _srow36i = _row36i.toStringAsFixed(2);
    _srow36remian = _row36remian.toStringAsFixed(2);
    _srow36advance = _row36advance.toStringAsFixed(2);
    _srow36totalpayment = _row36totalpayment.toStringAsFixed(2);
    _srow36totalcost = _row36totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row37p = 0.0;
    double _row37i = 0.0;
    double _row37remian = 0.0;
    double _row37advance = 0.0;
    double _row37totalpayment = 0.0;
    double _row37totalcost = 0.0;

    _row37i = (_row36remian * r);
    _row37p = A - _row37i;
    _row37remian = (_row36remian - _row37p);
    _row37advance = _row37remian * 5 / 100;
    _row37totalpayment = _row37remian + _row37advance;
    _row37totalcost = _row37totalpayment + (A * 37);
    _srow37i = _row37i.toStringAsFixed(2);
    _srow37p = _row37p.toStringAsFixed(2);

    _srow37remian = _row37remian.toStringAsFixed(2);
    _srow37advance = _row37advance.toStringAsFixed(2);
    _srow37totalpayment = _row37totalpayment.toStringAsFixed(2);
    _srow37totalcost = _row37totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row38p = 0.0;
    double _row38i = 0.0;
    double _row38remian = 0.0;
    double _row38advance = 0.0;
    double _row38totalpayment = 0.0;
    double _row38totalcost = 0.0;

    _row38i = (_row37remian * r);
    _row38p = A - _row38i;
    _row38remian = (_row37remian - _row38p);
    _row38advance = _row38remian * 5 / 100;
    _row38totalpayment = _row38remian + _row38advance;
    _row38totalcost = _row38totalpayment + (A * 38);
    _srow38i = _row38i.toStringAsFixed(2);
    _srow38p = _row38p.toStringAsFixed(2);

    _srow38remian = _row38remian.toStringAsFixed(2);
    _srow38advance = _row38advance.toStringAsFixed(2);
    _srow38totalpayment = _row38totalpayment.toStringAsFixed(2);
    _srow38totalcost = _row38totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row39p = 0.0;
    double _row39i = 0.0;
    double _row39remian = 0.0;
    double _row39advance = 0.0;
    double _row39totalpayment = 0.0;
    double _row39totalcost = 0.0;

    _row39i = (_row38remian * r);
    _row39p = A - _row39i;
    _row39remian = (_row38remian - _row39p);
    _row39advance = _row39remian * 5 / 100;
    _row39totalpayment = _row39remian + _row39advance;
    _row39totalcost = _row39totalpayment + (A * 39);
    _srow39i = _row39i.toStringAsFixed(2);
    _srow39p = _row39p.toStringAsFixed(2);

    _srow39remian = _row39remian.toStringAsFixed(2);
    _srow39advance = _row39advance.toStringAsFixed(2);
    _srow39totalpayment = _row39totalpayment.toStringAsFixed(2);
    _srow39totalcost = _row39totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row40p = 0.0;
    double _row40i = 0.0;
    double _row40remian = 0.0;
    double _row40advance = 0.0;
    double _row40totalpayment = 0.0;
    double _row40totalcost = 0.0;

    _row40i = (_row39remian * r);
    _row40p = A - _row40i;
    _row40remian = (_row39remian - _row40p);
    _row40advance = _row40remian * 5 / 100;
    _row40totalpayment = _row40remian + _row40advance;
    _row40totalcost = _row40totalpayment + (A * 40);
    _srow40i = _row40i.toStringAsFixed(2);
    _srow40p = _row40p.toStringAsFixed(2);

    _srow40remian = _row40remian.toStringAsFixed(2);
    _srow40advance = _row40advance.toStringAsFixed(2);
    _srow40totalpayment = _row40totalpayment.toStringAsFixed(2);
    _srow40totalcost = _row40totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row41p = 0.0;
    double _row41i = 0.0;
    double _row41remian = 0.0;
    double _row41advance = 0.0;
    double _row41totalpayment = 0.0;
    double _row41totalcost = 0.0;

    _row41i = (_row40remian * r);
    _row41p = A - _row41i;
    _row41remian = (_row40remian - _row41p);
    _row41advance = _row41remian * 5 / 100;
    _row41totalpayment = _row41remian + _row41advance;
    _row41totalcost = _row41totalpayment + (A * 41);
    _srow41p = _row41p.toStringAsFixed(2);

    _srow41i = _row41i.toStringAsFixed(2);
    _srow41remian = _row41remian.toStringAsFixed(2);
    _srow41advance = _row41advance.toStringAsFixed(2);
    _srow41totalpayment = _row41totalpayment.toStringAsFixed(2);
    _srow41totalcost = _row41totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row42p = 0.0;
    double _row42i = 0.0;
    double _row42remian = 0.0;
    double _row42advance = 0.0;
    double _row42totalpayment = 0.0;
    double _row42totalcost = 0.0;

    _row42i = (_row41remian * r);
    _row42p = A - _row42i;
    _row42remian = (_row41remian - _row42p);
    _row42advance = _row42remian * 5 / 100;
    _row42totalpayment = _row42remian + _row42advance;
    _row42totalcost = _row42totalpayment + (A * 42);
    _srow42p = _row42p.toStringAsFixed(2);

    _srow42i = _row42i.toStringAsFixed(2);
    _srow42remian = _row42remian.toStringAsFixed(2);
    _srow42advance = _row42advance.toStringAsFixed(2);
    _srow42totalpayment = _row42totalpayment.toStringAsFixed(2);
    _srow42totalcost = _row42totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row43p = 0.0;
    double _row43i = 0.0;
    double _row43remian = 0.0;
    double _row43advance = 0.0;
    double _row43totalpayment = 0.0;
    double _row43totalcost = 0.0;

    _row43i = (_row42remian * r);
    _row43p = A - _row43i;
    _row43remian = (_row42remian - _row43p);
    _row43advance = _row43remian * 5 / 100;
    _row43totalpayment = _row43remian + _row43advance;
    _row43totalcost = _row43totalpayment + (A * 43);
    _srow43p = _row43p.toStringAsFixed(2);

    _srow43i = _row43i.toStringAsFixed(2);
    _srow43remian = _row43remian.toStringAsFixed(2);
    _srow43advance = _row43advance.toStringAsFixed(2);
    _srow43totalpayment = _row43totalpayment.toStringAsFixed(2);
    _srow43totalcost = _row43totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row44p = 0.0;
    double _row44i = 0.0;
    double _row44remian = 0.0;
    double _row44advance = 0.0;
    double _row44totalpayment = 0.0;
    double _row44totalcost = 0.0;

    _row44i = (_row43remian * r);
    _row44p = A - _row44i;
    _row44remian = (_row43remian - _row44p);
    _row44advance = _row44remian * 5 / 100;
    _row44totalpayment = _row44remian + _row44advance;
    _row44totalcost = _row44totalpayment + (A * 44);
    _srow44i = _row44i.toStringAsFixed(2);
    _srow44p = _row44p.toStringAsFixed(2);


    _srow44remian = _row44remian.toStringAsFixed(2);
    _srow44advance = _row44advance.toStringAsFixed(2);
    _srow44totalpayment = _row44totalpayment.toStringAsFixed(2);
    _srow44totalcost = _row44totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row45p = 0.0;
    double _row45i = 0.0;
    double _row45remian = 0.0;
    double _row45advance = 0.0;
    double _row45totalpayment = 0.0;
    double _row45totalcost = 0.0;

    _row45i = (_row44remian * r);
    _row45p = A - _row45i;
    _row45remian = (_row44remian - _row45p);
    _row45advance = _row45remian * 5 / 100;
    _row45totalpayment = _row45remian + _row45advance;
    _row45totalcost = _row45totalpayment + (A * 45);
    _srow45i = _row45i.toStringAsFixed(2);
    _srow45p = _row45p.toStringAsFixed(2);

    _srow45remian = _row45remian.toStringAsFixed(2);
    _srow45advance = _row45advance.toStringAsFixed(2);
    _srow45totalpayment = _row45totalpayment.toStringAsFixed(2);
    _srow45totalcost = _row45totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row46p = 0.0;
    double _row46i = 0.0;
    double _row46remian = 0.0;
    double _row46advance = 0.0;
    double _row46totalpayment = 0.0;
    double _row46totalcost = 0.0;

    _row46i = (_row45remian * r);
    _row46p = A - _row46i;
    _row46remian = (_row45remian - _row46p);
    _row46advance = _row46remian * 5 / 100;
    _row46totalpayment = _row46remian + _row46advance;
    _row46totalcost = _row46totalpayment + (A * 46);
    _srow46i = _row46i.toStringAsFixed(2);
    _srow46p = _row46p.toStringAsFixed(2);

    _srow46remian = _row46remian.toStringAsFixed(2);
    _srow46advance = _row46advance.toStringAsFixed(2);
    _srow46totalpayment = _row46totalpayment.toStringAsFixed(2);
    _srow46totalcost = _row46totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row47p = 0.0;
    double _row47i = 0.0;
    double _row47remian = 0.0;
    double _row47advance = 0.0;
    double _row47totalpayment = 0.0;
    double _row47totalcost = 0.0;

    _row47i = (_row46remian * r);
    _row47p = A - _row47i;
    _row47remian = (_row46remian - _row47p);
    _row47advance = _row47remian * 5 / 100;
    _row47totalpayment = _row47remian + _row47advance;
    _row47totalcost = _row47totalpayment + (A * 47);
    _srow47i = _row47i.toStringAsFixed(2);
    _srow47p = _row47p.toStringAsFixed(2);

    _srow47remian = _row47remian.toStringAsFixed(2);
    _srow47advance = _row47advance.toStringAsFixed(2);
    _srow47totalpayment = _row47totalpayment.toStringAsFixed(2);
    _srow47totalcost = _row47totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row48p = 0.0;
    double _row48i = 0.0;
    double _row48remian = 0.0;
    double _row48advance = 0.0;
    double _row48totalpayment = 0.0;
    double _row48totalcost = 0.0;

    _row48i = (_row47remian * r);
    _row48p = A - _row48i;
    _row48remian = (_row47remian - _row48p);
    _row48advance = _row48remian * 5 / 100;
    _row48totalpayment = _row48remian + _row48advance;
    _row48totalcost = _row48totalpayment + (A * 48);
    _srow48i = _row48i.toStringAsFixed(2);
    _srow48p = _row48p.toStringAsFixed(2);

    _srow48remian = _row48remian.toStringAsFixed(2);
    _srow48advance = _row48advance.toStringAsFixed(2);
    _srow48totalpayment = _row48totalpayment.toStringAsFixed(2);
    _srow48totalcost = _row48totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    double _row49p = 0.0;
    double _row49i = 0.0;
    double _row49remian = 0.0;
    double _row49advance = 0.0;
    double _row49totalpayment = 0.0;
    double _row49totalcost = 0.0;

    _row49i = (_row48remian * r);
    _row49p = A - _row49i;
    _row49remian = (_row48remian - _row49p);
    _row49advance = _row49remian * 5 / 100;
    _row49totalpayment = _row49remian + _row49advance;
    _row49totalcost = _row49totalpayment + (A * 49);
    _srow49i = _row49i.toStringAsFixed(2);
    _srow49p = _row49p.toStringAsFixed(2);

    _srow49remian = _row49remian.toStringAsFixed(2);
    _srow49advance = _row49advance.toStringAsFixed(2);
    _srow49totalpayment = _row49totalpayment.toStringAsFixed(2);
    _srow49totalcost = _row49totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////

    /////////////////////////////////////////////////////////////////////

    double _row50p= 0.0;
    double _row50i = 0.0;
    double _row50remian = 0.0;
    double _row50advance = 0.0;
    double _row50totalpayment = 0.0;
    double _row50totalcost = 0.0;

    _row50i = (_row49remian * r);
    _row50p = A - _row50i;
    _row50remian = (_row49remian - _row50p);
    _row50advance = _row50remian * 5 / 100;
    _row50totalpayment = _row50remian + _row50advance;
    _row50totalcost = _row50totalpayment + (A * 50);
    _srow50i = _row50i.toStringAsFixed(2);
    _srow50p = _row50p.toStringAsFixed(2);

    _srow50remian = _row50remian.toStringAsFixed(2);
    _srow50advance = _row50advance.toStringAsFixed(2);
    _srow50totalpayment = _row50totalpayment.toStringAsFixed(2);
    _srow50totalcost = _row50totalcost.toStringAsFixed(2);
/////////////////////////////////////////////////////////////////////

    double _row51p= 0.0;
    double _row51i = 0.0;
    double _row51remian = 0.0;
    double _row51advance = 0.0;
    double _row51totalpayment = 0.0;
    double _row51totalcost = 0.0;

    _row51i = (_row50remian * r);
    _row51p = A - _row51i;
    _row51remian = (_row50remian - _row51p);
    _row51advance = _row51remian * 5 / 100;
    _row51totalpayment = _row51remian + _row51advance;
    _row51totalcost = _row51totalpayment + (A * 51);
    _srow51i = _row51i.toStringAsFixed(2);
    _srow51p = _row51p.toStringAsFixed(2);

    _srow51remian = _row51remian.toStringAsFixed(2);
    _srow51advance = _row51advance.toStringAsFixed(2);
    _srow51totalpayment = _row51totalpayment.toStringAsFixed(2);
    _srow51totalcost = _row51totalcost.toStringAsFixed(2);
/////////////////////////////////////////////////////////////////////

    double _row52p= 0.0;
    double _row52i = 0.0;
    double _row52remian = 0.0;
    double _row52advance = 0.0;
    double _row52totalpayment = 0.0;
    double _row52totalcost = 0.0;

    _row52i = (_row51remian * r);
    _row52p = A - _row52i;
    _row52remian = (_row51remian - _row52p);
    _row52advance = _row52remian * 5 / 100;
    _row52totalpayment = _row52remian + _row52advance;
    _row52totalcost = _row52totalpayment + (A * 52);
    _srow52i = _row52i.toStringAsFixed(2);
    _srow52p = _row52p.toStringAsFixed(2);
    _srow52remian = _row52remian.toStringAsFixed(2);
    _srow52advance = _row52advance.toStringAsFixed(2);
    _srow52totalpayment = _row52totalpayment.toStringAsFixed(2);
    _srow52totalcost = _row52totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row53p= 0.0;
    double _row53i = 0.0;
    double _row53remian = 0.0;
    double _row53advance = 0.0;
    double _row53totalpayment = 0.0;
    double _row53totalcost = 0.0;

    _row53i = (_row52remian * r);
    _row53p = A - _row53i;
    _row53remian = (_row52remian - _row53p);
    _row53advance = _row53remian * 5 / 100;
    _row53totalpayment = _row53remian + _row53advance;
    _row53totalcost = _row53totalpayment + (A * 53);
    _srow53i = _row53i.toStringAsFixed(2);
    _srow53p = _row53p.toStringAsFixed(2);
    _srow53remian = _row53remian.toStringAsFixed(2);
    _srow53advance = _row53advance.toStringAsFixed(2);
    _srow53totalpayment = _row53totalpayment.toStringAsFixed(2);
    _srow53totalcost = _row53totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row54p= 0.0;
    double _row54i = 0.0;
    double _row54remian = 0.0;
    double _row54advance = 0.0;
    double _row54totalpayment = 0.0;
    double _row54totalcost = 0.0;

    _row54i = (_row53remian * r);
    _row54p = A - _row54i;
    _row54remian = (_row53remian - _row54p);
    _row54advance = _row54remian * 5 / 100;
    _row54totalpayment = _row54remian + _row54advance;
    _row54totalcost = _row54totalpayment + (A * 54);
    _srow54i = _row54i.toStringAsFixed(2);
    _srow54p = _row54p.toStringAsFixed(2);
    _srow54remian = _row54remian.toStringAsFixed(2);
    _srow54advance = _row54advance.toStringAsFixed(2);
    _srow54totalpayment = _row54totalpayment.toStringAsFixed(2);
    _srow54totalcost = _row54totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row55p= 0.0;
    double _row55i = 0.0;
    double _row55remian = 0.0;
    double _row55advance = 0.0;
    double _row55totalpayment = 0.0;
    double _row55totalcost = 0.0;

    _row55i = (_row54remian * r);
    _row55p = A - _row55i;
    _row55remian = (_row54remian - _row55p);
    _row55advance = _row55remian * 5 / 100;
    _row55totalpayment = _row55remian + _row55advance;
    _row55totalcost = _row55totalpayment + (A * 55);
    _srow55i = _row55i.toStringAsFixed(2);
    _srow55p = _row55p.toStringAsFixed(2);
    _srow55remian = _row55remian.toStringAsFixed(2);
    _srow55advance = _row55advance.toStringAsFixed(2);
    _srow55totalpayment = _row55totalpayment.toStringAsFixed(2);
    _srow55totalcost = _row55totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row56p= 0.0;
    double _row56i = 0.0;
    double _row56remian = 0.0;
    double _row56advance = 0.0;
    double _row56totalpayment = 0.0;
    double _row56totalcost = 0.0;

    _row56i = (_row55remian * r);
    _row56p = A - _row56i;
    _row56remian = (_row55remian - _row56p);
    _row56advance = _row56remian * 5 / 100;
    _row56totalpayment = _row56remian + _row56advance;
    _row56totalcost = _row56totalpayment + (A * 56);
    _srow56i = _row56i.toStringAsFixed(2);
    _srow56p = _row56p.toStringAsFixed(2);
    _srow56remian = _row56remian.toStringAsFixed(2);
    _srow56advance = _row56advance.toStringAsFixed(2);
    _srow56totalpayment = _row56totalpayment.toStringAsFixed(2);
    _srow56totalcost = _row56totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row57p= 0.0;
    double _row57i = 0.0;
    double _row57remian = 0.0;
    double _row57advance = 0.0;
    double _row57totalpayment = 0.0;
    double _row57totalcost = 0.0;

    _row57i = (_row56remian * r);
    _row57p = A - _row57i;
    _row57remian = (_row56remian - _row57p);
    _row57advance = _row57remian * 5 / 100;
    _row57totalpayment = _row57remian + _row57advance;
    _row57totalcost = _row57totalpayment + (A * 57);
    _srow57i = _row57i.toStringAsFixed(2);
    _srow57p = _row57p.toStringAsFixed(2);
    _srow57remian = _row57remian.toStringAsFixed(2);
    _srow57advance = _row57advance.toStringAsFixed(2);
    _srow57totalpayment = _row57totalpayment.toStringAsFixed(2);
    _srow57totalcost = _row57totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row58p= 0.0;
    double _row58i = 0.0;
    double _row58remian = 0.0;
    double _row58advance = 0.0;
    double _row58totalpayment = 0.0;
    double _row58totalcost = 0.0;

    _row58i = (_row57remian * r);
    _row58p = A - _row58i;
    _row58remian = (_row57remian - _row58p);
    _row58advance = _row58remian * 5 / 100;
    _row58totalpayment = _row58remian + _row58advance;
    _row58totalcost = _row58totalpayment + (A * 58);
    _srow58i = _row58i.toStringAsFixed(2);
    _srow58p = _row58p.toStringAsFixed(2);
    _srow58remian = _row58remian.toStringAsFixed(2);
    _srow58advance = _row58advance.toStringAsFixed(2);
    _srow58totalpayment = _row58totalpayment.toStringAsFixed(2);
    _srow58totalcost = _row58totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row59p= 0.0;
    double _row59i = 0.0;
    double _row59remian = 0.0;
    double _row59advance = 0.0;
    double _row59totalpayment = 0.0;
    double _row59totalcost = 0.0;

    _row59i = (_row58remian * r);
    _row59p = A - _row59i;
    _row59remian = (_row58remian - _row59p);
    _row59advance = _row59remian * 5 / 100;
    _row59totalpayment = _row59remian + _row59advance;
    _row59totalcost = _row59totalpayment + (A * 59);
    _srow59i = _row59i.toStringAsFixed(2);
    _srow59p = _row59p.toStringAsFixed(2);
    _srow59remian = _row59remian.toStringAsFixed(2);
    _srow59advance = _row59advance.toStringAsFixed(2);
    _srow59totalpayment = _row59totalpayment.toStringAsFixed(2);
    _srow59totalcost = _row59totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row60p= 0.0;
    double _row60i = 0.0;
    double _row60remian = 0.0;
    double _row60advance = 0.0;
    double _row60totalpayment = 0.0;
    double _row60totalcost = 0.0;

    _row60i = (_row59remian * r);
    _row60p = A - _row60i;
    _row60remian = (_row59remian - _row60p);
    _row60advance = _row60remian * 5 / 100;
    _row60totalpayment = _row60remian + _row60advance;
    _row60totalcost = _row60totalpayment + (A * 60);
    _srow60i = _row60i.toStringAsFixed(2);
    _srow60p = _row60p.toStringAsFixed(2);
    _srow60remian = _row60remian.toStringAsFixed(2);
    _srow60advance = _row60advance.toStringAsFixed(2);
    _srow60totalpayment = _row60totalpayment.toStringAsFixed(2);
    _srow60totalcost = _row60totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row61p= 0.0;
    double _row61i = 0.0;
    double _row61remian = 0.0;
    double _row61advance = 0.0;
    double _row61totalpayment = 0.0;
    double _row61totalcost = 0.0;

    _row61i = (_row60remian * r);
    _row61p = A - _row61i;
    _row61remian = (_row60remian - _row61p);
    _row61advance = _row61remian * 5 / 100;
    _row61totalpayment = _row61remian + _row61advance;
    _row61totalcost = _row61totalpayment + (A * 61);
    _srow61i = _row61i.toStringAsFixed(2);
    _srow61p = _row61p.toStringAsFixed(2);
    _srow61remian = _row61remian.toStringAsFixed(2);
    _srow61advance = _row61advance.toStringAsFixed(2);
    _srow61totalpayment = _row61totalpayment.toStringAsFixed(2);
    _srow61totalcost = _row61totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row62p= 0.0;
    double _row62i = 0.0;
    double _row62remian = 0.0;
    double _row62advance = 0.0;
    double _row62totalpayment = 0.0;
    double _row62totalcost = 0.0;

    _row62i = (_row61remian * r);
    _row62p = A - _row62i;
    _row62remian = (_row61remian - _row62p);
    _row62advance = _row62remian * 5 / 100;
    _row62totalpayment = _row62remian + _row62advance;
    _row62totalcost = _row62totalpayment + (A * 62);
    _srow62i = _row62i.toStringAsFixed(2);
    _srow62p = _row62p.toStringAsFixed(2);
    _srow62remian = _row62remian.toStringAsFixed(2);
    _srow62advance = _row62advance.toStringAsFixed(2);
    _srow62totalpayment = _row62totalpayment.toStringAsFixed(2);
    _srow62totalcost = _row62totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row63p= 0.0;
    double _row63i = 0.0;
    double _row63remian = 0.0;
    double _row63advance = 0.0;
    double _row63totalpayment = 0.0;
    double _row63totalcost = 0.0;

    _row63i = (_row62remian * r);
    _row63p = A - _row63i;
    _row63remian = (_row62remian - _row63p);
    _row63advance = _row63remian * 5 / 100;
    _row63totalpayment = _row63remian + _row63advance;
    _row63totalcost = _row63totalpayment + (A * 63);
    _srow63i = _row63i.toStringAsFixed(2);
    _srow63p = _row63p.toStringAsFixed(2);
    _srow63remian = _row63remian.toStringAsFixed(2);
    _srow63advance = _row63advance.toStringAsFixed(2);
    _srow63totalpayment = _row63totalpayment.toStringAsFixed(2);
    _srow63totalcost = _row63totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row64p= 0.0;
    double _row64i = 0.0;
    double _row64remian = 0.0;
    double _row64advance = 0.0;
    double _row64totalpayment = 0.0;
    double _row64totalcost = 0.0;

    _row64i = (_row63remian * r);
    _row64p = A - _row64i;
    _row64remian = (_row63remian - _row64p);
    _row64advance = _row64remian * 5 / 100;
    _row64totalpayment = _row64remian + _row64advance;
    _row64totalcost = _row64totalpayment + (A * 64);
    _srow64i = _row64i.toStringAsFixed(2);
    _srow64p = _row64p.toStringAsFixed(2);
    _srow64remian = _row64remian.toStringAsFixed(2);
    _srow64advance = _row64advance.toStringAsFixed(2);
    _srow64totalpayment = _row64totalpayment.toStringAsFixed(2);
    _srow64totalcost = _row64totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row65p= 0.0;
    double _row65i = 0.0;
    double _row65remian = 0.0;
    double _row65advance = 0.0;
    double _row65totalpayment = 0.0;
    double _row65totalcost = 0.0;

    _row65i = (_row64remian * r);
    _row65p = A - _row65i;
    _row65remian = (_row64remian - _row65p);
    _row65advance = _row65remian * 5 / 100;
    _row65totalpayment = _row65remian + _row65advance;
    _row65totalcost = _row65totalpayment + (A * 65);
    _srow65i = _row65i.toStringAsFixed(2);
    _srow65p = _row65p.toStringAsFixed(2);
    _srow65remian = _row65remian.toStringAsFixed(2);
    _srow65advance = _row65advance.toStringAsFixed(2);
    _srow65totalpayment = _row65totalpayment.toStringAsFixed(2);
    _srow65totalcost = _row65totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row66p= 0.0;
    double _row66i = 0.0;
    double _row66remian = 0.0;
    double _row66advance = 0.0;
    double _row66totalpayment = 0.0;
    double _row66totalcost = 0.0;

    _row66i = (_row65remian * r);
    _row66p = A - _row66i;
    _row66remian = (_row65remian - _row66p);
    _row66advance = _row66remian * 5 / 100;
    _row66totalpayment = _row66remian + _row66advance;
    _row66totalcost = _row66totalpayment + (A * 66);
    _srow66i = _row66i.toStringAsFixed(2);
    _srow66p = _row66p.toStringAsFixed(2);
    _srow66remian = _row66remian.toStringAsFixed(2);
    _srow66advance = _row66advance.toStringAsFixed(2);
    _srow66totalpayment = _row66totalpayment.toStringAsFixed(2);
    _srow66totalcost = _row66totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row67p= 0.0;
    double _row67i = 0.0;
    double _row67remian = 0.0;
    double _row67advance = 0.0;
    double _row67totalpayment = 0.0;
    double _row67totalcost = 0.0;

    _row67i = (_row66remian * r);
    _row67p = A - _row67i;
    _row67remian = (_row66remian - _row67p);
    _row67advance = _row67remian * 5 / 100;
    _row67totalpayment = _row67remian + _row67advance;
    _row67totalcost = _row67totalpayment + (A * 67);
    _srow67i = _row67i.toStringAsFixed(2);
    _srow67p = _row67p.toStringAsFixed(2);
    _srow67remian = _row67remian.toStringAsFixed(2);
    _srow67advance = _row67advance.toStringAsFixed(2);
    _srow67totalpayment = _row67totalpayment.toStringAsFixed(2);
    _srow67totalcost = _row67totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row68p= 0.0;
    double _row68i = 0.0;
    double _row68remian = 0.0;
    double _row68advance = 0.0;
    double _row68totalpayment = 0.0;
    double _row68totalcost = 0.0;

    _row68i = (_row67remian * r);
    _row68p = A - _row68i;
    _row68remian = (_row67remian - _row68p);
    _row68advance = _row68remian * 5 / 100;
    _row68totalpayment = _row68remian + _row68advance;
    _row68totalcost = _row68totalpayment + (A * 68);
    _srow68i = _row68i.toStringAsFixed(2);
    _srow68p = _row68p.toStringAsFixed(2);
    _srow68remian = _row68remian.toStringAsFixed(2);
    _srow68advance = _row68advance.toStringAsFixed(2);
    _srow68totalpayment = _row68totalpayment.toStringAsFixed(2);
    _srow68totalcost = _row68totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row69p= 0.0;
    double _row69i = 0.0;
    double _row69remian = 0.0;
    double _row69advance = 0.0;
    double _row69totalpayment = 0.0;
    double _row69totalcost = 0.0;

    _row69i = (_row68remian * r);
    _row69p = A - _row69i;
    _row69remian = (_row68remian - _row69p);
    _row69advance = _row69remian * 5 / 100;
    _row69totalpayment = _row69remian + _row69advance;
    _row69totalcost = _row69totalpayment + (A * 69);
    _srow69i = _row69i.toStringAsFixed(2);
    _srow69p = _row69p.toStringAsFixed(2);
    _srow69remian = _row69remian.toStringAsFixed(2);
    _srow69advance = _row69advance.toStringAsFixed(2);
    _srow69totalpayment = _row69totalpayment.toStringAsFixed(2);
    _srow69totalcost = _row69totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row70p= 0.0;
    double _row70i = 0.0;
    double _row70remian = 0.0;
    double _row70advance = 0.0;
    double _row70totalpayment = 0.0;
    double _row70totalcost = 0.0;

    _row70i = (_row69remian * r);
    _row70p = A - _row70i;
    _row70remian = (_row69remian - _row70p);
    _row70advance = _row70remian * 5 / 100;
    _row70totalpayment = _row70remian + _row70advance;
    _row70totalcost = _row70totalpayment + (A * 70);
    _srow70i = _row70i.toStringAsFixed(2);
    _srow70p = _row70p.toStringAsFixed(2);
    _srow70remian = _row70remian.toStringAsFixed(2);
    _srow70advance = _row70advance.toStringAsFixed(2);
    _srow70totalpayment = _row70totalpayment.toStringAsFixed(2);
    _srow70totalcost = _row70totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row71p= 0.0;
    double _row71i = 0.0;
    double _row71remian = 0.0;
    double _row71advance = 0.0;
    double _row71totalpayment = 0.0;
    double _row71totalcost = 0.0;

    _row71i = (_row70remian * r);
    _row71p = A - _row71i;
    _row71remian = (_row70remian - _row71p);
    _row71advance = _row71remian * 5 / 100;
    _row71totalpayment = _row71remian + _row71advance;
    _row71totalcost = _row71totalpayment + (A * 71);
    _srow71i = _row71i.toStringAsFixed(2);
    _srow71p = _row71p.toStringAsFixed(2);
    _srow71remian = _row71remian.toStringAsFixed(2);
    _srow71advance = _row71advance.toStringAsFixed(2);
    _srow71totalpayment = _row71totalpayment.toStringAsFixed(2);
    _srow71totalcost = _row71totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row72p= 0.0;
    double _row72i = 0.0;
    double _row72remian = 0.0;
    double _row72advance = 0.0;
    double _row72totalpayment = 0.0;
    double _row72totalcost = 0.0;

    _row72i = (_row71remian * r);
    _row72p = A - _row72i;
    _row72remian = (_row71remian - _row72p);
    _row72advance = _row72remian * 5 / 100;
    _row72totalpayment = _row72remian + _row72advance;
    _row72totalcost = _row72totalpayment + (A * 72);
    _srow72i = _row72i.toStringAsFixed(2);
    _srow72p = _row72p.toStringAsFixed(2);
    _srow72remian = _row72remian.toStringAsFixed(2);
    _srow72advance = _row72advance.toStringAsFixed(2);
    _srow72totalpayment = _row72totalpayment.toStringAsFixed(2);
    _srow72totalcost = _row72totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row73p= 0.0;
    double _row73i = 0.0;
    double _row73remian = 0.0;
    double _row73advance = 0.0;
    double _row73totalpayment = 0.0;
    double _row73totalcost = 0.0;

    _row73i = (_row72remian * r);
    _row73p = A - _row73i;
    _row73remian = (_row72remian - _row73p);
    _row73advance = _row73remian * 5 / 100;
    _row73totalpayment = _row73remian + _row73advance;
    _row73totalcost = _row73totalpayment + (A * 73);
    _srow73i = _row73i.toStringAsFixed(2);
    _srow73p = _row73p.toStringAsFixed(2);
    _srow73remian = _row73remian.toStringAsFixed(2);
    _srow73advance = _row73advance.toStringAsFixed(2);
    _srow73totalpayment = _row73totalpayment.toStringAsFixed(2);
    _srow73totalcost = _row73totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row74p= 0.0;
    double _row74i = 0.0;
    double _row74remian = 0.0;
    double _row74advance = 0.0;
    double _row74totalpayment = 0.0;
    double _row74totalcost = 0.0;

    _row74i = (_row73remian * r);
    _row74p = A - _row74i;
    _row74remian = (_row73remian - _row74p);
    _row74advance = _row74remian * 5 / 100;
    _row74totalpayment = _row74remian + _row74advance;
    _row74totalcost = _row74totalpayment + (A * 74);
    _srow74i = _row74i.toStringAsFixed(2);
    _srow74p = _row74p.toStringAsFixed(2);
    _srow74remian = _row74remian.toStringAsFixed(2);
    _srow74advance = _row74advance.toStringAsFixed(2);
    _srow74totalpayment = _row74totalpayment.toStringAsFixed(2);
    _srow74totalcost = _row74totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row75p= 0.0;
    double _row75i = 0.0;
    double _row75remian = 0.0;
    double _row75advance = 0.0;
    double _row75totalpayment = 0.0;
    double _row75totalcost = 0.0;

    _row75i = (_row74remian * r);
    _row75p = A - _row75i;
    _row75remian = (_row74remian - _row75p);
    _row75advance = _row75remian * 5 / 100;
    _row75totalpayment = _row75remian + _row75advance;
    _row75totalcost = _row75totalpayment + (A * 75);
    _srow75i = _row75i.toStringAsFixed(2);
    _srow75p = _row75p.toStringAsFixed(2);
    _srow75remian = _row75remian.toStringAsFixed(2);
    _srow75advance = _row75advance.toStringAsFixed(2);
    _srow75totalpayment = _row75totalpayment.toStringAsFixed(2);
    _srow75totalcost = _row75totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row76p= 0.0;
    double _row76i = 0.0;
    double _row76remian = 0.0;
    double _row76advance = 0.0;
    double _row76totalpayment = 0.0;
    double _row76totalcost = 0.0;

    _row76i = (_row75remian * r);
    _row76p = A - _row76i;
    _row76remian = (_row75remian - _row76p);
    _row76advance = _row76remian * 5 / 100;
    _row76totalpayment = _row76remian + _row76advance;
    _row76totalcost = _row76totalpayment + (A * 76);
    _srow76i = _row76i.toStringAsFixed(2);
    _srow76p = _row76p.toStringAsFixed(2);
    _srow76remian = _row76remian.toStringAsFixed(2);
    _srow76advance = _row76advance.toStringAsFixed(2);
    _srow76totalpayment = _row76totalpayment.toStringAsFixed(2);
    _srow76totalcost = _row76totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row77p= 0.0;
    double _row77i = 0.0;
    double _row77remian = 0.0;
    double _row77advance = 0.0;
    double _row77totalpayment = 0.0;
    double _row77totalcost = 0.0;

    _row77i = (_row76remian * r);
    _row77p = A - _row77i;
    _row77remian = (_row76remian - _row77p);
    _row77advance = _row77remian * 5 / 100;
    _row77totalpayment = _row77remian + _row77advance;
    _row77totalcost = _row77totalpayment + (A * 77);
    _srow77i = _row77i.toStringAsFixed(2);
    _srow77p = _row77p.toStringAsFixed(2);
    _srow77remian = _row77remian.toStringAsFixed(2);
    _srow77advance = _row77advance.toStringAsFixed(2);
    _srow77totalpayment = _row77totalpayment.toStringAsFixed(2);
    _srow77totalcost = _row77totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row78p= 0.0;
    double _row78i = 0.0;
    double _row78remian = 0.0;
    double _row78advance = 0.0;
    double _row78totalpayment = 0.0;
    double _row78totalcost = 0.0;

    _row78i = (_row77remian * r);
    _row78p = A - _row78i;
    _row78remian = (_row77remian - _row78p);
    _row78advance = _row78remian * 5 / 100;
    _row78totalpayment = _row78remian + _row78advance;
    _row78totalcost = _row78totalpayment + (A * 78);
    _srow78i = _row78i.toStringAsFixed(2);
    _srow78p = _row78p.toStringAsFixed(2);
    _srow78remian = _row78remian.toStringAsFixed(2);
    _srow78advance = _row78advance.toStringAsFixed(2);
    _srow78totalpayment = _row78totalpayment.toStringAsFixed(2);
    _srow78totalcost = _row78totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row79p= 0.0;
    double _row79i = 0.0;
    double _row79remian = 0.0;
    double _row79advance = 0.0;
    double _row79totalpayment = 0.0;
    double _row79totalcost = 0.0;

    _row79i = (_row78remian * r);
    _row79p = A - _row79i;
    _row79remian = (_row78remian - _row79p);
    _row79advance = _row79remian * 5 / 100;
    _row79totalpayment = _row79remian + _row79advance;
    _row79totalcost = _row79totalpayment + (A * 79);
    _srow79i = _row79i.toStringAsFixed(2);
    _srow79p = _row79p.toStringAsFixed(2);
    _srow79remian = _row79remian.toStringAsFixed(2);
    _srow79advance = _row79advance.toStringAsFixed(2);
    _srow79totalpayment = _row79totalpayment.toStringAsFixed(2);
    _srow79totalcost = _row79totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row80p= 0.0;
    double _row80i = 0.0;
    double _row80remian = 0.0;
    double _row80advance = 0.0;
    double _row80totalpayment = 0.0;
    double _row80totalcost = 0.0;

    _row80i = (_row79remian * r);
    _row80p = A - _row80i;
    _row80remian = (_row79remian - _row80p);
    _row80advance = _row80remian * 5 / 100;
    _row80totalpayment = _row80remian + _row80advance;
    _row80totalcost = _row80totalpayment + (A * 80);
    _srow80i = _row80i.toStringAsFixed(2);
    _srow80p = _row80p.toStringAsFixed(2);
    _srow80remian = _row80remian.toStringAsFixed(2);
    _srow80advance = _row80advance.toStringAsFixed(2);
    _srow80totalpayment = _row80totalpayment.toStringAsFixed(2);
    _srow80totalcost = _row80totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row81p= 0.0;
    double _row81i = 0.0;
    double _row81remian = 0.0;
    double _row81advance = 0.0;
    double _row81totalpayment = 0.0;
    double _row81totalcost = 0.0;

    _row81i = (_row80remian * r);
    _row81p = A - _row81i;
    _row81remian = (_row80remian - _row81p);
    _row81advance = _row81remian * 5 / 100;
    _row81totalpayment = _row81remian + _row81advance;
    _row81totalcost = _row81totalpayment + (A * 81);
    _srow81i = _row81i.toStringAsFixed(2);
    _srow81p = _row81p.toStringAsFixed(2);
    _srow81remian = _row81remian.toStringAsFixed(2);
    _srow81advance = _row81advance.toStringAsFixed(2);
    _srow81totalpayment = _row81totalpayment.toStringAsFixed(2);
    _srow81totalcost = _row81totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row82p= 0.0;
    double _row82i = 0.0;
    double _row82remian = 0.0;
    double _row82advance = 0.0;
    double _row82totalpayment = 0.0;
    double _row82totalcost = 0.0;

    _row82i = (_row81remian * r);
    _row82p = A - _row82i;
    _row82remian = (_row81remian - _row82p);
    _row82advance = _row82remian * 5 / 100;
    _row82totalpayment = _row82remian + _row82advance;
    _row82totalcost = _row82totalpayment + (A * 82);
    _srow82i = _row82i.toStringAsFixed(2);
    _srow82p = _row82p.toStringAsFixed(2);
    _srow82remian = _row82remian.toStringAsFixed(2);
    _srow82advance = _row82advance.toStringAsFixed(2);
    _srow82totalpayment = _row82totalpayment.toStringAsFixed(2);
    _srow82totalcost = _row82totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row83p= 0.0;
    double _row83i = 0.0;
    double _row83remian = 0.0;
    double _row83advance = 0.0;
    double _row83totalpayment = 0.0;
    double _row83totalcost = 0.0;

    _row83i = (_row82remian * r);
    _row83p = A - _row83i;
    _row83remian = (_row82remian - _row83p);
    _row83advance = _row83remian * 5 / 100;
    _row83totalpayment = _row83remian + _row83advance;
    _row83totalcost = _row83totalpayment + (A * 83);
    _srow83i = _row83i.toStringAsFixed(2);
    _srow83p = _row83p.toStringAsFixed(2);
    _srow83remian = _row83remian.toStringAsFixed(2);
    _srow83advance = _row83advance.toStringAsFixed(2);
    _srow83totalpayment = _row83totalpayment.toStringAsFixed(2);
    _srow83totalcost = _row83totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row84p= 0.0;
    double _row84i = 0.0;
    double _row84remian = 0.0;
    double _row84advance = 0.0;
    double _row84totalpayment = 0.0;
    double _row84totalcost = 0.0;

    _row84i = (_row83remian * r);
    _row84p = A - _row84i;
    _row84remian = (_row83remian - _row84p);
    _row84advance = _row84remian * 5 / 100;
    _row84totalpayment = _row84remian + _row84advance;
    _row84totalcost = _row84totalpayment + (A * 84);
    _srow84i = _row84i.toStringAsFixed(2);
    _srow84p = _row84p.toStringAsFixed(2);
    _srow84remian = _row84remian.toStringAsFixed(2);
    _srow84advance = _row84advance.toStringAsFixed(2);
    _srow84totalpayment = _row84totalpayment.toStringAsFixed(2);
    _srow84totalcost = _row84totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row85p= 0.0;
    double _row85i = 0.0;
    double _row85remian = 0.0;
    double _row85advance = 0.0;
    double _row85totalpayment = 0.0;
    double _row85totalcost = 0.0;

    _row85i = (_row84remian * r);
    _row85p = A - _row85i;
    _row85remian = (_row84remian - _row85p);
    _row85advance = _row85remian * 5 / 100;
    _row85totalpayment = _row85remian + _row85advance;
    _row85totalcost = _row85totalpayment + (A * 85);
    _srow85i = _row85i.toStringAsFixed(2);
    _srow85p = _row85p.toStringAsFixed(2);
    _srow85remian = _row85remian.toStringAsFixed(2);
    _srow85advance = _row85advance.toStringAsFixed(2);
    _srow85totalpayment = _row85totalpayment.toStringAsFixed(2);
    _srow85totalcost = _row85totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row86p= 0.0;
    double _row86i = 0.0;
    double _row86remian = 0.0;
    double _row86advance = 0.0;
    double _row86totalpayment = 0.0;
    double _row86totalcost = 0.0;

    _row86i = (_row85remian * r);
    _row86p = A - _row86i;
    _row86remian = (_row85remian - _row86p);
    _row86advance = _row86remian * 5 / 100;
    _row86totalpayment = _row86remian + _row86advance;
    _row86totalcost = _row86totalpayment + (A * 86);
    _srow86i = _row86i.toStringAsFixed(2);
    _srow86p = _row86p.toStringAsFixed(2);
    _srow86remian = _row86remian.toStringAsFixed(2);
    _srow86advance = _row86advance.toStringAsFixed(2);
    _srow86totalpayment = _row86totalpayment.toStringAsFixed(2);
    _srow86totalcost = _row86totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row87p= 0.0;
    double _row87i = 0.0;
    double _row87remian = 0.0;
    double _row87advance = 0.0;
    double _row87totalpayment = 0.0;
    double _row87totalcost = 0.0;

    _row87i = (_row86remian * r);
    _row87p = A - _row87i;
    _row87remian = (_row86remian - _row87p);
    _row87advance = _row87remian * 5 / 100;
    _row87totalpayment = _row87remian + _row87advance;
    _row87totalcost = _row87totalpayment + (A * 87);
    _srow87i = _row87i.toStringAsFixed(2);
    _srow87p = _row87p.toStringAsFixed(2);
    _srow87remian = _row87remian.toStringAsFixed(2);
    _srow87advance = _row87advance.toStringAsFixed(2);
    _srow87totalpayment = _row87totalpayment.toStringAsFixed(2);
    _srow87totalcost = _row87totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row88p= 0.0;
    double _row88i = 0.0;
    double _row88remian = 0.0;
    double _row88advance = 0.0;
    double _row88totalpayment = 0.0;
    double _row88totalcost = 0.0;

    _row88i = (_row87remian * r);
    _row88p = A - _row88i;
    _row88remian = (_row87remian - _row88p);
    _row88advance = _row88remian * 5 / 100;
    _row88totalpayment = _row88remian + _row88advance;
    _row88totalcost = _row88totalpayment + (A * 88);
    _srow88i = _row88i.toStringAsFixed(2);
    _srow88p = _row88p.toStringAsFixed(2);
    _srow88remian = _row88remian.toStringAsFixed(2);
    _srow88advance = _row88advance.toStringAsFixed(2);
    _srow88totalpayment = _row88totalpayment.toStringAsFixed(2);
    _srow88totalcost = _row88totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row89p= 0.0;
    double _row89i = 0.0;
    double _row89remian = 0.0;
    double _row89advance = 0.0;
    double _row89totalpayment = 0.0;
    double _row89totalcost = 0.0;

    _row89i = (_row88remian * r);
    _row89p = A - _row89i;
    _row89remian = (_row88remian - _row89p);
    _row89advance = _row89remian * 5 / 100;
    _row89totalpayment = _row89remian + _row89advance;
    _row89totalcost = _row89totalpayment + (A * 89);
    _srow89i = _row89i.toStringAsFixed(2);
    _srow89p = _row89p.toStringAsFixed(2);
    _srow89remian = _row89remian.toStringAsFixed(2);
    _srow89advance = _row89advance.toStringAsFixed(2);
    _srow89totalpayment = _row89totalpayment.toStringAsFixed(2);
    _srow89totalcost = _row89totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row90p= 0.0;
    double _row90i = 0.0;
    double _row90remian = 0.0;
    double _row90advance = 0.0;
    double _row90totalpayment = 0.0;
    double _row90totalcost = 0.0;

    _row90i = (_row89remian * r);
    _row90p = A - _row90i;
    _row90remian = (_row89remian - _row90p);
    _row90advance = _row90remian * 5 / 100;
    _row90totalpayment = _row90remian + _row90advance;
    _row90totalcost = _row90totalpayment + (A * 90);
    _srow90i = _row90i.toStringAsFixed(2);
    _srow90p = _row90p.toStringAsFixed(2);
    _srow90remian = _row90remian.toStringAsFixed(2);
    _srow90advance = _row90advance.toStringAsFixed(2);
    _srow90totalpayment = _row90totalpayment.toStringAsFixed(2);
    _srow90totalcost = _row90totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row91p= 0.0;
    double _row91i = 0.0;
    double _row91remian = 0.0;
    double _row91advance = 0.0;
    double _row91totalpayment = 0.0;
    double _row91totalcost = 0.0;

    _row91i = (_row90remian * r);
    _row91p = A - _row91i;
    _row91remian = (_row90remian - _row91p);
    _row91advance = _row91remian * 5 / 100;
    _row91totalpayment = _row91remian + _row91advance;
    _row91totalcost = _row91totalpayment + (A * 91);
    _srow91i = _row91i.toStringAsFixed(2);
    _srow91p = _row91p.toStringAsFixed(2);
    _srow91remian = _row91remian.toStringAsFixed(2);
    _srow91advance = _row91advance.toStringAsFixed(2);
    _srow91totalpayment = _row91totalpayment.toStringAsFixed(2);
    _srow91totalcost = _row91totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row92p= 0.0;
    double _row92i = 0.0;
    double _row92remian = 0.0;
    double _row92advance = 0.0;
    double _row92totalpayment = 0.0;
    double _row92totalcost = 0.0;

    _row92i = (_row91remian * r);
    _row92p = A - _row92i;
    _row92remian = (_row91remian - _row92p);
    _row92advance = _row92remian * 5 / 100;
    _row92totalpayment = _row92remian + _row92advance;
    _row92totalcost = _row92totalpayment + (A * 92);
    _srow92i = _row92i.toStringAsFixed(2);
    _srow92p = _row92p.toStringAsFixed(2);
    _srow92remian = _row92remian.toStringAsFixed(2);
    _srow92advance = _row92advance.toStringAsFixed(2);
    _srow92totalpayment = _row92totalpayment.toStringAsFixed(2);
    _srow92totalcost = _row92totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row93p= 0.0;
    double _row93i = 0.0;
    double _row93remian = 0.0;
    double _row93advance = 0.0;
    double _row93totalpayment = 0.0;
    double _row93totalcost = 0.0;

    _row93i = (_row92remian * r);
    _row93p = A - _row93i;
    _row93remian = (_row92remian - _row93p);
    _row93advance = _row93remian * 5 / 100;
    _row93totalpayment = _row93remian + _row93advance;
    _row93totalcost = _row93totalpayment + (A * 93);
    _srow93i = _row93i.toStringAsFixed(2);
    _srow93p = _row93p.toStringAsFixed(2);
    _srow93remian = _row93remian.toStringAsFixed(2);
    _srow93advance = _row93advance.toStringAsFixed(2);
    _srow93totalpayment = _row93totalpayment.toStringAsFixed(2);
    _srow93totalcost = _row93totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row94p= 0.0;
    double _row94i = 0.0;
    double _row94remian = 0.0;
    double _row94advance = 0.0;
    double _row94totalpayment = 0.0;
    double _row94totalcost = 0.0;

    _row94i = (_row93remian * r);
    _row94p = A - _row94i;
    _row94remian = (_row93remian - _row94p);
    _row94advance = _row94remian * 5 / 100;
    _row94totalpayment = _row94remian + _row94advance;
    _row94totalcost = _row94totalpayment + (A * 94);
    _srow94i = _row94i.toStringAsFixed(2);
    _srow94p = _row94p.toStringAsFixed(2);
    _srow94remian = _row94remian.toStringAsFixed(2);
    _srow94advance = _row94advance.toStringAsFixed(2);
    _srow94totalpayment = _row94totalpayment.toStringAsFixed(2);
    _srow94totalcost = _row94totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row95p= 0.0;
    double _row95i = 0.0;
    double _row95remian = 0.0;
    double _row95advance = 0.0;
    double _row95totalpayment = 0.0;
    double _row95totalcost = 0.0;

    _row95i = (_row94remian * r);
    _row95p = A - _row95i;
    _row95remian = (_row94remian - _row95p);
    _row95advance = _row95remian * 5 / 100;
    _row95totalpayment = _row95remian + _row95advance;
    _row95totalcost = _row95totalpayment + (A * 95);
    _srow95i = _row95i.toStringAsFixed(2);
    _srow95p = _row95p.toStringAsFixed(2);
    _srow95remian = _row95remian.toStringAsFixed(2);
    _srow95advance = _row95advance.toStringAsFixed(2);
    _srow95totalpayment = _row95totalpayment.toStringAsFixed(2);
    _srow95totalcost = _row95totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row96p= 0.0;
    double _row96i = 0.0;
    double _row96remian = 0.0;
    double _row96advance = 0.0;
    double _row96totalpayment = 0.0;
    double _row96totalcost = 0.0;

    _row96i = (_row95remian * r);
    _row96p = A - _row96i;
    _row96remian = (_row95remian - _row96p);
    _row96advance = _row96remian * 5 / 100;
    _row96totalpayment = _row96remian + _row96advance;
    _row96totalcost = _row96totalpayment + (A * 96);
    _srow96i = _row96i.toStringAsFixed(2);
    _srow96p = _row96p.toStringAsFixed(2);
    _srow96remian = _row96remian.toStringAsFixed(2);
    _srow96advance = _row96advance.toStringAsFixed(2);
    _srow96totalpayment = _row96totalpayment.toStringAsFixed(2);
    _srow96totalcost = _row96totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row97p= 0.0;
    double _row97i = 0.0;
    double _row97remian = 0.0;
    double _row97advance = 0.0;
    double _row97totalpayment = 0.0;
    double _row97totalcost = 0.0;

    _row97i = (_row96remian * r);
    _row97p = A - _row97i;
    _row97remian = (_row96remian - _row97p);
    _row97advance = _row97remian * 5 / 100;
    _row97totalpayment = _row97remian + _row97advance;
    _row97totalcost = _row97totalpayment + (A * 97);
    _srow97i = _row97i.toStringAsFixed(2);
    _srow97p = _row97p.toStringAsFixed(2);
    _srow97remian = _row97remian.toStringAsFixed(2);
    _srow97advance = _row97advance.toStringAsFixed(2);
    _srow97totalpayment = _row97totalpayment.toStringAsFixed(2);
    _srow97totalcost = _row97totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row98p= 0.0;
    double _row98i = 0.0;
    double _row98remian = 0.0;
    double _row98advance = 0.0;
    double _row98totalpayment = 0.0;
    double _row98totalcost = 0.0;

    _row98i = (_row97remian * r);
    _row98p = A - _row98i;
    _row98remian = (_row97remian - _row98p);
    _row98advance = _row98remian * 5 / 100;
    _row98totalpayment = _row98remian + _row98advance;
    _row98totalcost = _row98totalpayment + (A * 98);
    _srow98i = _row98i.toStringAsFixed(2);
    _srow98p = _row98p.toStringAsFixed(2);
    _srow98remian = _row98remian.toStringAsFixed(2);
    _srow98advance = _row98advance.toStringAsFixed(2);
    _srow98totalpayment = _row98totalpayment.toStringAsFixed(2);
    _srow98totalcost = _row98totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row99p= 0.0;
    double _row99i = 0.0;
    double _row99remian = 0.0;
    double _row99advance = 0.0;
    double _row99totalpayment = 0.0;
    double _row99totalcost = 0.0;

    _row99i = (_row98remian * r);
    _row99p = A - _row99i;
    _row99remian = (_row98remian - _row99p);
    _row99advance = _row99remian * 5 / 100;
    _row99totalpayment = _row99remian + _row99advance;
    _row99totalcost = _row99totalpayment + (A * 99);
    _srow99i = _row99i.toStringAsFixed(2);
    _srow99p = _row99p.toStringAsFixed(2);
    _srow99remian = _row99remian.toStringAsFixed(2);
    _srow99advance = _row99advance.toStringAsFixed(2);
    _srow99totalpayment = _row99totalpayment.toStringAsFixed(2);
    _srow99totalcost = _row99totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row100p= 0.0;
    double _row100i = 0.0;
    double _row100remian = 0.0;
    double _row100advance = 0.0;
    double _row100totalpayment = 0.0;
    double _row100totalcost = 0.0;

    _row100i = (_row99remian * r);
    _row100p = A - _row100i;
    _row100remian = (_row99remian - _row100p);
    _row100advance = _row100remian * 5 / 100;
    _row100totalpayment = _row100remian + _row100advance;
    _row100totalcost = _row99totalpayment + (A * 100);
    _srow100i = _row100i.toStringAsFixed(2);
    _srow100p = _row100p.toStringAsFixed(2);
    _srow100remian = _row100remian.toStringAsFixed(2);
    _srow100advance = _row100advance.toStringAsFixed(2);
    _srow100totalpayment = _row100totalpayment.toStringAsFixed(2);
    _srow100totalcost = _row100totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row101p= 0.0;
    double _row101i = 0.0;
    double _row101remian = 0.0;
    double _row101advance = 0.0;
    double _row101totalpayment = 0.0;
    double _row101totalcost = 0.0;

    _row101i = (_row100remian * r);
    _row101p = A - _row101i;
    _row101remian = (_row100remian - _row101p);
    _row101advance = _row101remian * 5 / 100;
    _row101totalpayment = _row101remian + _row101advance;
    _row101totalcost = _row101totalpayment + (A * 101);
    _srow101i = _row101i.toStringAsFixed(2);
    _srow101p = _row101p.toStringAsFixed(2);
    _srow101remian = _row101remian.toStringAsFixed(2);
    _srow101advance = _row101advance.toStringAsFixed(2);
    _srow101totalpayment = _row101totalpayment.toStringAsFixed(2);
    _srow101totalcost = _row101totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row102p= 0.0;
    double _row102i = 0.0;
    double _row102remian = 0.0;
    double _row102advance = 0.0;
    double _row102totalpayment = 0.0;
    double _row102totalcost = 0.0;

    _row102i = (_row101remian * r);
    _row102p = A - _row102i;
    _row102remian = (_row101remian - _row102p);
    _row102advance = _row102remian * 5 / 100;
    _row102totalpayment = _row102remian + _row102advance;
    _row102totalcost = _row102totalpayment + (A * 102);
    _srow102i = _row102i.toStringAsFixed(2);
    _srow102p = _row102p.toStringAsFixed(2);
    _srow102remian = _row102remian.toStringAsFixed(2);
    _srow102advance = _row102advance.toStringAsFixed(2);
    _srow102totalpayment = _row102totalpayment.toStringAsFixed(2);
    _srow102totalcost = _row102totalcost.toStringAsFixed(2);
////////////////////////////////////////////////////////////////////

    double _row103p= 0.0;
    double _row103i = 0.0;
    double _row103remian = 0.0;
    double _row103advance = 0.0;
    double _row103totalpayment = 0.0;
    double _row103totalcost = 0.0;

    _row103i = (_row102remian * r);
    _row103p = A - _row103i;
    _row103remian = (_row102remian - _row103p);
    _row103advance = _row103remian * 5 / 100;
    _row103totalpayment = _row102remian + _row103advance;
    _row103totalcost = _row103totalpayment + (A * 103);
    _srow103i = _row103i.toStringAsFixed(2);
    _srow103p = _row103p.toStringAsFixed(2);
    _srow103remian = _row103remian.toStringAsFixed(2);
    _srow103advance = _row103advance.toStringAsFixed(2);
    _srow103totalpayment = _row103totalpayment.toStringAsFixed(2);
    _srow103totalcost = _row103totalcost.toStringAsFixed(2);
///////////////////////////////////////////////////////////////////

    double _row104p= 0.0;
    double _row104i = 0.0;
    double _row104remian = 0.0;
    double _row104advance = 0.0;
    double _row104totalpayment = 0.0;
    double _row104totalcost = 0.0;

    _row104i = (_row103remian * r);
    _row104p = A - _row104i;
    _row104remian = (_row103remian - _row104p);
    _row104advance = _row104remian * 5 / 100;
    _row104totalpayment = _row104remian + _row104advance;
    _row104totalcost = _row104totalpayment + (A * 104);
    _srow104i = _row104i.toStringAsFixed(2);
    _srow104p = _row104p.toStringAsFixed(2);
    _srow104remian = _row104remian.toStringAsFixed(2);
    _srow104advance = _row104advance.toStringAsFixed(2);
    _srow104totalpayment = _row104totalpayment.toStringAsFixed(2);
    _srow104totalcost = _row104totalcost.toStringAsFixed(2);
///////////////////////////////////////////////////////////////////

    double _row105p= 0.0;
    double _row105i = 0.0;
    double _row105remian = 0.0;
    double _row105advance = 0.0;
    double _row105totalpayment = 0.0;
    double _row105totalcost = 0.0;

    _row105i = (_row104remian * r);
    _row105p = A - _row105i;
    _row105remian = (_row104remian - _row105p);
    _row105advance = _row105remian * 5 / 100;
    _row105totalpayment = _row105remian + _row105advance;
    _row105totalcost = _row105totalpayment + (A * 105);
    _srow105i = _row105i.toStringAsFixed(2);
    _srow105p = _row105p.toStringAsFixed(2);
    _srow105remian = _row105remian.toStringAsFixed(2);
    _srow105advance = _row105advance.toStringAsFixed(2);
    _srow105totalpayment = _row105totalpayment.toStringAsFixed(2);
    _srow105totalcost = _row105totalcost.toStringAsFixed(2);
///////////////////////////////////////////////////////////////////

    double _row106p= 0.0;
    double _row106i = 0.0;
    double _row106remian = 0.0;
    double _row106advance = 0.0;
    double _row106totalpayment = 0.0;
    double _row106totalcost = 0.0;

    _row106i = (_row105remian * r);
    _row106p = A - _row106i;
    _row106remian = (_row105remian - _row106p);
    _row106advance = _row106remian * 5 / 100;
    _row106totalpayment = _row106remian + _row106advance;
    _row106totalcost = _row106totalpayment + (A * 106);
    _srow106i = _row106i.toStringAsFixed(2);
    _srow106p = _row106p.toStringAsFixed(2);
    _srow106remian = _row106remian.toStringAsFixed(2);
    _srow106advance = _row106advance.toStringAsFixed(2);
    _srow106totalpayment = _row106totalpayment.toStringAsFixed(2);
    _srow106totalcost = _row106totalcost.toStringAsFixed(2);
///////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////

    double _row107p= 0.0;
    double _row107i = 0.0;
    double _row107remian = 0.0;
    double _row107advance = 0.0;
    double _row107totalpayment = 0.0;
    double _row107totalcost = 0.0;

    _row107i = (_row106remian * r);
    _row107p = A - _row107i;
    _row107remian = (_row106remian - _row107p);
    _row107advance = _row107remian * 5 / 100;
    _row107totalpayment = _row107remian + _row107advance;
    _row107totalcost = _row107totalpayment + (A * 107);
    _srow107i = _row107i.toStringAsFixed(2);
    _srow107p = _row107p.toStringAsFixed(2);
    _srow107remian = _row107remian.toStringAsFixed(2);
    _srow107advance = _row107advance.toStringAsFixed(2);
    _srow107totalpayment = _row107totalpayment.toStringAsFixed(2);
    _srow107totalcost = _row107totalcost.toStringAsFixed(2);
///////////////////////////////////////////////////////////////////

    double _row108p= 0.0;
    double _row108i = 0.0;
    double _row108remian = 0.0;
    double _row108advance = 0.0;
    double _row108totalpayment = 0.0;
    double _row108totalcost = 0.0;

    _row108i = (_row107remian * r);
    _row108p = A - _row108i;
    _row108remian = (_row107remian - _row108p);
    _row108advance = _row108remian * 5 / 100;
    _row108totalpayment = _row108remian + _row108advance;
    _row108totalcost = _row108totalpayment + (A * 108);
    _srow108i = _row108i.toStringAsFixed(2);
    _srow108p = _row108p.toStringAsFixed(2);
    _srow108remian = _row108remian.toStringAsFixed(2);
    _srow108advance = _row108advance.toStringAsFixed(2);
    _srow108totalpayment = _row108totalpayment.toStringAsFixed(2);
    _srow108totalcost = _row108totalcost.toStringAsFixed(2);
    //////////////////////////////////////////////////////////////////

    double _row109p= 0.0;
    double _row109i = 0.0;
    double _row109remian = 0.0;
    double _row109advance = 0.0;
    double _row109totalpayment = 0.0;
    double _row109totalcost = 0.0;

    _row109i = (_row108remian * r);
    _row109p = A - _row109i;
    _row109remian = (_row108remian - _row109p);
    _row109advance = _row109remian * 5 / 100;
    _row109totalpayment = _row109remian + _row109advance;
    _row109totalcost = _row109totalpayment + (A * 109);
    _srow109i = _row109i.toStringAsFixed(2);
    _srow109p = _row109p.toStringAsFixed(2);
    _srow109remian = _row109remian.toStringAsFixed(2);
    _srow109advance = _row109advance.toStringAsFixed(2);
    _srow109totalpayment = _row109totalpayment.toStringAsFixed(2);
    _srow109totalcost = _row109totalcost.toStringAsFixed(2);
///////////////////////////////////////////////////////////////////

    double _row110p= 0.0;
    double _row110i = 0.0;
    double _row110remian = 0.0;
    double _row110advance = 0.0;
    double _row110totalpayment = 0.0;
    double _row110totalcost = 0.0;

    _row110i = (_row109remian * r);
    _row110p = A - _row110i;
    _row110remian = (_row109remian - _row110p);
    _row110advance = _row110remian * 5 / 100;
    _row110totalpayment = _row110remian + _row110advance;
    _row110totalcost = _row110totalpayment + (A * 110);
    _srow110i = _row110i.toStringAsFixed(2);
    _srow110p = _row110p.toStringAsFixed(2);
    _srow110remian = _row110remian.toStringAsFixed(2);
    _srow110advance = _row110advance.toStringAsFixed(2);
    _srow110totalpayment = _row110totalpayment.toStringAsFixed(2);
    _srow110totalcost = _row110totalcost.toStringAsFixed(2);
///////////////////////////////////////////////////////////////////

    double _row111p= 0.0;
    double _row111i = 0.0;
    double _row111remian = 0.0;
    double _row111advance = 0.0;
    double _row111totalpayment = 0.0;
    double _row111totalcost = 0.0;

    _row111i = (_row110remian * r);
    _row111p = A - _row111i;
    _row111remian = (_row110remian - _row111p);
    _row111advance = _row111remian * 5 / 100;
    _row111totalpayment = _row111remian + _row111advance;
    _row111totalcost = _row111totalpayment + (A * 111);
    _srow111i = _row111i.toStringAsFixed(2);
    _srow111p = _row111p.toStringAsFixed(2);
    _srow111remian = _row111remian.toStringAsFixed(2);
    _srow111advance = _row111advance.toStringAsFixed(2);
    _srow111totalpayment = _row111totalpayment.toStringAsFixed(2);
    _srow111totalcost = _row111totalcost.toStringAsFixed(2);
///////////////////////////////////////////////////////////////////

    double _row112p= 0.0;
    double _row112i = 0.0;
    double _row112remian = 0.0;
    double _row112advance = 0.0;
    double _row112totalpayment = 0.0;
    double _row112totalcost = 0.0;

    _row112i = (_row111remian * r);
    _row112p = A - _row112i;
    _row112remian = (_row111remian - _row112p);
    _row112advance = _row112remian * 5 / 100;
    _row112totalpayment = _row112remian + _row112advance;
    _row112totalcost = _row112totalpayment + (A * 112);
    _srow112i = _row112i.toStringAsFixed(2);
    _srow112p = _row112p.toStringAsFixed(2);
    _srow112remian = _row112remian.toStringAsFixed(2);
    _srow112advance = _row112advance.toStringAsFixed(2);
    _srow112totalpayment = _row112totalpayment.toStringAsFixed(2);
    _srow112totalcost = _row112totalcost.toStringAsFixed(2);
///////////////////////////////////////////////////////////////////

    double _row113p= 0.0;
    double _row113i = 0.0;
    double _row113remian = 0.0;
    double _row113advance = 0.0;
    double _row113totalpayment = 0.0;
    double _row113totalcost = 0.0;

    _row113i = (_row112remian * r);
    _row113p = A - _row113i;
    _row113remian = (_row112remian - _row113p);
    _row113advance = _row113remian * 5 / 100;
    _row113totalpayment = _row113remian + _row113advance;
    _row113totalcost = _row113totalpayment + (A * 113);
    _srow113i = _row113i.toStringAsFixed(2);
    _srow113p = _row113p.toStringAsFixed(2);
    _srow113remian = _row113remian.toStringAsFixed(2);
    _srow113advance = _row113advance.toStringAsFixed(2);
    _srow113totalpayment = _row113totalpayment.toStringAsFixed(2);
    _srow113totalcost = _row113totalcost.toStringAsFixed(2);
///////////////////////////////////////////////////////////////////

    double _row114p= 0.0;
    double _row114i = 0.0;
    double _row114remian = 0.0;
    double _row114advance = 0.0;
    double _row114totalpayment = 0.0;
    double _row114totalcost = 0.0;

    _row114i = (_row113remian * r);
    _row114p = A - _row114i;
    _row114remian = (_row113remian - _row114p);
    _row114advance = _row114remian * 5 / 100;
    _row114totalpayment = _row114remian + _row114advance;
    _row114totalcost = _row114totalpayment + (A * 114);
    _srow114i = _row114i.toStringAsFixed(2);
    _srow114p = _row114p.toStringAsFixed(2);
    _srow114remian = _row114remian.toStringAsFixed(2);
    _srow114advance = _row114advance.toStringAsFixed(2);
    _srow114totalpayment = _row114totalpayment.toStringAsFixed(2);
    _srow114totalcost = _row114totalcost.toStringAsFixed(2);
///////////////////////////////////////////////////////////////////

    double _row115p= 0.0;
    double _row115i = 0.0;
    double _row115remian = 0.0;
    double _row115advance = 0.0;
    double _row115totalpayment = 0.0;
    double _row115totalcost = 0.0;

    _row115i = (_row114remian * r);
    _row115p = A - _row115i;
    _row115remian = (_row114remian - _row115p);
    _row115advance = _row115remian * 5 / 100;
    _row115totalpayment = _row115remian + _row115advance;
    _row115totalcost = _row115totalpayment + (A * 115);
    _srow115i = _row115i.toStringAsFixed(2);
    _srow115p = _row115p.toStringAsFixed(2);
    _srow115remian = _row115remian.toStringAsFixed(2);
    _srow115advance = _row115advance.toStringAsFixed(2);
    _srow115totalpayment = _row115totalpayment.toStringAsFixed(2);
    _srow115totalcost = _row115totalcost.toStringAsFixed(2);
//////////////////////////////////////////////////////////////////

    double _row116p= 0.0;
    double _row116i = 0.0;
    double _row116remian = 0.0;
    double _row116advance = 0.0;
    double _row116totalpayment = 0.0;
    double _row116totalcost = 0.0;

    _row116i = (_row115remian * r);
    _row116p = A - _row116i;
    _row116remian = (_row115remian - _row116p);
    _row116advance = _row116remian * 5 / 100;
    _row116totalpayment = _row116remian + _row116advance;
    _row116totalcost = _row116totalpayment + (A * 116);
    _srow116i = _row116i.toStringAsFixed(2);
    _srow116p = _row116p.toStringAsFixed(2);
    _srow116remian = _row116remian.toStringAsFixed(2);
    _srow116advance = _row116advance.toStringAsFixed(2);
    _srow116totalpayment = _row116totalpayment.toStringAsFixed(2);
    _srow116totalcost = _row116totalcost.toStringAsFixed(2);
//////////////////////////////////////////////////////////////////

    double _row117p= 0.0;
    double _row117i = 0.0;
    double _row117remian = 0.0;
    double _row117advance = 0.0;
    double _row117totalpayment = 0.0;
    double _row117totalcost = 0.0;

    _row117i = (_row116remian * r);
    _row117p = A - _row117i;
    _row117remian = (_row116remian - _row117p);
    _row117advance = _row117remian * 5 / 100;
    _row117totalpayment = _row117remian + _row117advance;
    _row117totalcost = _row117totalpayment + (A * 117);
    _srow117i = _row117i.toStringAsFixed(2);
    _srow117p = _row117p.toStringAsFixed(2);
    _srow117remian = _row117remian.toStringAsFixed(2);
    _srow117advance = _row117advance.toStringAsFixed(2);
    _srow117totalpayment = _row117totalpayment.toStringAsFixed(2);
    _srow117totalcost = _row117totalcost.toStringAsFixed(2);
//////////////////////////////////////////////////////////////////

    double _row118p= 0.0;
    double _row118i = 0.0;
    double _row118remian = 0.0;
    double _row118advance = 0.0;
    double _row118totalpayment = 0.0;
    double _row118totalcost = 0.0;

    _row118i = (_row117remian * r);
    _row118p = A - _row118i;
    _row118remian = (_row117remian - _row118p);
    _row118advance = _row118remian * 5 / 100;
    _row118totalpayment = _row118remian + _row118advance;
    _row118totalcost = _row118totalpayment + (A * 118);
    _srow118i = _row118i.toStringAsFixed(2);
    _srow118p = _row118p.toStringAsFixed(2);
    _srow118remian = _row118remian.toStringAsFixed(2);
    _srow118advance = _row118advance.toStringAsFixed(2);
    _srow118totalpayment = _row118totalpayment.toStringAsFixed(2);
    _srow118totalcost = _row118totalcost.toStringAsFixed(2);
//////////////////////////////////////////////////////////////////

    double _row119p= 0.0;
    double _row119i = 0.0;
    double _row119remian = 0.0;
    double _row119advance = 0.0;
    double _row119totalpayment = 0.0;
    double _row119totalcost = 0.0;

    _row119i = (_row118remian * r);
    _row119p = A - _row119i;
    _row119remian = (_row118remian - _row119p);
    _row119advance = _row119remian * 5 / 100;
    _row119totalpayment = _row119remian + _row119advance;
    _row119totalcost = _row119totalpayment + (A * 119);
    _srow119i = _row119i.toStringAsFixed(2);
    _srow119p = _row119p.toStringAsFixed(2);
    _srow119remian = _row119remian.toStringAsFixed(2);
    _srow119advance = _row119advance.toStringAsFixed(2);
    _srow119totalpayment = _row119totalpayment.toStringAsFixed(2);
    _srow119totalcost = _row119totalcost.toStringAsFixed(2);
//////////////////////////////////////////////////////////////////

    double _row120p= 0.0;
    double _row120i = 0.0;
    double _row120remian = 0.0;
    double _row120advance = 0.0;
    double _row120totalpayment = 0.0;
    double _row120totalcost = 0.0;

    _row120i = (_row119remian * r);
    _row120p = A - _row120i;
    _row120remian = (_row119remian - _row120p);
    _row120advance = _row120remian * 5 / 100;
    _row120totalpayment = _row120remian + _row120advance;
    _row120totalcost = _row120totalpayment + (A * 120);
    _srow120i = _row120i.toStringAsFixed(2);
    _srow120p = _row120p.toStringAsFixed(2);
    _srow120remian = _row120remian.toStringAsFixed(2);
    _srow120advance = _row120advance.toStringAsFixed(2);
    _srow120totalpayment = _row120totalpayment.toStringAsFixed(2);
    _srow120totalcost = _row120totalcost.toStringAsFixed(2);
    /////////////////////////////////////////////////////////////////////
    setState(() {});
  }

  Widget emiResultsWidget(emiResult) {
    bool canShow = false;
    String _emiResult = emiResult;

    if (_emiResult.length > 0) {
      canShow = true;
    }
    return
      Container(

        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        margin: EdgeInsets.only(top: 25.0),
        child: canShow ? Column(
            children: [
              Text("القسط الشهرى",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold, color: Colors.white
                  )
              ),
              Container(
                  child: Text(_emiResult,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold, color: Colors.white
                      ))
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[

                        Container(

                          child: Column(
                            children: <Widget>[
                              Text("اجمالى القرض + الفوائد",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  )
                              ),
                              Text(_totalamount,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ))
                            ],
                          ),
                          padding: EdgeInsets.only(left: 10),
                        ),

                      ],
                    ),
                    Container(
                      width: 1,
                      height: 55,
                      color: Colors.grey,
                    ),

                    Column(
                      children: <Widget>[

                        Container(

                          child: Column(
                            children: <Widget>[
                              Text("اجمالى الفايده المدفوعه",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  )
                              ),
                              Text(_totalinterest,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ))
                            ],
                          ),
                          padding: EdgeInsets.only(right: 10),

                        ),
                      ],
                    )
                  ],
                ),


              ),


              SizedBox(height: 20,),

              ExpansionTile(

                title: Text(
                  "جدول الاقساط",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),

                subtitle: Text("اضغط للاطلاع على جدول الاقساط",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),),
                trailing: Icon(
                  Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                backgroundColor: Color(0XFF802b40),

                children: [
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Table(

                            defaultColumnWidth: IntrinsicColumnWidth(),
                            textDirection: TextDirection.rtl,

                            border: TableBorder.all(color: Colors.white,),
                            children: [
                              TableRow(

                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('مسلسل',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('اجمالى التكلفه المدفوعه',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('اجمالى السداد',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('عموله السداد المعجل',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('الاصل الباقي',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('الفايده',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('الاصل',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('القسط',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('بدايه الرصيد',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('مسلسل',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                  ]),
                              TableRow(

                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '1', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_fullpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        _int, textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        _pR, textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        _p1, textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_principle,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '1', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

                              //// row 2/////////////////////////////////////////////////////////////////////
                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '2', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow2totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow2totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow2advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow2remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow2i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow2p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow2principle,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '2', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 3/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '3', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow3totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow3totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow3advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow3remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow3i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow3p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow2remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '3', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 4/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '4', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow4totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow4totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow4advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow4remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow4i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow4p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow3remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '4', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 5/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '5', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow5totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow5totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow5advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow5remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow5i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow5p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow4remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '5', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 6/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '6', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow6totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow6totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow6advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow6remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow6i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow6p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow5remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '6', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 7/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '7', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow7totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow7totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow7advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow7remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow7i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow7p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow6remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '7', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 8/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '8', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow8totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow8totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow8advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow8remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow8i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow8p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow7remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '8', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 9/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '9', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow9totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow9totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow9advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow9remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow9i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow9p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow8remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '9', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 10/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '10', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow10totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow10totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow10advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow10remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow10i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow10p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow9remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '10', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 11/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '11', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow11totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow11totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow11advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow11remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow11i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow11p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow10remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '11', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 12/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '12', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow12totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow12totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow12advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow12remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow12i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow12p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow11remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '12', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 13/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '13', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow13totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow13totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow13advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow13remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow13i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow13p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow12remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '13', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 14/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '14', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow14totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow14totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow14advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow14remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow14i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow14p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow13remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '14', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 15/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '15', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow15totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow15totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow15advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow15remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow15i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow15p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow14remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '15', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 16/////////////////////////////////////////////////////////////////////
     if ( _srow15totalpayment.length > 0 )

                             TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '16', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow16totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow16totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow16advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow16remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow16i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow16p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow15remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '16', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 17/////////////////////////////////////////////////////////////////////

                                TableRow(

                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Center(child: Text(
                                          '17',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),)),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(_srow17totalcost,
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(_srow17totalpayment,
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(_srow17advance,
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(_srow17remian,
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(_srow17i,
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(_srow17p,
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(_emiResult,
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(_srow16remian,
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Center(child: Text(
                                          '17',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),)),
                                      ),
                                    ]),

                                  
                              //// row 18/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '18', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow18totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow18totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow18advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow18remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow18i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow18p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow17remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '18', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 19/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '19', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow19totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow19totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow19advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow19remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow19i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow19p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow18remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '19', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
//// row 20/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '20', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow20totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow20totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow20advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow20remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow20i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow20p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow19remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '20', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 21/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '21', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow21totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow21totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow21advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow21remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow21i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow21p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow20remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '21', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 22/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '22', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow22totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow22totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow22advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow22remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow22i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow22p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow21remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '22', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 23/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '23', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow23totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow23totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow23advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow23remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow23i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow23p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow22remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '23', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 24/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '24', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow24totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow24totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow24advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow24remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow24i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow24p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow23remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '24', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 25/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '25', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow25totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow25totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow25advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow25remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow25i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow25p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow24remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '25', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 26/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '26', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow26totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow26totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow26advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow26remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow26i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow26p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow25remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '26', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 27/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '27', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow27totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow27totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow27advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow27remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow27i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow27p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow26remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '27', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 28/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '28', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow28totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow28totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow28advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow28remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow28i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow28p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow27remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '28', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 29/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '29', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow29totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow29totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow29advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow29remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow29i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow29p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow28remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '29', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 30/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '30', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow30totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow30totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow30advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow30remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow30i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow30p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow29remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '30', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 31/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '31', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow31totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow31totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow31advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow31remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow31i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow31p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow30remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '31', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 32/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '32', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow32totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow32totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow32advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow32remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow32i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow32p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow31remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '32', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 33////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '33', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow33totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow33totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow33advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow33remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow33i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow33p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow32remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '33', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 34/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '34', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow34totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow34totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow34advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow34remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow34i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow34p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow33remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '34', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 35/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '35', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow35totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow35totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow35advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow35remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow35i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow35p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow34remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '35', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              //// row 36/////////////////////////////////////////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '36', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow36totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow36totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow36advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow36remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow36i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow36p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow35remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '36', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                              ////////////////////////////////////37/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '37', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow37totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow37totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow37advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow37remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow37i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow37p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow36remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '37', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////38/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '38', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow38totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow38totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow38advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow38remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow38i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow38p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow37remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '38', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////39/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '39', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow39totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow39totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow39advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow39remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow39i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow39p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow38remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '39', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////40/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '40', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow40totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow40totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow40advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow40remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow40i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow40p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow39remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '40', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////40/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '41', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow41totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow41totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow41advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow41remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow41i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow41p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow40remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '41', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////42/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '42', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow42totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow42totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow42advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow42remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow42i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow42p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow41remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '42', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////43/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '43', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow43totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow43totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow43advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow43remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow43i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow43p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow42remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '43', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////44/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '44', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow44totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow44totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow44advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow44remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow44i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow44p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow43remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '44', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////45/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '45', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow45totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow45totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow45advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow45remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow45i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow45p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow44remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '45', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////46/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '46', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow46totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow46totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow46advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow46remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow46i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow46p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow45remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '46', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////47/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '47', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow47totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow47totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow47advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow47remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow47i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow47p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow46remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '47', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////48/////////////////////////////////
                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '48', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow48totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow48totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow48advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow48remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow48i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow48p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow47remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '48', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////49/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '49', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow49totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow49totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow49advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow49remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow49i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow49p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow48remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '49', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////50/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '50', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow50totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow50totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow50advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow50remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow50i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow50p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow49remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '50', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////51/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '51', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow51totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow51totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow51advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow51remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow51i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow51p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow50remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '51', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////52/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '52', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow52totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow52totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow52advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow52remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow52i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow52p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow51remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '52', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////53/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '53', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow53totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow53totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow53advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow53remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow53i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow53p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow52remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '53', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////54/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '54', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow54totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow54totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow54advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow54remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow54i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow54p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow53remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '54', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////55/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '55', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow55totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow55totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow55advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow55remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow55i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow55p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow54remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '55', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////56/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '56', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow56totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow56totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow56advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow56remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow56i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow56p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow55remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '56', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////57/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '57', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow57totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow57totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow57advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow57remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow57i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow57p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow56remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '57', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////58/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '58', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow58totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow58totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow58advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow58remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow58i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow58p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow57remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '58', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////59/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '59', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow59totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow59totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow59advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow59remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow59i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow59p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow58remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '59', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////60/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '60', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow60totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow60totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow60advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow60remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow60i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow60p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow59remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '60', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////61/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '61', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow61totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow61totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow61advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow61remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow61i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow61p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow60remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '61', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////62/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '62', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow62totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow62totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow62advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow62remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow62i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow62p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow61remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '62', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////63/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '63', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow63totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow63totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow63advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow63remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow63i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow63p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow62remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '63', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////64/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '64', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow64totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow64totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow64advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow64remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow64i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow64p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow63remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '64', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////65/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '65', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow65totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow65totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow65advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow65remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow65i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow65p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow64remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '65', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////66/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '66', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow66totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow66totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow66advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow66remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow66i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow66p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow65remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '66', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////60/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '67', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow67totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow67totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow67advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow67remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow67i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow67p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow66remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '67', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////68/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '68', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow68totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow68totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow68advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow68remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow68i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow68p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow67remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '68', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////69/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '69', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow69totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow69totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow69advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow69remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow69i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow69p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow68remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '69', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////70/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '70', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow70totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow70totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow70advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow70remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow70i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow70p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow69remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '70', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////71/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '71', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow71totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow71totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow71advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow71remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow71i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow71p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow70remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '71', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),

////////////////////////////////////72/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '72', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow72totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow72totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow72advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow72remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow72i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow72p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow71remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '72', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////73/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '73', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow73totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow73totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow73advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow73remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow73i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow73p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow72remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '73', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////74/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '74', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow74totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow74totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow74advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow74remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow74i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow74p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow73remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '74', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////75/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '75', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow75totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow75totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow75advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow75remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow75i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow75p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow74remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '75', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////76/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '76', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow76totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow76totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow76advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow76remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow76i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow76p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow75remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '76', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////71/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '77', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow77totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow77totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow77advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow77remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow77i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow77p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow76remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '77', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////78/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '78', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow78totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow78totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow78advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow78remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow78i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow78p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow77remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '78', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////79/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '79', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow79totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow79totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow79advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow79remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow79i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow79p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow78remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '79', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////80/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '80', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow80totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow80totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow80advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow80remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow80i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow80p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow79remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '80', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////81/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '81', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow81totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow81totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow81advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow81remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow81i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow81p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow80remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '81', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////82/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '82', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow82totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow82totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow82advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow82remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow82i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow82p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow81remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '82', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
////////////////////////////////////83/////////////////////////////////

                              TableRow(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '83', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow83totalcost,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow83totalpayment,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow83advance,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow83remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow83i,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow83p,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_emiResult,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(_srow82remian,
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Center(child: Text(
                                        '83', textDirection: TextDirection.rtl,
                                        style: TextStyle(color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),)),
                                    ),
                                  ]),
                            ],
                          ),

                        ],
                      )
                      
                  )

                ],
              ),


            ]
        )


            : Container(),


      );
    
  }

}


