package com.datami.smi.b;

import android.content.Context;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.TimerTask;

public final class u extends TimerTask {
  private static final byte[] c = new byte[] { 
      119, -60, -41, -105, -16, -5, 3, 1, -17, 9, 
      3, -5, 7, 71, -38, -15, 5, 48, -50, -19, 
      4, -20, 1, 12, -7, -3, 9, -10, 18, -19, 
      11, -6, 1, -15, 0, -15, 12, 15, -27, 30, 
      -20, 1, 12, -43, 84, -73, -10, 83, -84, 11, 
      -4, 8, 69, -84, 5, 79, -82, 13, 4, -20, 
      1, 12, -26, 4, 35, -47, 5, 30, -19, 4, 
      -20, 1, 12, -7, -3, 9, -10, 18, -19, 11, 
      -6, 1, 78, -52, -13, -18, 8, 75, -73, -10, 
      83, -70, -3, -9, 13, 1, 67, -9, -9, 4, 
      12, 10, -26, 4, 22, -17, -7, 23, -21, -4, 
      8, -13, -1, 1, 17 };
  
  private static int d = 77;
  
  Context a;
  
  w b;
  
  public u(Context paramContext, int paramInt) {
    this.a = paramContext;
    switch (paramInt) {
      default:
        w1 = w.d;
        this.b = w1;
        return;
      case 4:
        w1 = w.a;
        this.b = w1;
        return;
      case 5:
        w1 = w.b;
        this.b = w1;
        return;
      case 6:
        break;
    } 
    w w1 = w.c;
    this.b = w1;
  }
  
  private static int a(w paramw) {
    switch (v.a[paramw.ordinal()]) {
      default:
        return 7;
      case 1:
        return 4;
      case 2:
        return 5;
      case 3:
        break;
    } 
    return 6;
  }
  
  private static w a(int paramInt) {
    switch (paramInt) {
      default:
        return w.d;
      case 4:
        return w.a;
      case 5:
        return w.b;
      case 6:
        break;
    } 
    return w.c;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i;
    int j;
    int k = paramInt3 + 3;
    paramInt3 = 113 - paramInt1;
    paramInt2 = paramInt2 * 2 + 65;
    byte[] arrayOfByte1 = c;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt1 = 0;
      i = paramInt3;
      j = paramInt3;
      paramInt3 = paramInt2;
    } else {
      j = 0;
      i = paramInt3;
      paramInt1 = paramInt2;
      paramInt3 = j;
      paramInt2 = i;
      arrayOfByte2[paramInt3] = (byte)paramInt1;
    } 
    j += -paramInt3;
    paramInt2 = i + 1;
    paramInt3 = paramInt1;
    paramInt1 = j;
    arrayOfByte2[paramInt3] = (byte)paramInt1;
  }
  
  private boolean a() {
    null = true;
    switch (v.a[this.b.ordinal()]) {
      default:
        return false;
      case 1:
        gregorianCalendar1 = new GregorianCalendar();
        gregorianCalendar1.setTimeInMillis(m.u());
        gregorianCalendar1.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
        gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
        return (gregorianCalendar1.get(6) == gregorianCalendar2.get(6)) ? false : SYNTHETIC_LOCAL_VARIABLE_1;
      case 2:
        gregorianCalendar1 = new GregorianCalendar();
        gregorianCalendar1.setTimeInMillis(m.u());
        gregorianCalendar1.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
        gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
        return (gregorianCalendar1.get(3) == gregorianCalendar2.get(3)) ? false : SYNTHETIC_LOCAL_VARIABLE_1;
      case 3:
        break;
    } 
    GregorianCalendar gregorianCalendar1 = new GregorianCalendar();
    gregorianCalendar1.setTimeInMillis(m.u());
    gregorianCalendar1.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
    GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
    gregorianCalendar2.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
    return (gregorianCalendar1.get(2) == gregorianCalendar2.get(2)) ? false : SYNTHETIC_LOCAL_VARIABLE_1;
  }
  
  private static boolean b() {
    GregorianCalendar gregorianCalendar1 = new GregorianCalendar();
    gregorianCalendar1.setTimeInMillis(m.u());
    gregorianCalendar1.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
    GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
    gregorianCalendar2.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
    return (gregorianCalendar1.get(6) != gregorianCalendar2.get(6));
  }
  
  private static boolean c() {
    GregorianCalendar gregorianCalendar1 = new GregorianCalendar();
    gregorianCalendar1.setTimeInMillis(m.u());
    gregorianCalendar1.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
    GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
    gregorianCalendar2.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
    return (gregorianCalendar1.get(3) != gregorianCalendar2.get(3));
  }
  
  private static boolean d() {
    GregorianCalendar gregorianCalendar1 = new GregorianCalendar();
    gregorianCalendar1.setTimeInMillis(m.u());
    gregorianCalendar1.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
    GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
    gregorianCalendar2.setTimeZone(TimeZone.getTimeZone(a(c[34], c[101], c[34])));
    return (gregorianCalendar1.get(2) != gregorianCalendar2.get(2));
  }
  
  public final void run() {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: iconst_4
    //   3: istore_2
    //   4: getstatic com/datami/smi/b/u.c : [B
    //   7: iconst_4
    //   8: baload
    //   9: ineg
    //   10: istore_3
    //   11: getstatic com/datami/smi/b/u.c : [B
    //   14: bipush #57
    //   16: baload
    //   17: istore #4
    //   19: iload_3
    //   20: iload #4
    //   22: iload #4
    //   24: iconst_1
    //   25: iadd
    //   26: invokestatic a : (III)Ljava/lang/String;
    //   29: pop
    //   30: bipush #51
    //   32: getstatic com/datami/smi/b/u.c : [B
    //   35: bipush #9
    //   37: baload
    //   38: bipush #33
    //   40: invokestatic a : (III)Ljava/lang/String;
    //   43: pop
    //   44: getstatic com/datami/smi/b/v.a : [I
    //   47: aload_0
    //   48: getfield b : Lcom/datami/smi/b/w;
    //   51: invokevirtual ordinal : ()I
    //   54: iaload
    //   55: tableswitch default -> 80, 1 -> 197, 2 -> 303, 3 -> 407
    //   80: iconst_0
    //   81: istore_1
    //   82: iload_1
    //   83: ifeq -> 511
    //   86: getstatic com/datami/smi/b/u.c : [B
    //   89: iconst_4
    //   90: baload
    //   91: ineg
    //   92: istore_1
    //   93: getstatic com/datami/smi/b/u.c : [B
    //   96: bipush #57
    //   98: baload
    //   99: istore_2
    //   100: iload_1
    //   101: iload_2
    //   102: iload_2
    //   103: iconst_1
    //   104: iadd
    //   105: invokestatic a : (III)Ljava/lang/String;
    //   108: pop
    //   109: getstatic com/datami/smi/b/u.c : [B
    //   112: bipush #91
    //   114: baload
    //   115: ineg
    //   116: getstatic com/datami/smi/b/u.c : [B
    //   119: bipush #20
    //   121: baload
    //   122: getstatic com/datami/smi/b/u.c : [B
    //   125: bipush #114
    //   127: baload
    //   128: invokestatic a : (III)Ljava/lang/String;
    //   131: pop
    //   132: aload_0
    //   133: getfield a : Landroid/content/Context;
    //   136: ifnull -> 196
    //   139: new android/content/Intent
    //   142: dup
    //   143: aload_0
    //   144: getfield a : Landroid/content/Context;
    //   147: ldc com/datami/smi/SmiIntentService
    //   149: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   152: astore #5
    //   154: aload #5
    //   156: getstatic com/datami/smi/b/u.d : I
    //   159: iconst_3
    //   160: iadd
    //   161: getstatic com/datami/smi/b/u.c : [B
    //   164: bipush #34
    //   166: baload
    //   167: getstatic com/datami/smi/b/u.c : [B
    //   170: bipush #51
    //   172: baload
    //   173: invokestatic a : (III)Ljava/lang/String;
    //   176: invokevirtual setAction : (Ljava/lang/String;)Landroid/content/Intent;
    //   179: pop
    //   180: getstatic com/datami/smi/b/f.e : Lcom/datami/smi/b/f;
    //   183: putstatic com/datami/smi/b/m.l : Lcom/datami/smi/b/f;
    //   186: aload_0
    //   187: getfield a : Landroid/content/Context;
    //   190: aload #5
    //   192: invokevirtual startService : (Landroid/content/Intent;)Landroid/content/ComponentName;
    //   195: pop
    //   196: return
    //   197: new java/util/GregorianCalendar
    //   200: dup
    //   201: invokespecial <init> : ()V
    //   204: astore #5
    //   206: aload #5
    //   208: invokestatic u : ()J
    //   211: invokevirtual setTimeInMillis : (J)V
    //   214: aload #5
    //   216: getstatic com/datami/smi/b/u.c : [B
    //   219: bipush #34
    //   221: baload
    //   222: getstatic com/datami/smi/b/u.c : [B
    //   225: bipush #101
    //   227: baload
    //   228: getstatic com/datami/smi/b/u.c : [B
    //   231: bipush #34
    //   233: baload
    //   234: invokestatic a : (III)Ljava/lang/String;
    //   237: invokestatic getTimeZone : (Ljava/lang/String;)Ljava/util/TimeZone;
    //   240: invokevirtual setTimeZone : (Ljava/util/TimeZone;)V
    //   243: new java/util/GregorianCalendar
    //   246: dup
    //   247: invokespecial <init> : ()V
    //   250: astore #6
    //   252: aload #6
    //   254: getstatic com/datami/smi/b/u.c : [B
    //   257: bipush #34
    //   259: baload
    //   260: getstatic com/datami/smi/b/u.c : [B
    //   263: bipush #101
    //   265: baload
    //   266: getstatic com/datami/smi/b/u.c : [B
    //   269: bipush #34
    //   271: baload
    //   272: invokestatic a : (III)Ljava/lang/String;
    //   275: invokestatic getTimeZone : (Ljava/lang/String;)Ljava/util/TimeZone;
    //   278: invokevirtual setTimeZone : (Ljava/util/TimeZone;)V
    //   281: aload #5
    //   283: bipush #6
    //   285: invokevirtual get : (I)I
    //   288: aload #6
    //   290: bipush #6
    //   292: invokevirtual get : (I)I
    //   295: if_icmpne -> 82
    //   298: iconst_0
    //   299: istore_1
    //   300: goto -> 82
    //   303: new java/util/GregorianCalendar
    //   306: dup
    //   307: invokespecial <init> : ()V
    //   310: astore #5
    //   312: aload #5
    //   314: invokestatic u : ()J
    //   317: invokevirtual setTimeInMillis : (J)V
    //   320: aload #5
    //   322: getstatic com/datami/smi/b/u.c : [B
    //   325: bipush #34
    //   327: baload
    //   328: getstatic com/datami/smi/b/u.c : [B
    //   331: bipush #101
    //   333: baload
    //   334: getstatic com/datami/smi/b/u.c : [B
    //   337: bipush #34
    //   339: baload
    //   340: invokestatic a : (III)Ljava/lang/String;
    //   343: invokestatic getTimeZone : (Ljava/lang/String;)Ljava/util/TimeZone;
    //   346: invokevirtual setTimeZone : (Ljava/util/TimeZone;)V
    //   349: new java/util/GregorianCalendar
    //   352: dup
    //   353: invokespecial <init> : ()V
    //   356: astore #6
    //   358: aload #6
    //   360: getstatic com/datami/smi/b/u.c : [B
    //   363: bipush #34
    //   365: baload
    //   366: getstatic com/datami/smi/b/u.c : [B
    //   369: bipush #101
    //   371: baload
    //   372: getstatic com/datami/smi/b/u.c : [B
    //   375: bipush #34
    //   377: baload
    //   378: invokestatic a : (III)Ljava/lang/String;
    //   381: invokestatic getTimeZone : (Ljava/lang/String;)Ljava/util/TimeZone;
    //   384: invokevirtual setTimeZone : (Ljava/util/TimeZone;)V
    //   387: aload #5
    //   389: iconst_3
    //   390: invokevirtual get : (I)I
    //   393: aload #6
    //   395: iconst_3
    //   396: invokevirtual get : (I)I
    //   399: if_icmpne -> 82
    //   402: iconst_0
    //   403: istore_1
    //   404: goto -> 82
    //   407: new java/util/GregorianCalendar
    //   410: dup
    //   411: invokespecial <init> : ()V
    //   414: astore #5
    //   416: aload #5
    //   418: invokestatic u : ()J
    //   421: invokevirtual setTimeInMillis : (J)V
    //   424: aload #5
    //   426: getstatic com/datami/smi/b/u.c : [B
    //   429: bipush #34
    //   431: baload
    //   432: getstatic com/datami/smi/b/u.c : [B
    //   435: bipush #101
    //   437: baload
    //   438: getstatic com/datami/smi/b/u.c : [B
    //   441: bipush #34
    //   443: baload
    //   444: invokestatic a : (III)Ljava/lang/String;
    //   447: invokestatic getTimeZone : (Ljava/lang/String;)Ljava/util/TimeZone;
    //   450: invokevirtual setTimeZone : (Ljava/util/TimeZone;)V
    //   453: new java/util/GregorianCalendar
    //   456: dup
    //   457: invokespecial <init> : ()V
    //   460: astore #6
    //   462: aload #6
    //   464: getstatic com/datami/smi/b/u.c : [B
    //   467: bipush #34
    //   469: baload
    //   470: getstatic com/datami/smi/b/u.c : [B
    //   473: bipush #101
    //   475: baload
    //   476: getstatic com/datami/smi/b/u.c : [B
    //   479: bipush #34
    //   481: baload
    //   482: invokestatic a : (III)Ljava/lang/String;
    //   485: invokestatic getTimeZone : (Ljava/lang/String;)Ljava/util/TimeZone;
    //   488: invokevirtual setTimeZone : (Ljava/util/TimeZone;)V
    //   491: aload #5
    //   493: iconst_2
    //   494: invokevirtual get : (I)I
    //   497: aload #6
    //   499: iconst_2
    //   500: invokevirtual get : (I)I
    //   503: if_icmpne -> 82
    //   506: iconst_0
    //   507: istore_1
    //   508: goto -> 82
    //   511: getstatic com/datami/smi/b/u.c : [B
    //   514: iconst_4
    //   515: baload
    //   516: ineg
    //   517: istore_1
    //   518: getstatic com/datami/smi/b/u.c : [B
    //   521: bipush #57
    //   523: baload
    //   524: istore_3
    //   525: iload_1
    //   526: iload_3
    //   527: iload_3
    //   528: iconst_1
    //   529: iadd
    //   530: invokestatic a : (III)Ljava/lang/String;
    //   533: pop
    //   534: getstatic com/datami/smi/b/u.d : I
    //   537: bipush #32
    //   539: ior
    //   540: getstatic com/datami/smi/b/u.c : [B
    //   543: bipush #9
    //   545: baload
    //   546: getstatic com/datami/smi/b/u.c : [B
    //   549: bipush #38
    //   551: baload
    //   552: ineg
    //   553: invokestatic a : (III)Ljava/lang/String;
    //   556: pop
    //   557: aload_0
    //   558: getfield a : Landroid/content/Context;
    //   561: astore #5
    //   563: aload_0
    //   564: getfield b : Lcom/datami/smi/b/w;
    //   567: astore #6
    //   569: iload_2
    //   570: istore_1
    //   571: getstatic com/datami/smi/b/v.a : [I
    //   574: aload #6
    //   576: invokevirtual ordinal : ()I
    //   579: iaload
    //   580: tableswitch default -> 608, 1 -> 611, 2 -> 641, 3 -> 646
    //   608: bipush #7
    //   610: istore_1
    //   611: new com/datami/smi/b/u
    //   614: dup
    //   615: aload #5
    //   617: iload_1
    //   618: invokespecial <init> : (Landroid/content/Context;I)V
    //   621: astore #5
    //   623: getstatic com/datami/smi/b/m.a : Ljava/util/concurrent/ScheduledExecutorService;
    //   626: aload #5
    //   628: ldc2_w 30
    //   631: getstatic java/util/concurrent/TimeUnit.MINUTES : Ljava/util/concurrent/TimeUnit;
    //   634: invokeinterface schedule : (Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    //   639: pop
    //   640: return
    //   641: iconst_5
    //   642: istore_1
    //   643: goto -> 611
    //   646: bipush #6
    //   648: istore_1
    //   649: goto -> 611
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\\\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */