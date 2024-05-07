import 'package:chess/classes/piece.dart';

class Spot {
  final Piece? _piece;
  final int _x;
  final int _y;

  int get x => _x;
  int get y => _y;
  Piece get piece => _piece!;

  Spot(this._x, this._y, this._piece);
}
