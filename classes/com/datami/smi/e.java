package com.datami.smi;

final class e implements Runnable {
  private static final byte[] b = new byte[] { 
      34, 98, 82, -105, -50, 22, -1, -10, -3, 12, 
      -5, 2, 79, -71, 8, -12, 11, -7, 8, 2, 
      69, -25, 27, 12, -6, -7, 15, -4, 8, 72, 
      -84, 3, 15, -12, 83, -76, 9, -13, 1, 19, 
      -5, 3, -8, -8, 5, 13, 11, -25, 5, 39, 
      -49, 3, 0, 6, 3, 26, -26, 15, -17, 0, 
      20, -5 };
  
  private static int c = 136;
  
  e(int paramInt) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte b;
    int j = paramInt2 + 3;
    paramInt2 = 60 - paramInt3;
    paramInt3 = paramInt1 + 69;
    byte[] arrayOfByte1 = b;
    byte[] arrayOfByte2 = new byte[j];
    if (arrayOfByte1 == null) {
      paramInt1 = 0;
      b = paramInt2;
      i = paramInt3;
      paramInt3 = paramInt2;
    } else {
      b = 0;
      paramInt1 = paramInt3;
      paramInt3 = b;
      arrayOfByte2[paramInt3] = (byte)paramInt1;
    } 
    int i = -paramInt3 + i + 1;
    paramInt2 = b + 1;
    paramInt3 = paramInt1;
    paramInt1 = i;
    arrayOfByte2[paramInt3] = (byte)paramInt1;
  }
  
  public final void run() {
    // Byte code:
    //   0: getstatic com/datami/smi/e.b : [B
    //   3: iconst_5
    //   4: baload
    //   5: istore_1
    //   6: iload_1
    //   7: bipush #120
    //   9: iand
    //   10: istore_2
    //   11: iload_1
    //   12: iload_2
    //   13: iload_2
    //   14: iconst_2
    //   15: iadd
    //   16: invokestatic a : (III)Ljava/lang/String;
    //   19: pop
    //   20: bipush #46
    //   22: getstatic com/datami/smi/e.b : [B
    //   25: bipush #58
    //   27: baload
    //   28: ineg
    //   29: bipush #37
    //   31: invokestatic a : (III)Ljava/lang/String;
    //   34: pop
    //   35: invokestatic f : ()Landroid/content/Context;
    //   38: checkcast android/app/Activity
    //   41: astore_3
    //   42: invokestatic f : ()Landroid/content/Context;
    //   45: ifnull -> 116
    //   48: aload_3
    //   49: invokevirtual isFinishing : ()Z
    //   52: ifne -> 116
    //   55: invokestatic g : ()Landroid/app/AlertDialog;
    //   58: ifnull -> 76
    //   61: invokestatic g : ()Landroid/app/AlertDialog;
    //   64: invokevirtual isShowing : ()Z
    //   67: ifeq -> 76
    //   70: invokestatic g : ()Landroid/app/AlertDialog;
    //   73: invokevirtual dismiss : ()V
    //   76: aconst_null
    //   77: invokestatic a : (Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    //   80: pop
    //   81: invokestatic B : ()Z
    //   84: ifeq -> 100
    //   87: aload_0
    //   88: getfield a : I
    //   91: getstatic com/datami/smi/SdState.SD_AVAILABLE : Lcom/datami/smi/SdState;
    //   94: invokevirtual getStatusCode : ()I
    //   97: if_icmpeq -> 116
    //   100: getstatic com/datami/smi/c.p : Ljava/lang/String;
    //   103: invokestatic a : (Ljava/lang/String;)Landroid/app/AlertDialog;
    //   106: invokestatic a : (Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    //   109: pop
    //   110: invokestatic g : ()Landroid/app/AlertDialog;
    //   113: invokevirtual show : ()V
    //   116: invokestatic r : ()Z
    //   119: ifne -> 209
    //   122: getstatic com/datami/smi/SmiSdk.mContext : Landroid/content/Context;
    //   125: invokestatic c : (Landroid/content/Context;)V
    //   128: invokestatic j : ()I
    //   131: pop
    //   132: return
    //   133: astore_3
    //   134: getstatic com/datami/smi/e.b : [B
    //   137: bipush #26
    //   139: baload
    //   140: istore_1
    //   141: getstatic com/datami/smi/e.b : [B
    //   144: bipush #52
    //   146: baload
    //   147: istore_2
    //   148: iload_1
    //   149: iload_2
    //   150: iload_2
    //   151: invokestatic a : (III)Ljava/lang/String;
    //   154: new java/lang/StringBuilder
    //   157: dup
    //   158: invokespecial <init> : ()V
    //   161: getstatic com/datami/smi/e.b : [B
    //   164: bipush #52
    //   166: baload
    //   167: getstatic com/datami/smi/e.b : [B
    //   170: bipush #58
    //   172: baload
    //   173: ineg
    //   174: bipush #56
    //   176: invokestatic a : (III)Ljava/lang/String;
    //   179: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: aload_3
    //   183: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   186: invokevirtual toString : ()Ljava/lang/String;
    //   189: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   192: pop
    //   193: aconst_null
    //   194: invokestatic a : (Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    //   197: pop
    //   198: goto -> 81
    //   201: astore_3
    //   202: aconst_null
    //   203: invokestatic a : (Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    //   206: pop
    //   207: aload_3
    //   208: athrow
    //   209: invokestatic h : ()Z
    //   212: ifne -> 128
    //   215: invokestatic e : ()Landroid/content/Context;
    //   218: invokestatic b : (Landroid/content/Context;)V
    //   221: invokestatic i : ()Z
    //   224: pop
    //   225: goto -> 128
    // Exception table:
    //   from	to	target	type
    //   55	76	133	java/lang/Exception
    //   55	76	201	finally
    //   134	193	201	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */