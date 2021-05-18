package android.support.v7.widget;

class PositionMap$ContainerHelpers {
  static final boolean[] EMPTY_BOOLEANS = new boolean[0];
  
  static final int[] EMPTY_INTS = new int[0];
  
  static final long[] EMPTY_LONGS = new long[0];
  
  static final Object[] EMPTY_OBJECTS = new Object[0];
  
  static int binarySearch(int[] paramArrayOfint, int paramInt1, int paramInt2) {
    int i = 0;
    int j = paramInt1 - 1;
    paramInt1 = i;
    i = j;
    while (paramInt1 <= i) {
      j = paramInt1 + i >>> 1;
      int k = paramArrayOfint[j];
      if (k < paramInt2) {
        paramInt1 = j + 1;
        continue;
      } 
      if (k > paramInt2) {
        i = j - 1;
        continue;
      } 
      return j;
    } 
    return paramInt1 ^ 0xFFFFFFFF;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\PositionMap$ContainerHelpers.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */