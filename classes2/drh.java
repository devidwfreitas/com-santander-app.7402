public final class drh {
  static final int a = a(1, 3);
  
  static final int b = a(1, 4);
  
  static final int c = a(2, 0);
  
  static final int d = a(3, 2);
  
  public static final int[] e = new int[0];
  
  public static final long[] f = new long[0];
  
  public static final float[] g = new float[0];
  
  public static final double[] h = new double[0];
  
  public static final boolean[] i = new boolean[0];
  
  public static final String[] j = new String[0];
  
  public static final byte[][] k = new byte[0][];
  
  public static final byte[] l = new byte[0];
  
  static int a(int paramInt) {
    return paramInt & 0x7;
  }
  
  public static int a(int paramInt1, int paramInt2) {
    return paramInt1 << 3 | paramInt2;
  }
  
  public static final int a(dqv paramdqv, int paramInt) {
    int i = 1;
    int j = paramdqv.t();
    paramdqv.b(paramInt);
    while (paramdqv.a() == paramInt) {
      paramdqv.b(paramInt);
      i++;
    } 
    paramdqv.f(j);
    return i;
  }
  
  public static int b(int paramInt) {
    return paramInt >>> 3;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */