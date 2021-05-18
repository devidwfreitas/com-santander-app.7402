package android.support.v7.widget;

import java.util.ArrayList;

class DefaultItemAnimator$1 implements Runnable {
  public void run() {
    for (DefaultItemAnimator$MoveInfo defaultItemAnimator$MoveInfo : moves)
      DefaultItemAnimator.this.animateMoveImpl(defaultItemAnimator$MoveInfo.holder, defaultItemAnimator$MoveInfo.fromX, defaultItemAnimator$MoveInfo.fromY, defaultItemAnimator$MoveInfo.toX, defaultItemAnimator$MoveInfo.toY); 
    moves.clear();
    DefaultItemAnimator.this.mMovesList.remove(moves);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DefaultItemAnimator$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */