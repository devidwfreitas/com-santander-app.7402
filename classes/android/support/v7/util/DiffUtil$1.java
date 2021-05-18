package android.support.v7.util;

import java.util.Comparator;

final class DiffUtil$1 implements Comparator<DiffUtil$Snake> {
  public int compare(DiffUtil$Snake paramDiffUtil$Snake1, DiffUtil$Snake paramDiffUtil$Snake2) {
    int j = paramDiffUtil$Snake1.x - paramDiffUtil$Snake2.x;
    int i = j;
    if (j == 0)
      i = paramDiffUtil$Snake1.y - paramDiffUtil$Snake2.y; 
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\DiffUtil$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */