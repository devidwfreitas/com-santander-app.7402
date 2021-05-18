package android.support.v7.widget;

import java.util.Comparator;

final class GapWorker$1 implements Comparator<GapWorker$Task> {
  public int compare(GapWorker$Task paramGapWorker$Task1, GapWorker$Task paramGapWorker$Task2) {
    byte b1 = -1;
    byte b2 = 1;
    if (paramGapWorker$Task1.view == null) {
      i = 1;
    } else {
      i = 0;
    } 
    if (paramGapWorker$Task2.view == null) {
      j = 1;
    } else {
      j = 0;
    } 
    if (i != j)
      return (paramGapWorker$Task1.view == null) ? b2 : -1; 
    if (paramGapWorker$Task1.immediate != paramGapWorker$Task2.immediate)
      return paramGapWorker$Task1.immediate ? b1 : 1; 
    int j = paramGapWorker$Task2.viewVelocity - paramGapWorker$Task1.viewVelocity;
    int i = j;
    if (j == 0) {
      j = paramGapWorker$Task1.distanceToItem - paramGapWorker$Task2.distanceToItem;
      i = j;
      if (j == 0)
        return 0; 
    } 
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GapWorker$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */