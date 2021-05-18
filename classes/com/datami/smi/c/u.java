package com.datami.smi.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.datami.smi.b.k;
import com.datami.smi.g.c;
import java.util.Properties;
import org.json.JSONException;
import org.json.JSONObject;

public final class u extends Thread {
  private static final String a = "[dmi]Uram Service";
  
  private static int b;
  
  private static String g;
  
  private static final byte[] h = new byte[] { 
      60, -120, -36, 87, 13, 0, -3, 3, -19, 12, 
      -6, 20, -15, 17, 1, -14, -27, 41, -4, -1, 
      -24, 11, 11, 9, -16, -69, 53, 0, -12, -5, 
      -36, -3, -17, 12, -77, 85, -5, -12, -3, 19, 
      -15, -1, -3, 19, -19, 12, -4, -60, 70, -14, 
      -2, 18, -3, -13, -56, 62, -6, 20, -12, -5, 
      -14, 17, -3, -17, 12, -45, 53, 29, -6, -76, 
      9, 9, -4, -12, -8, 29, -17, 12, -77, 51, 
      18, 13, 4, -13, -6, 2, 15, 0, -39, 27, 
      -3, -17, 12, -77, 83, 2, -18, 0, 2, 14, 
      0, -13, 15, -9, 13, 0, -3, 3, -19, 14, 
      6, -12, -8, 12, -6, 20, -3, -17, 12, -77, 
      70, -5, 8, 3, -7, -1, -3, -17, 12, -77, 
      83, 1, -19, 19, 1, -2, -83, 79, -4, -8, 
      14, 0, -18, 6, -2, -3, -17, 12, -77, 83, 
      1, -19, 17, 2, -15, -1, 2, -11, 1, 7, 
      -3, -17, 12, -45, 50, 19, 14, -3, -1, -1, 
      5, -14, -69, 53, -3, -17, 12, -45, 50, 19, 
      12, 4, -16, 14, 1, -84, -3, -17, 12, -77, 
      69, 13, 0, -3, 3, -56, -26, 0, -12, -5, 
      -3, -17, 12, -45, 67, -2, 11, 0, -76, 70, 
      -5, 8, 3, -7, -1, -42, -26, 8, -11, 3, 
      -1, -5, 6, 13, 0, -3, 3, -19, 12, -6, 
      20, 12, -11, 1, -12, 10, -6 };
  
  private static int i = 228;
  
  private int c = -2;
  
  private int d = 0;
  
  private final Context e;
  
  private String f;
  
  static {
    b = 3;
    g = "";
  }
  
  public u(String paramString, Context paramContext) {
    this.f = new String(paramString);
    if (c.a != null)
      if (c.a.a().a()) {
        this.f = c.a.a().b();
      } else {
        o o = c.a;
        this.f = o.b(paramString);
      }  
    this.e = paramContext;
  }
  
  public static String a() {
    // Byte code:
    //   0: ldc com/datami/smi/c/u
    //   2: monitorenter
    //   3: getstatic com/datami/smi/c/u.g : Ljava/lang/String;
    //   6: astore_0
    //   7: ldc com/datami/smi/c/u
    //   9: monitorexit
    //   10: aload_0
    //   11: areturn
    //   12: astore_0
    //   13: ldc com/datami/smi/c/u
    //   15: monitorexit
    //   16: aload_0
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	12	finally
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt1 += 4;
    paramInt3 += 3;
    byte[] arrayOfByte2 = h;
    byte[] arrayOfByte1 = new byte[paramInt3];
    int j = paramInt3 - 1;
    if (arrayOfByte2 == null) {
      byte b = -1;
      paramInt2 = paramInt1;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = b;
    } else {
      paramInt3 = paramInt1;
      paramInt1 = 117 - paramInt2;
      i = -1;
      paramInt2 = paramInt3;
      int m = i + 1;
      arrayOfByte1[m] = (byte)paramInt1;
      paramInt2++;
    } 
    paramInt3 = i + paramInt3;
    int i = paramInt1;
    paramInt1 = paramInt3;
    int k = i + 1;
    arrayOfByte1[k] = (byte)paramInt1;
    paramInt2++;
  }
  
  protected static void a(String paramString) {
    // Byte code:
    //   0: ldc com/datami/smi/c/u
    //   2: monitorenter
    //   3: aload_0
    //   4: putstatic com/datami/smi/c/u.g : Ljava/lang/String;
    //   7: ldc com/datami/smi/c/u
    //   9: monitorexit
    //   10: return
    //   11: astore_0
    //   12: ldc com/datami/smi/c/u
    //   14: monitorexit
    //   15: aload_0
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	11	finally
  }
  
  private void a(JSONObject paramJSONObject) {
    try {
      if (paramJSONObject.has(a(i & 0x3D0, h[5], h[14]))) {
        g = paramJSONObject.getString(a(i & 0x3D0, h[5], h[14]));
        a(65, -h[196], h[99]);
        (new StringBuilder()).append(a(h[159], h[170], h[13])).append(g);
      } 
    } catch (Exception exception) {
      String str1 = exception.getMessage();
      Properties properties = new Properties();
      String str2 = a(134, h[122], h[82]);
    } 
    b();
  }
  
  private void b() {
    SharedPreferences sharedPreferences = k.a(this.e);
    SharedPreferences.Editor editor = sharedPreferences.edit();
    try {
      a a = new a(a(37, h[13], h[99]));
      if (g != null || !g.isEmpty())
        editor.putString(a(i & 0x3D0, h[5], h[14]), a.a(g)); 
    } catch (Exception exception) {
      a(65, -h[196], h[99]);
      exception.getMessage();
    } 
    if (sharedPreferences.contains(a(h[19], -h[24], h[110])))
      editor.remove(a(h[19], -h[24], h[110])); 
    if (sharedPreferences.contains(a(212, -h[24], h[9])))
      editor.remove(a(212, -h[24], h[9])); 
    editor.apply();
    editor.commit();
    Log.i(a(65, -h[196], h[99]), a(-h[196], h[5], h[23]));
  }
  
  private void b(String paramString) {
    SharedPreferences sharedPreferences = k.a(this.e);
    SharedPreferences.Editor editor = sharedPreferences.edit();
    int i = c.a();
    if (i != 200) {
      editor.putInt(a(h[19], -h[24], h[110]), i);
      if (-2 != this.c)
        editor.putInt(a(212, -h[24], h[9]), this.c); 
      if (paramString != null)
        editor.putString(a(99, -h[24], h[235]), paramString); 
      if (sharedPreferences.contains(a(i & 0x3D0, h[5], h[14])))
        editor.remove(a(i & 0x3D0, h[5], h[14])); 
      editor.apply();
      editor.commit();
    } 
  }
  
  private void b(JSONObject paramJSONObject) {
    String str1;
    String str2 = null;
    try {
      if (paramJSONObject.has(a(i - 2, h[51], h[14]))) {
        this.c = paramJSONObject.getInt(a(i - 2, h[51], h[14]));
        Log.i(a(65, -h[196], h[99]), a(181, h[5], h[23]) + this.c);
      } else if (200 != c.a()) {
        this.c = c.a();
      } 
      str1 = str2;
      if (paramJSONObject.has(a(99, -h[24], h[235])))
        str1 = paramJSONObject.getString(a(99, -h[24], h[235])); 
    } catch (JSONException jSONException) {
      str1 = str2;
    } 
    SharedPreferences sharedPreferences = k.a(this.e);
    SharedPreferences.Editor editor = sharedPreferences.edit();
    int i = c.a();
    if (i != 200) {
      editor.putInt(a(h[19], -h[24], h[110]), i);
      if (-2 != this.c)
        editor.putInt(a(212, -h[24], h[9]), this.c); 
      if (str1 != null)
        editor.putString(a(99, -h[24], h[235]), str1); 
      if (sharedPreferences.contains(a(i & 0x3D0, h[5], h[14])))
        editor.remove(a(i & 0x3D0, h[5], h[14])); 
      editor.apply();
      editor.commit();
    } 
  }
  
  public final void run() {
    // Byte code:
    //   0: invokestatic currentTimeMillis : ()J
    //   3: lstore #8
    //   5: lconst_0
    //   6: lstore #4
    //   8: bipush #65
    //   10: getstatic com/datami/smi/c/u.h : [B
    //   13: sipush #196
    //   16: baload
    //   17: ineg
    //   18: getstatic com/datami/smi/c/u.h : [B
    //   21: bipush #99
    //   23: baload
    //   24: invokestatic a : (III)Ljava/lang/String;
    //   27: sipush #140
    //   30: getstatic com/datami/smi/c/u.h : [B
    //   33: iconst_5
    //   34: baload
    //   35: getstatic com/datami/smi/c/u.h : [B
    //   38: bipush #23
    //   40: baload
    //   41: invokestatic a : (III)Ljava/lang/String;
    //   44: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   47: pop
    //   48: lload #4
    //   50: lstore #6
    //   52: aload_0
    //   53: getfield d : I
    //   56: getstatic com/datami/smi/c/u.b : I
    //   59: if_icmpgt -> 722
    //   62: iconst_0
    //   63: istore #10
    //   65: iconst_0
    //   66: istore_2
    //   67: getstatic com/datami/smi/c/p.a : Lcom/datami/smi/c/p;
    //   70: astore #12
    //   72: iload_2
    //   73: istore_1
    //   74: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   77: ifnull -> 153
    //   80: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   83: invokevirtual c : ()Z
    //   86: istore #11
    //   88: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   91: astore #12
    //   93: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   96: invokevirtual a : ()Lcom/datami/smi/c/q;
    //   99: invokevirtual b : ()Ljava/lang/String;
    //   102: astore #12
    //   104: iload_2
    //   105: istore_1
    //   106: iload #11
    //   108: istore #10
    //   110: getstatic com/datami/smi/c/c.a : Lcom/datami/smi/c/o;
    //   113: invokevirtual a : ()Lcom/datami/smi/c/q;
    //   116: invokevirtual a : ()Z
    //   119: ifeq -> 153
    //   122: iload_2
    //   123: istore_1
    //   124: iload #11
    //   126: istore #10
    //   128: aload #12
    //   130: ifnull -> 153
    //   133: iload_2
    //   134: istore_1
    //   135: iload #11
    //   137: istore #10
    //   139: aload #12
    //   141: invokevirtual isEmpty : ()Z
    //   144: ifne -> 153
    //   147: iconst_1
    //   148: istore_1
    //   149: iload #11
    //   151: istore #10
    //   153: new org/json/JSONObject
    //   156: dup
    //   157: invokespecial <init> : ()V
    //   160: astore #12
    //   162: aload #12
    //   164: getstatic com/datami/smi/c/u.i : I
    //   167: iconst_1
    //   168: iadd
    //   169: getstatic com/datami/smi/c/u.h : [B
    //   172: bipush #122
    //   174: baload
    //   175: getstatic com/datami/smi/c/u.h : [B
    //   178: bipush #14
    //   180: baload
    //   181: invokestatic a : (III)Ljava/lang/String;
    //   184: getstatic android/os/Build.MANUFACTURER : Ljava/lang/String;
    //   187: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   190: pop
    //   191: aload #12
    //   193: sipush #151
    //   196: getstatic com/datami/smi/c/u.h : [B
    //   199: bipush #122
    //   201: baload
    //   202: getstatic com/datami/smi/c/u.h : [B
    //   205: bipush #85
    //   207: baload
    //   208: invokestatic a : (III)Ljava/lang/String;
    //   211: getstatic android/os/Build.MODEL : Ljava/lang/String;
    //   214: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   217: pop
    //   218: getstatic com/datami/smi/c/u.h : [B
    //   221: bipush #26
    //   223: baload
    //   224: istore_2
    //   225: getstatic com/datami/smi/c/u.h : [B
    //   228: iconst_5
    //   229: baload
    //   230: istore_3
    //   231: aload #12
    //   233: iload_2
    //   234: iload_3
    //   235: iload_3
    //   236: invokestatic a : (III)Ljava/lang/String;
    //   239: getstatic com/datami/smi/c/c.e : Ljava/lang/String;
    //   242: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   245: pop
    //   246: aload #12
    //   248: bipush #81
    //   250: getstatic com/datami/smi/c/u.h : [B
    //   253: bipush #11
    //   255: baload
    //   256: getstatic com/datami/smi/c/u.h : [B
    //   259: bipush #85
    //   261: baload
    //   262: invokestatic a : (III)Ljava/lang/String;
    //   265: aload_0
    //   266: getfield e : Landroid/content/Context;
    //   269: invokevirtual getPackageName : ()Ljava/lang/String;
    //   272: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   275: pop
    //   276: bipush #65
    //   278: getstatic com/datami/smi/c/u.h : [B
    //   281: sipush #196
    //   284: baload
    //   285: ineg
    //   286: getstatic com/datami/smi/c/u.h : [B
    //   289: bipush #99
    //   291: baload
    //   292: invokestatic a : (III)Ljava/lang/String;
    //   295: pop
    //   296: new java/lang/StringBuilder
    //   299: dup
    //   300: invokespecial <init> : ()V
    //   303: astore #13
    //   305: getstatic com/datami/smi/c/u.i : I
    //   308: iconst_2
    //   309: iushr
    //   310: istore_2
    //   311: aload #13
    //   313: iload_2
    //   314: iload_2
    //   315: sipush #224
    //   318: iand
    //   319: getstatic com/datami/smi/c/u.h : [B
    //   322: bipush #110
    //   324: baload
    //   325: invokestatic a : (III)Ljava/lang/String;
    //   328: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: aload_0
    //   332: getfield f : Ljava/lang/String;
    //   335: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: sipush #168
    //   341: getstatic com/datami/smi/c/u.h : [B
    //   344: bipush #35
    //   346: baload
    //   347: getstatic com/datami/smi/c/u.h : [B
    //   350: bipush #21
    //   352: baload
    //   353: invokestatic a : (III)Ljava/lang/String;
    //   356: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   359: aload #12
    //   361: invokevirtual toString : ()Ljava/lang/String;
    //   364: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: pop
    //   368: iload_1
    //   369: ifeq -> 744
    //   372: aload_0
    //   373: getfield e : Landroid/content/Context;
    //   376: aload_0
    //   377: getfield f : Ljava/lang/String;
    //   380: iload #10
    //   382: invokestatic a : (Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    //   385: astore #12
    //   387: invokestatic currentTimeMillis : ()J
    //   390: lstore #6
    //   392: bipush #65
    //   394: getstatic com/datami/smi/c/u.h : [B
    //   397: sipush #196
    //   400: baload
    //   401: ineg
    //   402: getstatic com/datami/smi/c/u.h : [B
    //   405: bipush #99
    //   407: baload
    //   408: invokestatic a : (III)Ljava/lang/String;
    //   411: pop
    //   412: new java/lang/StringBuilder
    //   415: dup
    //   416: invokespecial <init> : ()V
    //   419: sipush #155
    //   422: getstatic com/datami/smi/c/u.i : I
    //   425: bipush #56
    //   427: iand
    //   428: getstatic com/datami/smi/c/u.h : [B
    //   431: bipush #21
    //   433: baload
    //   434: invokestatic a : (III)Ljava/lang/String;
    //   437: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   440: aload #12
    //   442: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   445: pop
    //   446: new org/json/JSONObject
    //   449: dup
    //   450: aload #12
    //   452: invokespecial <init> : (Ljava/lang/String;)V
    //   455: astore #12
    //   457: sipush #200
    //   460: invokestatic a : ()I
    //   463: if_icmpne -> 1568
    //   466: bipush #65
    //   468: getstatic com/datami/smi/c/u.h : [B
    //   471: sipush #196
    //   474: baload
    //   475: ineg
    //   476: getstatic com/datami/smi/c/u.h : [B
    //   479: bipush #99
    //   481: baload
    //   482: invokestatic a : (III)Ljava/lang/String;
    //   485: bipush #121
    //   487: getstatic com/datami/smi/c/u.h : [B
    //   490: iconst_5
    //   491: baload
    //   492: getstatic com/datami/smi/c/u.h : [B
    //   495: bipush #21
    //   497: baload
    //   498: invokestatic a : (III)Ljava/lang/String;
    //   501: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   504: pop
    //   505: iconst_1
    //   506: putstatic com/datami/smi/c/c.d : I
    //   509: aload #12
    //   511: getstatic com/datami/smi/c/u.i : I
    //   514: sipush #976
    //   517: iand
    //   518: getstatic com/datami/smi/c/u.h : [B
    //   521: iconst_5
    //   522: baload
    //   523: getstatic com/datami/smi/c/u.h : [B
    //   526: bipush #14
    //   528: baload
    //   529: invokestatic a : (III)Ljava/lang/String;
    //   532: invokevirtual has : (Ljava/lang/String;)Z
    //   535: ifeq -> 627
    //   538: aload #12
    //   540: getstatic com/datami/smi/c/u.i : I
    //   543: sipush #976
    //   546: iand
    //   547: getstatic com/datami/smi/c/u.h : [B
    //   550: iconst_5
    //   551: baload
    //   552: getstatic com/datami/smi/c/u.h : [B
    //   555: bipush #14
    //   557: baload
    //   558: invokestatic a : (III)Ljava/lang/String;
    //   561: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   564: putstatic com/datami/smi/c/u.g : Ljava/lang/String;
    //   567: bipush #65
    //   569: getstatic com/datami/smi/c/u.h : [B
    //   572: sipush #196
    //   575: baload
    //   576: ineg
    //   577: getstatic com/datami/smi/c/u.h : [B
    //   580: bipush #99
    //   582: baload
    //   583: invokestatic a : (III)Ljava/lang/String;
    //   586: pop
    //   587: new java/lang/StringBuilder
    //   590: dup
    //   591: invokespecial <init> : ()V
    //   594: getstatic com/datami/smi/c/u.h : [B
    //   597: sipush #159
    //   600: baload
    //   601: getstatic com/datami/smi/c/u.h : [B
    //   604: sipush #170
    //   607: baload
    //   608: getstatic com/datami/smi/c/u.h : [B
    //   611: bipush #13
    //   613: baload
    //   614: invokestatic a : (III)Ljava/lang/String;
    //   617: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   620: getstatic com/datami/smi/c/u.g : Ljava/lang/String;
    //   623: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   626: pop
    //   627: aload_0
    //   628: invokespecial b : ()V
    //   631: new java/util/Properties
    //   634: dup
    //   635: invokespecial <init> : ()V
    //   638: astore #13
    //   640: aload #13
    //   642: bipush #55
    //   644: getstatic com/datami/smi/c/u.h : [B
    //   647: bipush #85
    //   649: baload
    //   650: getstatic com/datami/smi/c/u.h : [B
    //   653: iconst_5
    //   654: baload
    //   655: invokestatic a : (III)Ljava/lang/String;
    //   658: getstatic com/datami/smi/d/c.a : Lcom/datami/smi/d/c;
    //   661: invokestatic a : (Lcom/datami/smi/d/c;)Ljava/lang/String;
    //   664: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   667: pop
    //   668: getstatic com/datami/smi/d/d.b : Lcom/datami/smi/d/d;
    //   671: invokestatic a : (Lcom/datami/smi/d/d;)Ljava/lang/String;
    //   674: aload #13
    //   676: invokestatic b : (Ljava/lang/String;Ljava/util/Properties;)V
    //   679: bipush #65
    //   681: getstatic com/datami/smi/c/u.h : [B
    //   684: sipush #196
    //   687: baload
    //   688: ineg
    //   689: getstatic com/datami/smi/c/u.h : [B
    //   692: bipush #99
    //   694: baload
    //   695: invokestatic a : (III)Ljava/lang/String;
    //   698: getstatic com/datami/smi/c/u.h : [B
    //   701: bipush #35
    //   703: baload
    //   704: getstatic com/datami/smi/c/u.h : [B
    //   707: iconst_5
    //   708: baload
    //   709: getstatic com/datami/smi/c/u.h : [B
    //   712: bipush #9
    //   714: baload
    //   715: invokestatic a : (III)Ljava/lang/String;
    //   718: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   721: pop
    //   722: lload #6
    //   724: lload #8
    //   726: lsub
    //   727: lconst_0
    //   728: lcmp
    //   729: ifle -> 743
    //   732: invokestatic a : ()Lcom/datami/smi/a/d;
    //   735: lload #6
    //   737: lload #8
    //   739: lsub
    //   740: invokevirtual d : (J)V
    //   743: return
    //   744: aload_0
    //   745: getfield e : Landroid/content/Context;
    //   748: aload_0
    //   749: getfield f : Ljava/lang/String;
    //   752: aload #12
    //   754: invokevirtual toString : ()Ljava/lang/String;
    //   757: iconst_0
    //   758: iload #10
    //   760: invokestatic a : (Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    //   763: astore #12
    //   765: goto -> 387
    //   768: astore #13
    //   770: aload #13
    //   772: invokevirtual getMessage : ()Ljava/lang/String;
    //   775: astore #14
    //   777: new java/util/Properties
    //   780: dup
    //   781: invokespecial <init> : ()V
    //   784: astore #15
    //   786: sipush #134
    //   789: getstatic com/datami/smi/c/u.h : [B
    //   792: bipush #122
    //   794: baload
    //   795: getstatic com/datami/smi/c/u.h : [B
    //   798: bipush #82
    //   800: baload
    //   801: invokestatic a : (III)Ljava/lang/String;
    //   804: astore #16
    //   806: aload #13
    //   808: invokevirtual getMessage : ()Ljava/lang/String;
    //   811: ifnull -> 1558
    //   814: aload #13
    //   816: invokevirtual getMessage : ()Ljava/lang/String;
    //   819: astore #13
    //   821: aload #15
    //   823: aload #16
    //   825: aload #13
    //   827: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   830: pop
    //   831: aload #15
    //   833: bipush #55
    //   835: getstatic com/datami/smi/c/u.h : [B
    //   838: bipush #85
    //   840: baload
    //   841: getstatic com/datami/smi/c/u.h : [B
    //   844: iconst_5
    //   845: baload
    //   846: invokestatic a : (III)Ljava/lang/String;
    //   849: getstatic com/datami/smi/d/c.c : Lcom/datami/smi/d/c;
    //   852: invokestatic a : (Lcom/datami/smi/d/c;)Ljava/lang/String;
    //   855: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   858: pop
    //   859: getstatic com/datami/smi/d/d.b : Lcom/datami/smi/d/d;
    //   862: invokestatic a : (Lcom/datami/smi/d/d;)Ljava/lang/String;
    //   865: aload #15
    //   867: invokestatic b : (Ljava/lang/String;Ljava/util/Properties;)V
    //   870: aload #14
    //   872: ifnull -> 627
    //   875: bipush #65
    //   877: getstatic com/datami/smi/c/u.h : [B
    //   880: sipush #196
    //   883: baload
    //   884: ineg
    //   885: getstatic com/datami/smi/c/u.h : [B
    //   888: bipush #99
    //   890: baload
    //   891: invokestatic a : (III)Ljava/lang/String;
    //   894: pop
    //   895: goto -> 627
    //   898: astore #13
    //   900: lload #6
    //   902: lstore #4
    //   904: new java/util/Properties
    //   907: dup
    //   908: invokespecial <init> : ()V
    //   911: astore #14
    //   913: sipush #134
    //   916: getstatic com/datami/smi/c/u.h : [B
    //   919: bipush #122
    //   921: baload
    //   922: getstatic com/datami/smi/c/u.h : [B
    //   925: bipush #82
    //   927: baload
    //   928: invokestatic a : (III)Ljava/lang/String;
    //   931: astore #15
    //   933: aload #13
    //   935: invokevirtual getMessage : ()Ljava/lang/String;
    //   938: ifnull -> 1618
    //   941: aload #13
    //   943: invokevirtual getMessage : ()Ljava/lang/String;
    //   946: astore #13
    //   948: aload #14
    //   950: aload #15
    //   952: aload #13
    //   954: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   957: pop
    //   958: aload #14
    //   960: bipush #55
    //   962: getstatic com/datami/smi/c/u.h : [B
    //   965: bipush #85
    //   967: baload
    //   968: getstatic com/datami/smi/c/u.h : [B
    //   971: iconst_5
    //   972: baload
    //   973: invokestatic a : (III)Ljava/lang/String;
    //   976: getstatic com/datami/smi/d/c.c : Lcom/datami/smi/d/c;
    //   979: invokestatic a : (Lcom/datami/smi/d/c;)Ljava/lang/String;
    //   982: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   985: pop
    //   986: getstatic com/datami/smi/d/d.b : Lcom/datami/smi/d/d;
    //   989: invokestatic a : (Lcom/datami/smi/d/d;)Ljava/lang/String;
    //   992: aload #14
    //   994: invokestatic b : (Ljava/lang/String;Ljava/util/Properties;)V
    //   997: bipush #65
    //   999: getstatic com/datami/smi/c/u.h : [B
    //   1002: sipush #196
    //   1005: baload
    //   1006: ineg
    //   1007: getstatic com/datami/smi/c/u.h : [B
    //   1010: bipush #99
    //   1012: baload
    //   1013: invokestatic a : (III)Ljava/lang/String;
    //   1016: pop
    //   1017: sipush #195
    //   1020: getstatic com/datami/smi/c/u.i : I
    //   1023: bipush #56
    //   1025: iand
    //   1026: getstatic com/datami/smi/c/u.h : [B
    //   1029: bipush #86
    //   1031: baload
    //   1032: invokestatic a : (III)Ljava/lang/String;
    //   1035: pop
    //   1036: aload #12
    //   1038: ifnull -> 1504
    //   1041: aconst_null
    //   1042: astore #14
    //   1044: aload #12
    //   1046: getstatic com/datami/smi/c/u.i : I
    //   1049: iconst_2
    //   1050: isub
    //   1051: getstatic com/datami/smi/c/u.h : [B
    //   1054: bipush #51
    //   1056: baload
    //   1057: getstatic com/datami/smi/c/u.h : [B
    //   1060: bipush #14
    //   1062: baload
    //   1063: invokestatic a : (III)Ljava/lang/String;
    //   1066: invokevirtual has : (Ljava/lang/String;)Z
    //   1069: ifeq -> 1628
    //   1072: aload_0
    //   1073: aload #12
    //   1075: getstatic com/datami/smi/c/u.i : I
    //   1078: iconst_2
    //   1079: isub
    //   1080: getstatic com/datami/smi/c/u.h : [B
    //   1083: bipush #51
    //   1085: baload
    //   1086: getstatic com/datami/smi/c/u.h : [B
    //   1089: bipush #14
    //   1091: baload
    //   1092: invokestatic a : (III)Ljava/lang/String;
    //   1095: invokevirtual getInt : (Ljava/lang/String;)I
    //   1098: putfield c : I
    //   1101: bipush #65
    //   1103: getstatic com/datami/smi/c/u.h : [B
    //   1106: sipush #196
    //   1109: baload
    //   1110: ineg
    //   1111: getstatic com/datami/smi/c/u.h : [B
    //   1114: bipush #99
    //   1116: baload
    //   1117: invokestatic a : (III)Ljava/lang/String;
    //   1120: new java/lang/StringBuilder
    //   1123: dup
    //   1124: invokespecial <init> : ()V
    //   1127: sipush #181
    //   1130: getstatic com/datami/smi/c/u.h : [B
    //   1133: iconst_5
    //   1134: baload
    //   1135: getstatic com/datami/smi/c/u.h : [B
    //   1138: bipush #23
    //   1140: baload
    //   1141: invokestatic a : (III)Ljava/lang/String;
    //   1144: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1147: aload_0
    //   1148: getfield c : I
    //   1151: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   1154: invokevirtual toString : ()Ljava/lang/String;
    //   1157: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   1160: pop
    //   1161: aload #14
    //   1163: astore #13
    //   1165: aload #12
    //   1167: bipush #99
    //   1169: getstatic com/datami/smi/c/u.h : [B
    //   1172: bipush #24
    //   1174: baload
    //   1175: ineg
    //   1176: getstatic com/datami/smi/c/u.h : [B
    //   1179: sipush #235
    //   1182: baload
    //   1183: invokestatic a : (III)Ljava/lang/String;
    //   1186: invokevirtual has : (Ljava/lang/String;)Z
    //   1189: ifeq -> 1218
    //   1192: aload #12
    //   1194: bipush #99
    //   1196: getstatic com/datami/smi/c/u.h : [B
    //   1199: bipush #24
    //   1201: baload
    //   1202: ineg
    //   1203: getstatic com/datami/smi/c/u.h : [B
    //   1206: sipush #235
    //   1209: baload
    //   1210: invokestatic a : (III)Ljava/lang/String;
    //   1213: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   1216: astore #13
    //   1218: aload_0
    //   1219: getfield e : Landroid/content/Context;
    //   1222: invokestatic a : (Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   1225: astore #14
    //   1227: aload #14
    //   1229: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   1234: astore #15
    //   1236: invokestatic a : ()I
    //   1239: istore_1
    //   1240: iload_1
    //   1241: sipush #200
    //   1244: if_icmpeq -> 1427
    //   1247: aload #15
    //   1249: getstatic com/datami/smi/c/u.h : [B
    //   1252: bipush #19
    //   1254: baload
    //   1255: getstatic com/datami/smi/c/u.h : [B
    //   1258: bipush #24
    //   1260: baload
    //   1261: ineg
    //   1262: getstatic com/datami/smi/c/u.h : [B
    //   1265: bipush #110
    //   1267: baload
    //   1268: invokestatic a : (III)Ljava/lang/String;
    //   1271: iload_1
    //   1272: invokeinterface putInt : (Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    //   1277: pop
    //   1278: bipush #-2
    //   1280: aload_0
    //   1281: getfield c : I
    //   1284: if_icmpeq -> 1318
    //   1287: aload #15
    //   1289: sipush #212
    //   1292: getstatic com/datami/smi/c/u.h : [B
    //   1295: bipush #24
    //   1297: baload
    //   1298: ineg
    //   1299: getstatic com/datami/smi/c/u.h : [B
    //   1302: bipush #9
    //   1304: baload
    //   1305: invokestatic a : (III)Ljava/lang/String;
    //   1308: aload_0
    //   1309: getfield c : I
    //   1312: invokeinterface putInt : (Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    //   1317: pop
    //   1318: aload #13
    //   1320: ifnull -> 1352
    //   1323: aload #15
    //   1325: bipush #99
    //   1327: getstatic com/datami/smi/c/u.h : [B
    //   1330: bipush #24
    //   1332: baload
    //   1333: ineg
    //   1334: getstatic com/datami/smi/c/u.h : [B
    //   1337: sipush #235
    //   1340: baload
    //   1341: invokestatic a : (III)Ljava/lang/String;
    //   1344: aload #13
    //   1346: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   1351: pop
    //   1352: aload #14
    //   1354: getstatic com/datami/smi/c/u.i : I
    //   1357: sipush #976
    //   1360: iand
    //   1361: getstatic com/datami/smi/c/u.h : [B
    //   1364: iconst_5
    //   1365: baload
    //   1366: getstatic com/datami/smi/c/u.h : [B
    //   1369: bipush #14
    //   1371: baload
    //   1372: invokestatic a : (III)Ljava/lang/String;
    //   1375: invokeinterface contains : (Ljava/lang/String;)Z
    //   1380: ifeq -> 1412
    //   1383: aload #15
    //   1385: getstatic com/datami/smi/c/u.i : I
    //   1388: sipush #976
    //   1391: iand
    //   1392: getstatic com/datami/smi/c/u.h : [B
    //   1395: iconst_5
    //   1396: baload
    //   1397: getstatic com/datami/smi/c/u.h : [B
    //   1400: bipush #14
    //   1402: baload
    //   1403: invokestatic a : (III)Ljava/lang/String;
    //   1406: invokeinterface remove : (Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   1411: pop
    //   1412: aload #15
    //   1414: invokeinterface apply : ()V
    //   1419: aload #15
    //   1421: invokeinterface commit : ()Z
    //   1426: pop
    //   1427: new java/util/Properties
    //   1430: dup
    //   1431: invokespecial <init> : ()V
    //   1434: astore #13
    //   1436: aload #13
    //   1438: sipush #134
    //   1441: getstatic com/datami/smi/c/u.h : [B
    //   1444: bipush #122
    //   1446: baload
    //   1447: getstatic com/datami/smi/c/u.h : [B
    //   1450: bipush #82
    //   1452: baload
    //   1453: invokestatic a : (III)Ljava/lang/String;
    //   1456: aload #12
    //   1458: invokevirtual toString : ()Ljava/lang/String;
    //   1461: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1464: pop
    //   1465: aload #13
    //   1467: bipush #55
    //   1469: getstatic com/datami/smi/c/u.h : [B
    //   1472: bipush #85
    //   1474: baload
    //   1475: getstatic com/datami/smi/c/u.h : [B
    //   1478: iconst_5
    //   1479: baload
    //   1480: invokestatic a : (III)Ljava/lang/String;
    //   1483: getstatic com/datami/smi/d/c.b : Lcom/datami/smi/d/c;
    //   1486: invokestatic a : (Lcom/datami/smi/d/c;)Ljava/lang/String;
    //   1489: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1492: pop
    //   1493: getstatic com/datami/smi/d/d.b : Lcom/datami/smi/d/d;
    //   1496: invokestatic a : (Lcom/datami/smi/d/d;)Ljava/lang/String;
    //   1499: aload #13
    //   1501: invokestatic b : (Ljava/lang/String;Ljava/util/Properties;)V
    //   1504: sipush #999
    //   1507: aload_0
    //   1508: getfield c : I
    //   1511: if_icmpeq -> 1545
    //   1514: sipush #1000
    //   1517: aload_0
    //   1518: getfield c : I
    //   1521: if_icmpeq -> 1545
    //   1524: iconst_m1
    //   1525: aload_0
    //   1526: getfield c : I
    //   1529: if_icmpeq -> 1545
    //   1532: lload #4
    //   1534: lstore #6
    //   1536: bipush #-2
    //   1538: aload_0
    //   1539: getfield c : I
    //   1542: if_icmpne -> 722
    //   1545: aload_0
    //   1546: aload_0
    //   1547: getfield d : I
    //   1550: iconst_1
    //   1551: iadd
    //   1552: putfield d : I
    //   1555: goto -> 48
    //   1558: aload #13
    //   1560: invokevirtual getClass : ()Ljava/lang/Class;
    //   1563: astore #13
    //   1565: goto -> 821
    //   1568: bipush #65
    //   1570: getstatic com/datami/smi/c/u.h : [B
    //   1573: sipush #196
    //   1576: baload
    //   1577: ineg
    //   1578: getstatic com/datami/smi/c/u.h : [B
    //   1581: bipush #99
    //   1583: baload
    //   1584: invokestatic a : (III)Ljava/lang/String;
    //   1587: bipush #111
    //   1589: getstatic com/datami/smi/c/u.h : [B
    //   1592: iconst_5
    //   1593: baload
    //   1594: getstatic com/datami/smi/c/u.h : [B
    //   1597: bipush #122
    //   1599: baload
    //   1600: invokestatic a : (III)Ljava/lang/String;
    //   1603: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   1606: pop
    //   1607: iconst_0
    //   1608: putstatic com/datami/smi/c/c.d : I
    //   1611: lload #6
    //   1613: lstore #4
    //   1615: goto -> 1036
    //   1618: aload #13
    //   1620: invokevirtual getClass : ()Ljava/lang/Class;
    //   1623: astore #13
    //   1625: goto -> 948
    //   1628: sipush #200
    //   1631: invokestatic a : ()I
    //   1634: if_icmpeq -> 1161
    //   1637: aload_0
    //   1638: invokestatic a : ()I
    //   1641: putfield c : I
    //   1644: goto -> 1161
    //   1647: astore #15
    //   1649: aload #14
    //   1651: astore #13
    //   1653: aload #15
    //   1655: invokevirtual getMessage : ()Ljava/lang/String;
    //   1658: ifnull -> 1218
    //   1661: bipush #65
    //   1663: getstatic com/datami/smi/c/u.h : [B
    //   1666: sipush #196
    //   1669: baload
    //   1670: ineg
    //   1671: getstatic com/datami/smi/c/u.h : [B
    //   1674: bipush #99
    //   1676: baload
    //   1677: invokestatic a : (III)Ljava/lang/String;
    //   1680: pop
    //   1681: aload #14
    //   1683: astore #13
    //   1685: goto -> 1218
    //   1688: astore #13
    //   1690: aconst_null
    //   1691: astore #12
    //   1693: goto -> 904
    //   1696: astore #13
    //   1698: aconst_null
    //   1699: astore #12
    //   1701: lload #6
    //   1703: lstore #4
    //   1705: goto -> 904
    // Exception table:
    //   from	to	target	type
    //   67	72	1688	java/lang/Exception
    //   74	104	1688	java/lang/Exception
    //   110	122	1688	java/lang/Exception
    //   139	147	1688	java/lang/Exception
    //   153	368	1688	java/lang/Exception
    //   372	387	1688	java/lang/Exception
    //   387	392	1688	java/lang/Exception
    //   392	457	1696	java/lang/Exception
    //   457	509	898	java/lang/Exception
    //   509	627	768	java/lang/Exception
    //   627	722	898	java/lang/Exception
    //   744	765	1688	java/lang/Exception
    //   770	821	898	java/lang/Exception
    //   821	870	898	java/lang/Exception
    //   875	895	898	java/lang/Exception
    //   1044	1161	1647	org/json/JSONException
    //   1165	1218	1647	org/json/JSONException
    //   1558	1565	898	java/lang/Exception
    //   1568	1611	898	java/lang/Exception
    //   1628	1644	1647	org/json/JSONException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\\\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */