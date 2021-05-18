package com.datami.smi;

import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.ca.android.app.CaMDOHTTPClient;
import com.datami.smi.a.a;
import com.datami.smi.a.b;
import com.datami.smi.a.i;
import com.datami.smi.b.k;
import com.datami.smi.b.l;
import com.datami.smi.b.m;
import com.datami.smi.b.u;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.TimeUnit;

public final class c {
  private static Context A;
  
  private static NotificationManager B;
  
  private static Notification.Builder C;
  
  private static SmiResult D;
  
  private static final String E = "NOTIFICATION_REMOVED";
  
  private static SharedPreferences F;
  
  private static int G = 0;
  
  private static boolean H = false;
  
  private static Context I;
  
  private static boolean J = false;
  
  private static final byte[] K = new byte[] { 
      69, 33, 89, 62, -11, -15, 1, -7, -13, -4, 
      -8, -29, 1, -16, -9, -27, 3, 3, -18, -12, 
      -17, 7, -9, -26, -15, -7, -9, -27, -1, -7, 
      -15, -3, 61, -48, -25, -5, 38, -60, -29, -6, 
      -30, -9, 2, -17, -13, -1, -20, 8, -29, 1, 
      -16, -9, 68, -80, -19, -13, 72, -86, -7, -14, 
      -6, -21, 74, -2, -8, -17, -10, -3, -15, -3, 
      61, -95, -8, 4, -23, 72, -87, -2, -24, -10, 
      8, -16, -8, -23, -24, -11, -15, 1, -7, -13, 
      -4, -8, -29, 1, -16, -9, -22, -9, -10, -1, 
      -8, -27, 1, -16, -9, 68, -77, -25, 3, -6, 
      -29, 5, -9, -19, -19, -6, 2, 0, -36, -6, 
      12, -27, -17, 13, -31, -14, -2, -23, -11, -20, 
      21, -37, 4, -28, -11, 29, -34, -24, -10, 8, 
      -16, -8, 11, -31, -19, 0, -15, -15, -3, 53, 
      -11, -1, -36, 16, -22, -10, -6, -13, 47, 1, 
      -10, -78, 54, -5, -61, -22, 2, -35, 1, -9, 
      3, -32, -6, 59, -63, -22, -8, 52, -78, 5, 
      -19, -16, 2, 46, -82, -3, -13, 58, -78, -7, 
      -9, -9, -15, -6, -13, 3, -9, 43, -68, -15, 
      0, -15, -4, -8, -29, -5, -13, 58, -76, -8, 
      -3, -57, 3, -6, -29, 1, -15, -3, 61, -77, 
      -22, -9, -10, -1, -8, -27, 1, -16, -9, -6, 
      -73, -15, 0, -15, -4, -8, -29, -5, -13, 58, 
      -76, -8, -3, -30, -7, 59, -86, -13, -2, -18, 
      33, -56, 7, -32, 12, -11, -20, -3, 59, -83, 
      -20, 73, -88, -11, -15, 74, -88, -17, -1, -10, 
      1, -17, -18, 25, -37, 4, -28, -11, 74, -79, 
      -19, -16, 5, -23, 72, -93, -11, 9, -29, 5, 
      59, -43, -9, 68, -61, -39, -9, -9, -15, -6, 
      -13, 3, -9, 58, -46, -39, -29, 9, 55, -43, 
      -44, -10, -12, -24, -10, -11, -15, 1, -7, -13, 
      -4, -8, -29, 1, -16, -9, 5, -29, 3, -18, 
      -12, -17, 7, -9, -54, -9, -10, -1, -8, -27, 
      1, -16, -9, 68, -77, -25, 3, -6, -29, 5, 
      -9, 58, -77, -22, -9, -10, -1, -8, -27, -19, 
      -19, -6, 2, 0, -36, -6, 28, -60, -8, -11, 
      -5, -8, 15, -37, 4, -28, -11, -61, 11, -12, 
      -21, -14, 1, -16, -9, 68, -83, -15, 68, -95, 
      -3, -14, 3, -12, -12, -20, -11, 5, -23, -1, 
      -15, -3, 61, -60, -29, -8, -12, -14, -23, 7, 
      -23, -14, 2, -16, -8, 23, -47, -19, -88, 95, 
      -37, -88, -57, -10, 70, -87, -12, 3, -17, -13, 
      -3, 59, -78, -7, -29, 9, 55, -83, -20, 73, 
      -93, -7, -9, -9, -15, -6, -13, 3, -9, -8, 
      -25, 26, -31, -19, 0, -15, -15, -3, 10, -43, 
      9, -29, 5, 21, -51, -13, 20, -37, 4, -28, 
      -11, 66, -11, -1, -36, 16, -57, 3, -6, -29, 
      1, -15, -3, 61, -77, -22, -9, -10, -1, -8, 
      -27, 1, -16, -9, 68, -77, -22, -9, -10, -1, 
      -8, -27, -57, -10, 70, -63, -40, 8, -16, -8 };
  
  private static int L = 233;
  
  public static final String a = "[dmi]SmiCustomToast";
  
  static TextView c;
  
  static String g = a(-K[53], -K[40], 50);
  
  static String h = a(211, K[1], -K[131]);
  
  static String i = a(211, K[1], -K[131]);
  
  static String j = a(211, K[1], -K[131]);
  
  static String k = a(211, K[1], -K[131]);
  
  static String l = a(211, K[1], -K[131]);
  
  static String m = a(211, K[1], -K[131]);
  
  static String n = a(211, K[1], -K[131]);
  
  static String o;
  
  static String p = "";
  
  static String q = "";
  
  static int r = -1;
  
  static int s;
  
  static Toast t;
  
  public static boolean u;
  
  static SharedPreferences.Editor v;
  
  static g w;
  
  private static AlertDialog x;
  
  private static boolean y = false;
  
  private static String z;
  
  LayoutInflater b;
  
  ImageView d;
  
  Bitmap e;
  
  View f;
  
  static {
    u = false;
    G = -1;
    H = false;
    J = false;
  }
  
  public c(Context paramContext) {
    A = paramContext;
    SharedPreferences sharedPreferences = k.a(paramContext);
    F = sharedPreferences;
    v = sharedPreferences.edit();
    s = 10000;
  }
  
  private static int a(float paramFloat, Context paramContext) {
    return Math.round((paramContext.getResources().getDisplayMetrics()).density * paramFloat);
  }
  
  public static AlertDialog a(String paramString) {
    AlertDialog.Builder builder = new AlertDialog.Builder(I);
    y = true;
    builder.setMessage(paramString);
    builder.setPositiveButton(a(273, -K[251], -K[118]), new f());
    builder.setCancelable(false);
    return builder.create();
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte[] arrayOfByte2 = K;
    paramInt1 = 501 - paramInt1;
    paramInt3 = 115 - paramInt3;
    paramInt2 = 58 - paramInt2;
    byte[] arrayOfByte1 = new byte[paramInt2];
    int j = paramInt2 - 1;
    if (arrayOfByte2 == null) {
      boolean bool = false;
      i = j;
      paramInt2 = paramInt1;
      paramInt1 = bool;
    } else {
      paramInt2 = 0;
      i = paramInt1;
      paramInt1 = paramInt3;
      int m = i + 1;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
    } 
    paramInt3 = -paramInt3 + i - 10;
    int i = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt3;
    int k = i + 1;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
  }
  
  public static void a(int paramInt) {
    (new Thread(new d(paramInt))).start();
  }
  
  protected static void a(Context paramContext) {
    I = paramContext;
  }
  
  private void a(Bitmap paramBitmap) {
    if (paramBitmap != null) {
      this.e = paramBitmap;
      this.d.setImageBitmap(this.e);
    } 
  }
  
  public static void a(SmiResult paramSmiResult) {
    D = paramSmiResult;
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9) {
    g = paramString1;
    h = paramString2;
    i = paramString3;
    j = paramString4;
    k = paramString5;
    l = paramString6;
    n = paramString8;
    m = paramString7;
    o = paramString9;
  }
  
  public static void a(boolean paramBoolean) {
    if (F != null && v != null) {
      v.putBoolean(a(187, K[36], K[111]), paramBoolean);
      v.apply();
      v.commit();
    } 
  }
  
  public static boolean a() {
    if (H && G != SdState.SD_AVAILABLE.getStatusCode() && G != -1) {
      boolean bool1 = true;
      a(143, -K[295], -K[78]);
      (new StringBuilder()).append(a(373, -K[171], K[458])).append(bool1);
      return bool1;
    } 
    boolean bool = false;
    a(143, -K[295], -K[78]);
    (new StringBuilder()).append(a(373, -K[171], K[458])).append(bool);
    return bool;
  }
  
  public static int b() {
    H = false;
    a(143, -K[295], -K[78]);
    (new StringBuilder()).append(a(K[149], -K[40], K[120])).append(G);
    return G;
  }
  
  private static String b(String paramString) {
    a.a();
    long l1 = i.e();
    a.a();
    long l2 = b.a();
    String str = paramString;
    if (o != null) {
      str = paramString;
      if (!o.isEmpty()) {
        str = paramString;
        if (l1 > 0L) {
          str = paramString;
          if (l2 > 0L) {
            str = paramString;
            if (o.contains(a(419, -K[251], -K[279]))) {
              str = paramString;
              if (o.contains(a(418, -K[251], -K[279]))) {
                str = String.format(o.replace(a(419, -K[251], -K[279]), a(272, -K[251], -K[161])).replace(a(418, -K[251], -K[279]), a(272, -K[251], -K[161])), new Object[] { Long.valueOf(l1), Long.valueOf(l2) });
                str = String.format(a(84, K[149], -K[161]), new Object[] { paramString, str });
              } 
            } 
          } 
        } 
      } 
    } 
    return str;
  }
  
  public static void b(int paramInt) {
    // Byte code:
    //   0: sipush #143
    //   3: getstatic com/datami/smi/c.K : [B
    //   6: sipush #295
    //   9: baload
    //   10: ineg
    //   11: getstatic com/datami/smi/c.K : [B
    //   14: bipush #78
    //   16: baload
    //   17: ineg
    //   18: invokestatic a : (III)Ljava/lang/String;
    //   21: pop
    //   22: new java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial <init> : ()V
    //   29: getstatic com/datami/smi/c.L : I
    //   32: iconst_1
    //   33: isub
    //   34: getstatic com/datami/smi/c.K : [B
    //   37: bipush #118
    //   39: baload
    //   40: ineg
    //   41: getstatic com/datami/smi/c.K : [B
    //   44: bipush #117
    //   46: baload
    //   47: invokestatic a : (III)Ljava/lang/String;
    //   50: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: iload_0
    //   54: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   57: pop
    //   58: iload_0
    //   59: putstatic com/datami/smi/c.r : I
    //   62: iload_0
    //   63: putstatic com/datami/smi/c.G : I
    //   66: iload_0
    //   67: getstatic com/datami/smi/SdState.SD_AVAILABLE : Lcom/datami/smi/SdState;
    //   70: invokevirtual getStatusCode : ()I
    //   73: if_icmpne -> 249
    //   76: getstatic com/datami/smi/c.g : Ljava/lang/String;
    //   79: astore_2
    //   80: getstatic com/datami/smi/b/m.g : Lcom/datami/smi/b/l;
    //   83: getstatic com/datami/smi/b/l.b : Lcom/datami/smi/b/l;
    //   86: if_acmpeq -> 100
    //   89: aload_2
    //   90: astore_1
    //   91: getstatic com/datami/smi/b/m.g : Lcom/datami/smi/b/l;
    //   94: getstatic com/datami/smi/b/l.d : Lcom/datami/smi/b/l;
    //   97: if_acmpne -> 105
    //   100: aload_2
    //   101: invokestatic b : (Ljava/lang/String;)Ljava/lang/String;
    //   104: astore_1
    //   105: aload_1
    //   106: putstatic com/datami/smi/c.p : Ljava/lang/String;
    //   109: getstatic com/datami/smi/c.g : Ljava/lang/String;
    //   112: astore_2
    //   113: getstatic com/datami/smi/b/m.g : Lcom/datami/smi/b/l;
    //   116: getstatic com/datami/smi/b/l.c : Lcom/datami/smi/b/l;
    //   119: if_acmpeq -> 133
    //   122: aload_2
    //   123: astore_1
    //   124: getstatic com/datami/smi/b/m.g : Lcom/datami/smi/b/l;
    //   127: getstatic com/datami/smi/b/l.d : Lcom/datami/smi/b/l;
    //   130: if_acmpne -> 138
    //   133: aload_2
    //   134: invokestatic b : (Ljava/lang/String;)Ljava/lang/String;
    //   137: astore_1
    //   138: aload_1
    //   139: putstatic com/datami/smi/c.q : Ljava/lang/String;
    //   142: iconst_1
    //   143: putstatic com/datami/smi/c.H : Z
    //   146: iload_0
    //   147: getstatic com/datami/smi/SdState.SD_AVAILABLE : Lcom/datami/smi/SdState;
    //   150: invokevirtual getStatusCode : ()I
    //   153: if_icmpeq -> 162
    //   156: getstatic com/datami/smi/c.p : Ljava/lang/String;
    //   159: putstatic com/datami/smi/c.q : Ljava/lang/String;
    //   162: iconst_0
    //   163: putstatic com/datami/smi/c.J : Z
    //   166: invokestatic allowUserMessaging : ()Z
    //   169: ifeq -> 205
    //   172: invokestatic isForeground : ()Z
    //   175: ifeq -> 205
    //   178: invokestatic w : ()Z
    //   181: ifne -> 205
    //   184: invokestatic G : ()Z
    //   187: ifne -> 205
    //   190: getstatic com/datami/smi/c.p : Ljava/lang/String;
    //   193: ifnull -> 205
    //   196: getstatic com/datami/smi/c.p : Ljava/lang/String;
    //   199: invokevirtual isEmpty : ()Z
    //   202: ifeq -> 346
    //   205: sipush #143
    //   208: getstatic com/datami/smi/c.K : [B
    //   211: sipush #295
    //   214: baload
    //   215: ineg
    //   216: getstatic com/datami/smi/c.K : [B
    //   219: bipush #78
    //   221: baload
    //   222: ineg
    //   223: invokestatic a : (III)Ljava/lang/String;
    //   226: pop
    //   227: sipush #439
    //   230: getstatic com/datami/smi/c.K : [B
    //   233: sipush #131
    //   236: baload
    //   237: ineg
    //   238: getstatic com/datami/smi/c.K : [B
    //   241: bipush #117
    //   243: baload
    //   244: invokestatic a : (III)Ljava/lang/String;
    //   247: pop
    //   248: return
    //   249: iload_0
    //   250: iconst_4
    //   251: if_icmpne -> 263
    //   254: getstatic com/datami/smi/c.i : Ljava/lang/String;
    //   257: putstatic com/datami/smi/c.p : Ljava/lang/String;
    //   260: goto -> 146
    //   263: iload_0
    //   264: iconst_5
    //   265: if_icmpne -> 277
    //   268: getstatic com/datami/smi/c.j : Ljava/lang/String;
    //   271: putstatic com/datami/smi/c.p : Ljava/lang/String;
    //   274: goto -> 146
    //   277: iload_0
    //   278: bipush #6
    //   280: if_icmpne -> 292
    //   283: getstatic com/datami/smi/c.k : Ljava/lang/String;
    //   286: putstatic com/datami/smi/c.p : Ljava/lang/String;
    //   289: goto -> 146
    //   292: iload_0
    //   293: bipush #7
    //   295: if_icmpne -> 307
    //   298: getstatic com/datami/smi/c.l : Ljava/lang/String;
    //   301: putstatic com/datami/smi/c.p : Ljava/lang/String;
    //   304: goto -> 146
    //   307: iload_0
    //   308: bipush #8
    //   310: if_icmpne -> 322
    //   313: getstatic com/datami/smi/c.m : Ljava/lang/String;
    //   316: putstatic com/datami/smi/c.p : Ljava/lang/String;
    //   319: goto -> 146
    //   322: iload_0
    //   323: bipush #9
    //   325: if_icmpne -> 337
    //   328: getstatic com/datami/smi/c.n : Ljava/lang/String;
    //   331: putstatic com/datami/smi/c.p : Ljava/lang/String;
    //   334: goto -> 146
    //   337: getstatic com/datami/smi/c.h : Ljava/lang/String;
    //   340: putstatic com/datami/smi/c.p : Ljava/lang/String;
    //   343: goto -> 146
    //   346: new android/os/Handler
    //   349: dup
    //   350: getstatic com/datami/smi/c.A : Landroid/content/Context;
    //   353: invokevirtual getMainLooper : ()Landroid/os/Looper;
    //   356: invokespecial <init> : (Landroid/os/Looper;)V
    //   359: new com/datami/smi/e
    //   362: dup
    //   363: iload_0
    //   364: invokespecial <init> : (I)V
    //   367: invokevirtual post : (Ljava/lang/Runnable;)Z
    //   370: pop
    //   371: return
  }
  
  public static void b(Context paramContext) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   4: astore_2
    //   5: getstatic com/datami/smi/SmiSdk.mIconId : I
    //   8: ifle -> 44
    //   11: invokestatic w : ()Z
    //   14: ifne -> 44
    //   17: getstatic com/datami/smi/c.q : Ljava/lang/String;
    //   20: ifnull -> 44
    //   23: getstatic com/datami/smi/c.q : Ljava/lang/String;
    //   26: invokevirtual isEmpty : ()Z
    //   29: ifne -> 44
    //   32: invokestatic G : ()Z
    //   35: ifne -> 44
    //   38: invokestatic r : ()Z
    //   41: ifne -> 45
    //   44: return
    //   45: getstatic com/datami/smi/c.D : Lcom/datami/smi/SmiResult;
    //   48: ifnull -> 44
    //   51: getstatic com/datami/smi/c.D : Lcom/datami/smi/SmiResult;
    //   54: invokevirtual getSdState : ()Lcom/datami/smi/SdState;
    //   57: getstatic com/datami/smi/SdState.WIFI : Lcom/datami/smi/SdState;
    //   60: if_acmpeq -> 44
    //   63: invokestatic isForeground : ()Z
    //   66: ifeq -> 44
    //   69: getstatic com/datami/smi/c.D : Lcom/datami/smi/SmiResult;
    //   72: invokevirtual getSdState : ()Lcom/datami/smi/SdState;
    //   75: getstatic com/datami/smi/SdState.SD_NOT_AVAILABLE : Lcom/datami/smi/SdState;
    //   78: if_acmpne -> 87
    //   81: getstatic com/datami/smi/c.h : Ljava/lang/String;
    //   84: putstatic com/datami/smi/c.q : Ljava/lang/String;
    //   87: getstatic com/datami/smi/c.B : Landroid/app/NotificationManager;
    //   90: ifnonnull -> 122
    //   93: aload_2
    //   94: sipush #417
    //   97: getstatic com/datami/smi/c.K : [B
    //   100: sipush #183
    //   103: baload
    //   104: getstatic com/datami/smi/c.K : [B
    //   107: bipush #111
    //   109: baload
    //   110: invokestatic a : (III)Ljava/lang/String;
    //   113: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   116: checkcast android/app/NotificationManager
    //   119: putstatic com/datami/smi/c.B : Landroid/app/NotificationManager;
    //   122: getstatic com/datami/smi/c.C : Landroid/app/Notification$Builder;
    //   125: ifnonnull -> 139
    //   128: new android/app/Notification$Builder
    //   131: dup
    //   132: aload_2
    //   133: invokespecial <init> : (Landroid/content/Context;)V
    //   136: putstatic com/datami/smi/c.C : Landroid/app/Notification$Builder;
    //   139: getstatic com/datami/smi/c.A : Landroid/content/Context;
    //   142: invokevirtual getApplicationInfo : ()Landroid/content/pm/ApplicationInfo;
    //   145: getstatic com/datami/smi/c.A : Landroid/content/Context;
    //   148: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   151: invokevirtual loadLabel : (Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    //   154: invokeinterface toString : ()Ljava/lang/String;
    //   159: astore_1
    //   160: aload_1
    //   161: astore_0
    //   162: getstatic com/datami/smi/c.C : Landroid/app/Notification$Builder;
    //   165: aload_0
    //   166: invokevirtual setContentTitle : (Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    //   169: getstatic com/datami/smi/SmiSdk.mIconId : I
    //   172: invokevirtual setSmallIcon : (I)Landroid/app/Notification$Builder;
    //   175: pop
    //   176: getstatic com/datami/smi/c.D : Lcom/datami/smi/SmiResult;
    //   179: invokevirtual getSdState : ()Lcom/datami/smi/SdState;
    //   182: getstatic com/datami/smi/SdState.SD_AVAILABLE : Lcom/datami/smi/SdState;
    //   185: if_acmpne -> 418
    //   188: getstatic com/datami/smi/c.C : Landroid/app/Notification$Builder;
    //   191: iconst_1
    //   192: invokevirtual setOngoing : (Z)Landroid/app/Notification$Builder;
    //   195: pop
    //   196: getstatic com/datami/smi/c.C : Landroid/app/Notification$Builder;
    //   199: new android/app/Notification$BigTextStyle
    //   202: dup
    //   203: getstatic com/datami/smi/c.C : Landroid/app/Notification$Builder;
    //   206: invokespecial <init> : (Landroid/app/Notification$Builder;)V
    //   209: getstatic com/datami/smi/c.q : Ljava/lang/String;
    //   212: invokevirtual bigText : (Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    //   215: invokevirtual setStyle : (Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    //   218: pop
    //   219: getstatic com/datami/smi/c.C : Landroid/app/Notification$Builder;
    //   222: getstatic com/datami/smi/c.q : Ljava/lang/String;
    //   225: invokevirtual setContentText : (Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    //   228: pop
    //   229: new android/content/Intent
    //   232: dup
    //   233: sipush #498
    //   236: getstatic com/datami/smi/c.K : [B
    //   239: bipush #36
    //   241: baload
    //   242: getstatic com/datami/smi/c.K : [B
    //   245: sipush #131
    //   248: baload
    //   249: ineg
    //   250: invokestatic a : (III)Ljava/lang/String;
    //   253: invokespecial <init> : (Ljava/lang/String;)V
    //   256: astore_0
    //   257: new com/datami/smi/g
    //   260: dup
    //   261: aconst_null
    //   262: invokespecial <init> : (Lcom/datami/smi/d;)V
    //   265: putstatic com/datami/smi/c.w : Lcom/datami/smi/g;
    //   268: new android/content/IntentFilter
    //   271: dup
    //   272: sipush #498
    //   275: getstatic com/datami/smi/c.K : [B
    //   278: bipush #36
    //   280: baload
    //   281: getstatic com/datami/smi/c.K : [B
    //   284: sipush #131
    //   287: baload
    //   288: ineg
    //   289: invokestatic a : (III)Ljava/lang/String;
    //   292: invokespecial <init> : (Ljava/lang/String;)V
    //   295: astore_1
    //   296: aload_2
    //   297: getstatic com/datami/smi/c.w : Lcom/datami/smi/g;
    //   300: aload_1
    //   301: invokevirtual registerReceiver : (Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   304: pop
    //   305: aload_2
    //   306: iconst_0
    //   307: aload_0
    //   308: ldc_w 268435456
    //   311: invokestatic getBroadcast : (Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   314: astore_0
    //   315: getstatic com/datami/smi/c.C : Landroid/app/Notification$Builder;
    //   318: aload_0
    //   319: invokevirtual setDeleteIntent : (Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    //   322: pop
    //   323: getstatic android/os/Build$VERSION.SDK_INT : I
    //   326: bipush #16
    //   328: if_icmpge -> 429
    //   331: getstatic com/datami/smi/c.B : Landroid/app/NotificationManager;
    //   334: bipush #21
    //   336: getstatic com/datami/smi/c.C : Landroid/app/Notification$Builder;
    //   339: invokevirtual getNotification : ()Landroid/app/Notification;
    //   342: invokevirtual notify : (ILandroid/app/Notification;)V
    //   345: return
    //   346: astore_1
    //   347: aload_0
    //   348: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   351: invokevirtual getPackageName : ()Ljava/lang/String;
    //   354: astore_0
    //   355: aload_0
    //   356: aload_0
    //   357: bipush #91
    //   359: getstatic com/datami/smi/c.K : [B
    //   362: sipush #211
    //   365: baload
    //   366: ineg
    //   367: getstatic com/datami/smi/c.K : [B
    //   370: iconst_0
    //   371: baload
    //   372: invokestatic a : (III)Ljava/lang/String;
    //   375: invokevirtual lastIndexOf : (Ljava/lang/String;)I
    //   378: iconst_1
    //   379: iadd
    //   380: invokevirtual substring : (I)Ljava/lang/String;
    //   383: astore_0
    //   384: new java/lang/StringBuilder
    //   387: dup
    //   388: invokespecial <init> : ()V
    //   391: aload_0
    //   392: iconst_0
    //   393: iconst_1
    //   394: invokevirtual substring : (II)Ljava/lang/String;
    //   397: invokevirtual toUpperCase : ()Ljava/lang/String;
    //   400: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   403: aload_0
    //   404: iconst_1
    //   405: invokevirtual substring : (I)Ljava/lang/String;
    //   408: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   411: invokevirtual toString : ()Ljava/lang/String;
    //   414: astore_0
    //   415: goto -> 162
    //   418: getstatic com/datami/smi/c.C : Landroid/app/Notification$Builder;
    //   421: iconst_0
    //   422: invokevirtual setOngoing : (Z)Landroid/app/Notification$Builder;
    //   425: pop
    //   426: goto -> 196
    //   429: getstatic com/datami/smi/c.B : Landroid/app/NotificationManager;
    //   432: bipush #21
    //   434: getstatic com/datami/smi/c.C : Landroid/app/Notification$Builder;
    //   437: invokevirtual build : ()Landroid/app/Notification;
    //   440: invokevirtual notify : (ILandroid/app/Notification;)V
    //   443: return
    // Exception table:
    //   from	to	target	type
    //   139	160	346	java/lang/Exception
  }
  
  private static void b(Context paramContext, int paramInt) {
    a(389, L & 0x3F, -K[78]);
    (new StringBuilder()).append(a(479, -K[20], -K[171])).append(paramInt);
    u u = new u(paramContext, paramInt);
    m.a.schedule((Runnable)u, 30L, TimeUnit.MINUTES);
  }
  
  private static void b(Bitmap paramBitmap) {
    File file1 = (new ContextWrapper(A)).getDir(a(91, 50, K[458]), 0);
    File file2 = new File(file1, a(271, K[183] - 1, K[458]));
    try {
      FileOutputStream fileOutputStream = new FileOutputStream(file2);
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
      fileOutputStream.close();
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    z = file1.getAbsolutePath();
  }
  
  public static void c() {
    s = 15000;
  }
  
  private static void c(int paramInt) {
    J = false;
    if (!SmiSdk.allowUserMessaging() || !SmiSdk.isForeground() || m.w() || m.G() || p == null || p.isEmpty()) {
      a(143, -K[295], -K[78]);
      a(439, -K[131], K[117]);
      return;
    } 
    (new Handler(A.getMainLooper())).post(new e(paramInt));
  }
  
  public static void c(Context paramContext) {
    paramContext = paramContext.getApplicationContext();
    if (SmiSdk.mIconId <= 0 || m.w())
      return; 
    try {
      paramContext.unregisterReceiver(w);
    } catch (Exception exception) {
      a(143, -K[295], -K[78]);
      (new StringBuilder()).append(a(125, K[415], K[183])).append(exception);
    } 
    if (B == null)
      B = (NotificationManager)paramContext.getSystemService(a(417, K[183], K[111])); 
    B.cancel(21);
  }
  
  private static void d(Context paramContext) {
    A = paramContext;
    SharedPreferences sharedPreferences = k.a(paramContext);
    F = sharedPreferences;
    v = sharedPreferences.edit();
    s = 10000;
  }
  
  private static String k() {
    String str = g;
    if (m.g != l.b) {
      String str1 = str;
      return (m.g == l.d) ? b(str) : str1;
    } 
    return b(str);
  }
  
  private static String l() {
    String str = g;
    if (m.g != l.c) {
      String str1 = str;
      return (m.g == l.d) ? b(str) : str1;
    } 
    return b(str);
  }
  
  private static Bitmap m() {
    File file = new File(z, a(271, K[183] - 1, K[458]));
    try {
      return BitmapFactory.decodeStream(new FileInputStream(file));
    } catch (FileNotFoundException fileNotFoundException) {
      fileNotFoundException.printStackTrace();
      return null;
    } 
  }
  
  private static Bitmap n() {
    try {
      URL uRL = new URL(a(348, K[117], K[142]));
      a(143, -K[295], -K[78]);
      a(291, -K[295], -K[33]);
      HttpURLConnection httpURLConnection = (HttpURLConnection)CaMDOHTTPClient.openConnection(uRL);
      a(143, -K[295], -K[78]);
      a(406, -K[506], K[153]);
      httpURLConnection.setDoInput(true);
      a(143, -K[295], -K[78]);
      a(K[451], -K[124], -K[33]);
      CaMDOHTTPClient.connect(httpURLConnection);
      a(143, -K[295], -K[78]);
      a(L & 0x3BE, -K[171], -K[33]);
      Bitmap bitmap = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
      if (bitmap != null) {
        a(143, -K[295], -K[78]);
        a(259, -K[40], -K[124]);
        File file1 = (new ContextWrapper(A)).getDir(a(91, 50, K[458]), 0);
        File file2 = new File(file1, a(271, K[183] - 1, K[458]));
        try {
          FileOutputStream fileOutputStream = new FileOutputStream(file2);
          bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
          fileOutputStream.close();
        } catch (Exception exception) {
          exception.printStackTrace();
        } 
        z = file1.getAbsolutePath();
      } 
      return bitmap;
    } catch (IOException iOException) {
      return null;
    } 
  }
  
  private static Bitmap o() {
    Bitmap bitmap2 = m();
    Bitmap bitmap1 = bitmap2;
    if (bitmap2 == null)
      bitmap1 = n(); 
    return bitmap1;
  }
  
  private static boolean p() {
    boolean bool = false;
    if (F != null)
      bool = F.getBoolean(a(187, K[36], K[111]), false); 
    return bool;
  }
  
  static {
    byte b = K[117];
    int i = b | 0x31;
    o = a(b, i, i + 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */