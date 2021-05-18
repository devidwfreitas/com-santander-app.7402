package com.datami.smi.f;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

class k extends Thread {
  private static String a;
  
  private static final long b = 100L;
  
  private static final byte[] d = new byte[] { 
      81, -102, -37, -17, 50, -22, 1, 10, 3, -12, 
      5, -2, -79, 86, -15, 10, -13, -73, 82, -15, 
      6, -8, -3, 16, -6, 2, -71, -13, 86, -9, 
      2, -8, -7, 12, -83, 86, -15, 2, -1, -77, 
      65, 2, -70, 82, 0, -6, 0, -1, -12, -2, 
      -68, 43, 5, -10, -9, -69, 77, 0, 4, -85, 
      66, 8, 2, 3, -15, -70, 82, -15, 6, -8, 
      -3, 16, -6, 2, -83, 79, 1, -4, 0, -12, 
      12, -7, 12, -76, 8, 8, -5, -13, 25, -5, 
      -19, 23, 2, -8, -7, 12 };
  
  private static int e = 44;
  
  private final Queue c;
  
  static {
    a = a(d[58], d[44], d[51]) + k.class.getSimpleName();
  }
  
  public k(ConcurrentLinkedQueue paramConcurrentLinkedQueue) {
    super(a(b1, b2, b2 | 0x23));
    this.c = paramConcurrentLinkedQueue;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt1 = 88 - paramInt1;
    byte[] arrayOfByte2 = d;
    int j = 48 - paramInt3;
    int i = 91 - paramInt2 * 2;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      paramInt3 = j;
    } else {
      paramInt2 = i;
      paramInt3 = 0;
      int n = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
    } 
    i = paramInt3 + i + 1;
    paramInt1++;
    paramInt3 = paramInt2;
    paramInt2 = i;
    int m = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
  }
  
  public void run() {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: invokestatic open : ()Ljava/nio/channels/Selector;
    //   5: astore #4
    //   7: aload #4
    //   9: astore_3
    //   10: invokestatic interrupted : ()Z
    //   13: ifne -> 164
    //   16: aload_0
    //   17: getfield c : Ljava/util/Queue;
    //   20: invokeinterface poll : ()Ljava/lang/Object;
    //   25: checkcast com/datami/smi/f/d
    //   28: astore #4
    //   30: aload #4
    //   32: ifnull -> 43
    //   35: aload #4
    //   37: aload_3
    //   38: invokeinterface a : (Ljava/nio/channels/Selector;)V
    //   43: aload_3
    //   44: ldc2_w 100
    //   47: invokevirtual select : (J)I
    //   50: pop
    //   51: aload_3
    //   52: invokevirtual selectedKeys : ()Ljava/util/Set;
    //   55: astore #4
    //   57: aload #4
    //   59: invokeinterface iterator : ()Ljava/util/Iterator;
    //   64: astore #5
    //   66: aload #5
    //   68: invokeinterface hasNext : ()Z
    //   73: ifeq -> 134
    //   76: aload #5
    //   78: invokeinterface next : ()Ljava/lang/Object;
    //   83: checkcast java/nio/channels/SelectionKey
    //   86: astore #6
    //   88: aload #6
    //   90: invokevirtual attachment : ()Ljava/lang/Object;
    //   93: checkcast com/datami/smi/f/d
    //   96: aload #6
    //   98: invokeinterface a : (Ljava/nio/channels/SelectionKey;)V
    //   103: goto -> 66
    //   106: astore #4
    //   108: bipush #84
    //   110: getstatic com/datami/smi/f/k.e : I
    //   113: iconst_2
    //   114: iushr
    //   115: getstatic com/datami/smi/f/k.d : [B
    //   118: bipush #44
    //   120: baload
    //   121: invokestatic a : (III)Ljava/lang/String;
    //   124: pop
    //   125: aload_3
    //   126: ifnull -> 133
    //   129: aload_3
    //   130: invokevirtual close : ()V
    //   133: return
    //   134: aload #4
    //   136: invokeinterface clear : ()V
    //   141: goto -> 10
    //   144: astore #5
    //   146: aload_3
    //   147: astore #4
    //   149: aload #5
    //   151: astore_3
    //   152: aload #4
    //   154: ifnull -> 162
    //   157: aload #4
    //   159: invokevirtual close : ()V
    //   162: aload_3
    //   163: athrow
    //   164: aload_3
    //   165: ifnull -> 133
    //   168: aload_3
    //   169: invokevirtual close : ()V
    //   172: return
    //   173: astore_3
    //   174: getstatic com/datami/smi/f/k.d : [B
    //   177: iconst_2
    //   178: baload
    //   179: ineg
    //   180: istore_1
    //   181: getstatic com/datami/smi/f/k.d : [B
    //   184: bipush #33
    //   186: baload
    //   187: istore_2
    //   188: iload_1
    //   189: iload_2
    //   190: iload_2
    //   191: iconst_2
    //   192: iadd
    //   193: invokestatic a : (III)Ljava/lang/String;
    //   196: pop
    //   197: return
    //   198: astore_3
    //   199: getstatic com/datami/smi/f/k.d : [B
    //   202: iconst_2
    //   203: baload
    //   204: ineg
    //   205: istore_1
    //   206: getstatic com/datami/smi/f/k.d : [B
    //   209: bipush #33
    //   211: baload
    //   212: istore_2
    //   213: iload_1
    //   214: iload_2
    //   215: iload_2
    //   216: iconst_2
    //   217: iadd
    //   218: invokestatic a : (III)Ljava/lang/String;
    //   221: pop
    //   222: return
    //   223: astore #4
    //   225: getstatic com/datami/smi/f/k.d : [B
    //   228: iconst_2
    //   229: baload
    //   230: ineg
    //   231: istore_1
    //   232: getstatic com/datami/smi/f/k.d : [B
    //   235: bipush #33
    //   237: baload
    //   238: istore_2
    //   239: iload_1
    //   240: iload_2
    //   241: iload_2
    //   242: iconst_2
    //   243: iadd
    //   244: invokestatic a : (III)Ljava/lang/String;
    //   247: pop
    //   248: goto -> 162
    //   251: astore_3
    //   252: aconst_null
    //   253: astore #4
    //   255: goto -> 152
    //   258: astore #5
    //   260: aload_3
    //   261: astore #4
    //   263: aload #5
    //   265: astore_3
    //   266: goto -> 152
    //   269: astore #4
    //   271: goto -> 108
    // Exception table:
    //   from	to	target	type
    //   2	7	269	java/io/IOException
    //   2	7	251	finally
    //   10	30	106	java/io/IOException
    //   10	30	144	finally
    //   35	43	106	java/io/IOException
    //   35	43	144	finally
    //   43	66	106	java/io/IOException
    //   43	66	144	finally
    //   66	103	106	java/io/IOException
    //   66	103	144	finally
    //   108	125	258	finally
    //   129	133	198	java/io/IOException
    //   134	141	106	java/io/IOException
    //   134	141	144	finally
    //   157	162	223	java/io/IOException
    //   168	172	173	java/io/IOException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\f\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */