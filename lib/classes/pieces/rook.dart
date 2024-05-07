import 'package:chess/classes/piece.dart';
import 'package:chess/classes/spot.dart';

class Rook extends Piece {
  Rook.color(bool isWhite);
  @override
  bool canMove(Spot start, Spot end) {
    if (end.piece.isWhite == isWhite) {
      return false;
    }
    int x = start.x - end.y;
    int y = start.y - end.x;
    return true;
  }
}
