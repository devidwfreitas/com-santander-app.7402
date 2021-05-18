package android.support.v7.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;

public class DiffUtil {
  private static final Comparator<DiffUtil$Snake> SNAKE_COMPARATOR = new DiffUtil$1();
  
  public static DiffUtil$DiffResult calculateDiff(DiffUtil$Callback paramDiffUtil$Callback) {
    return calculateDiff(paramDiffUtil$Callback, true);
  }
  
  public static DiffUtil$DiffResult calculateDiff(DiffUtil$Callback paramDiffUtil$Callback, boolean paramBoolean) {
    int i = paramDiffUtil$Callback.getOldListSize();
    int j = paramDiffUtil$Callback.getNewListSize();
    ArrayList<DiffUtil$Snake> arrayList = new ArrayList();
    ArrayList<DiffUtil$Range> arrayList1 = new ArrayList();
    arrayList1.add(new DiffUtil$Range(0, i, 0, j));
    i = i + j + Math.abs(i - j);
    int[] arrayOfInt1 = new int[i * 2];
    int[] arrayOfInt2 = new int[i * 2];
    ArrayList<DiffUtil$Range> arrayList2 = new ArrayList();
    while (!arrayList1.isEmpty()) {
      DiffUtil$Range diffUtil$Range = arrayList1.remove(arrayList1.size() - 1);
      DiffUtil$Snake diffUtil$Snake = diffPartial(paramDiffUtil$Callback, diffUtil$Range.oldListStart, diffUtil$Range.oldListEnd, diffUtil$Range.newListStart, diffUtil$Range.newListEnd, arrayOfInt1, arrayOfInt2, i);
      if (diffUtil$Snake != null) {
        DiffUtil$Range diffUtil$Range1;
        if (diffUtil$Snake.size > 0)
          arrayList.add(diffUtil$Snake); 
        diffUtil$Snake.x += diffUtil$Range.oldListStart;
        diffUtil$Snake.y += diffUtil$Range.newListStart;
        if (arrayList2.isEmpty()) {
          diffUtil$Range1 = new DiffUtil$Range();
        } else {
          diffUtil$Range1 = arrayList2.remove(arrayList2.size() - 1);
        } 
        diffUtil$Range1.oldListStart = diffUtil$Range.oldListStart;
        diffUtil$Range1.newListStart = diffUtil$Range.newListStart;
        if (diffUtil$Snake.reverse) {
          diffUtil$Range1.oldListEnd = diffUtil$Snake.x;
          diffUtil$Range1.newListEnd = diffUtil$Snake.y;
        } else if (diffUtil$Snake.removal) {
          diffUtil$Range1.oldListEnd = diffUtil$Snake.x - 1;
          diffUtil$Range1.newListEnd = diffUtil$Snake.y;
        } else {
          diffUtil$Range1.oldListEnd = diffUtil$Snake.x;
          diffUtil$Range1.newListEnd = diffUtil$Snake.y - 1;
        } 
        arrayList1.add(diffUtil$Range1);
        if (diffUtil$Snake.reverse) {
          if (diffUtil$Snake.removal) {
            diffUtil$Range.oldListStart = diffUtil$Snake.x + diffUtil$Snake.size + 1;
            diffUtil$Range.newListStart = diffUtil$Snake.y + diffUtil$Snake.size;
          } else {
            diffUtil$Range.oldListStart = diffUtil$Snake.x + diffUtil$Snake.size;
            diffUtil$Range.newListStart = diffUtil$Snake.y + diffUtil$Snake.size + 1;
          } 
        } else {
          diffUtil$Range.oldListStart = diffUtil$Snake.x + diffUtil$Snake.size;
          diffUtil$Range.newListStart = diffUtil$Snake.y + diffUtil$Snake.size;
        } 
        arrayList1.add(diffUtil$Range);
        continue;
      } 
      arrayList2.add(diffUtil$Range);
    } 
    Collections.sort(arrayList, SNAKE_COMPARATOR);
    return new DiffUtil$DiffResult(paramDiffUtil$Callback, arrayList, arrayOfInt1, arrayOfInt2, paramBoolean);
  }
  
  private static DiffUtil$Snake diffPartial(DiffUtil$Callback paramDiffUtil$Callback, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfint1, int[] paramArrayOfint2, int paramInt5) {
    int j = paramInt2 - paramInt1;
    int k = paramInt4 - paramInt3;
    if (paramInt2 - paramInt1 < 1 || paramInt4 - paramInt3 < 1)
      return null; 
    int m = j - k;
    int n = (j + k + 1) / 2;
    Arrays.fill(paramArrayOfint1, paramInt5 - n - 1, paramInt5 + n + 1, 0);
    Arrays.fill(paramArrayOfint2, paramInt5 - n - 1 + m, paramInt5 + n + 1 + m, j);
    if (m % 2 != 0) {
      paramInt4 = 1;
    } else {
      paramInt4 = 0;
    } 
    int i;
    for (i = 0; i <= n; i++) {
      DiffUtil$Snake diffUtil$Snake;
      int i1;
      for (i1 = -i; i1 <= i; i1 += 2) {
        boolean bool;
        if (i1 == -i || (i1 != i && paramArrayOfint1[paramInt5 + i1 - 1] < paramArrayOfint1[paramInt5 + i1 + 1])) {
          paramInt2 = paramArrayOfint1[paramInt5 + i1 + 1];
          bool = false;
        } else {
          paramInt2 = paramArrayOfint1[paramInt5 + i1 - 1] + 1;
          bool = true;
        } 
        int i2 = paramInt2;
        for (paramInt2 -= i1; i2 < j && paramInt2 < k && paramDiffUtil$Callback.areItemsTheSame(paramInt1 + i2, paramInt3 + paramInt2); paramInt2++)
          i2++; 
        paramArrayOfint1[paramInt5 + i1] = i2;
        if (paramInt4 != 0 && i1 >= m - i + 1 && i1 <= m + i - 1 && paramArrayOfint1[paramInt5 + i1] >= paramArrayOfint2[paramInt5 + i1]) {
          diffUtil$Snake = new DiffUtil$Snake();
          diffUtil$Snake.x = paramArrayOfint2[paramInt5 + i1];
          diffUtil$Snake.y = diffUtil$Snake.x - i1;
          diffUtil$Snake.size = paramArrayOfint1[paramInt5 + i1] - paramArrayOfint2[paramInt5 + i1];
          diffUtil$Snake.removal = bool;
          diffUtil$Snake.reverse = false;
          return diffUtil$Snake;
        } 
      } 
      for (i1 = -i; i1 <= i; i1 += 2) {
        boolean bool;
        int i3 = i1 + m;
        if (i3 == i + m || (i3 != -i + m && paramArrayOfint2[paramInt5 + i3 - 1] < paramArrayOfint2[paramInt5 + i3 + 1])) {
          paramInt2 = paramArrayOfint2[paramInt5 + i3 - 1];
          bool = false;
        } else {
          paramInt2 = paramArrayOfint2[paramInt5 + i3 + 1] - 1;
          bool = true;
        } 
        int i2 = paramInt2;
        for (paramInt2 -= i3; i2 > 0 && paramInt2 > 0 && diffUtil$Snake.areItemsTheSame(paramInt1 + i2 - 1, paramInt3 + paramInt2 - 1); paramInt2--)
          i2--; 
        paramArrayOfint2[paramInt5 + i3] = i2;
        if (paramInt4 == 0 && i1 + m >= -i && i1 + m <= i && paramArrayOfint1[paramInt5 + i3] >= paramArrayOfint2[paramInt5 + i3]) {
          diffUtil$Snake = new DiffUtil$Snake();
          diffUtil$Snake.x = paramArrayOfint2[paramInt5 + i3];
          diffUtil$Snake.y = diffUtil$Snake.x - i3;
          diffUtil$Snake.size = paramArrayOfint1[paramInt5 + i3] - paramArrayOfint2[paramInt5 + i3];
          diffUtil$Snake.removal = bool;
          diffUtil$Snake.reverse = true;
          return diffUtil$Snake;
        } 
      } 
    } 
    throw new IllegalStateException("DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\DiffUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */