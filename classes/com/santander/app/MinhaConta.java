package com.santander.app;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.support.multidex.MultiDex;
import android.util.Log;
import com.adjust.sdk.Adjust;
import com.adjust.sdk.AdjustConfig;
import com.datami.smi.SdState;
import com.datami.smi.SdStateChangeListener;
import com.datami.smi.SmiResult;
import com.santander.app.phishingsms.service.PhishingSMSService;
import fit;
import frq;
import miq;
import myn;

public class MinhaConta extends Application implements SdStateChangeListener {
  public static final int A = 0;
  
  public static final int B = 1;
  
  public static final int C = 2;
  
  public static final int D = 0;
  
  public static final int E = 1;
  
  public static final int F = 2;
  
  public static final int G = 3;
  
  public static final int H = 4;
  
  public static final int I = 0;
  
  public static final int J = 1;
  
  public static final int K = 2;
  
  public static final int L = 3;
  
  public static final int M = 4;
  
  public static final int N = 3;
  
  public static final int O = 4;
  
  public static final int P = 5;
  
  public static final int Q = 0;
  
  public static final int R = 1;
  
  public static final int S = 2;
  
  public static final int T = 3;
  
  public static final int U = 4;
  
  public static final int V = 5;
  
  public static final int W = 6;
  
  public static final int X = 7;
  
  public static final int Y = 0;
  
  public static final int Z = 1;
  
  public static final int a = 1;
  
  public static final int aa = 0;
  
  public static final int ab = 1;
  
  public static final int ac = 2;
  
  public static final int ad = 0;
  
  public static final int ae = 1;
  
  public static final int af = 0;
  
  public static final int ag = 1;
  
  public static final int ah = 0;
  
  public static final int ai = 1;
  
  public static int aj = 0;
  
  public static int ak = 0;
  
  public static int al = 0;
  
  public static final int am = 300000;
  
  public static final boolean an = true;
  
  private static Context ao;
  
  private static boolean ap = false;
  
  private static boolean aq = false;
  
  private static String ar = "";
  
  private static boolean as = false;
  
  private static boolean au = false;
  
  private static final String av = MinhaConta.class.getSimpleName();
  
  public static final int b = 2;
  
  public static final int c = 3;
  
  public static final int d = 4;
  
  public static final int e = 5;
  
  public static final int f = 6;
  
  public static final int g = 7;
  
  public static final int h = 8;
  
  public static final int i = 0;
  
  public static final int j = 1;
  
  public static final int k = 2;
  
  public static final int l = 3;
  
  public static final int m = 4;
  
  public static final int n = 5;
  
  public static final int o = 6;
  
  public static final int p = 7;
  
  public static final int q = 8;
  
  public static final int r = 9;
  
  public static final int s = 10;
  
  public static final int t = 11;
  
  public static final int u = 12;
  
  public static final int v = 13;
  
  public static final int w = 99;
  
  public static final String x = "extra_type_emprestimo";
  
  public static final int y = 0;
  
  public static final int z = 1;
  
  private Thread.UncaughtExceptionHandler at;
  
  static {
    aj = 0;
    ak = 1;
    al = 2;
  }
  
  public static Application a() {
    // Byte code:
    //   0: ldc com/santander/app/MinhaConta
    //   2: monitorenter
    //   3: getstatic com/santander/app/MinhaConta.ao : Landroid/content/Context;
    //   6: checkcast android/app/Application
    //   9: astore_0
    //   10: ldc com/santander/app/MinhaConta
    //   12: monitorexit
    //   13: aload_0
    //   14: areturn
    //   15: astore_0
    //   16: ldc com/santander/app/MinhaConta
    //   18: monitorexit
    //   19: aload_0
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   3	10	15	finally
  }
  
  public static void a(Context paramContext) {
    ao = paramContext;
  }
  
  public static void a(String paramString, boolean paramBoolean) {
    // Byte code:
    //   0: ldc com/santander/app/MinhaConta
    //   2: monitorenter
    //   3: iconst_1
    //   4: putstatic com/santander/app/MinhaConta.aq : Z
    //   7: aload_0
    //   8: putstatic com/santander/app/MinhaConta.ar : Ljava/lang/String;
    //   11: iload_1
    //   12: putstatic com/santander/app/MinhaConta.as : Z
    //   15: ldc com/santander/app/MinhaConta
    //   17: monitorexit
    //   18: return
    //   19: astore_0
    //   20: ldc com/santander/app/MinhaConta
    //   22: monitorexit
    //   23: aload_0
    //   24: athrow
    // Exception table:
    //   from	to	target	type
    //   3	15	19	finally
  }
  
  public static void a(boolean paramBoolean) {
    // Byte code:
    //   0: ldc com/santander/app/MinhaConta
    //   2: monitorenter
    //   3: iload_0
    //   4: putstatic com/santander/app/MinhaConta.ap : Z
    //   7: ldc com/santander/app/MinhaConta
    //   9: monitorexit
    //   10: return
    //   11: astore_1
    //   12: ldc com/santander/app/MinhaConta
    //   14: monitorexit
    //   15: aload_1
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	11	finally
  }
  
  public static Context b() {
    // Byte code:
    //   0: ldc com/santander/app/MinhaConta
    //   2: monitorenter
    //   3: getstatic com/santander/app/MinhaConta.ao : Landroid/content/Context;
    //   6: astore_0
    //   7: ldc com/santander/app/MinhaConta
    //   9: monitorexit
    //   10: aload_0
    //   11: areturn
    //   12: astore_0
    //   13: ldc com/santander/app/MinhaConta
    //   15: monitorexit
    //   16: aload_0
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	12	finally
  }
  
  public static void b(boolean paramBoolean) {
    au = paramBoolean;
  }
  
  public static boolean c() {
    // Byte code:
    //   0: ldc com/santander/app/MinhaConta
    //   2: monitorenter
    //   3: getstatic com/santander/app/MinhaConta.ap : Z
    //   6: istore_0
    //   7: ldc com/santander/app/MinhaConta
    //   9: monitorexit
    //   10: iload_0
    //   11: ireturn
    //   12: astore_1
    //   13: ldc com/santander/app/MinhaConta
    //   15: monitorexit
    //   16: aload_1
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	12	finally
  }
  
  public static String d() {
    // Byte code:
    //   0: ldc com/santander/app/MinhaConta
    //   2: monitorenter
    //   3: getstatic com/santander/app/MinhaConta.ar : Ljava/lang/String;
    //   6: astore_0
    //   7: ldc com/santander/app/MinhaConta
    //   9: monitorexit
    //   10: aload_0
    //   11: areturn
    //   12: astore_0
    //   13: ldc com/santander/app/MinhaConta
    //   15: monitorexit
    //   16: aload_0
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	12	finally
  }
  
  public static boolean e() {
    // Byte code:
    //   0: ldc com/santander/app/MinhaConta
    //   2: monitorenter
    //   3: getstatic com/santander/app/MinhaConta.as : Z
    //   6: istore_0
    //   7: ldc com/santander/app/MinhaConta
    //   9: monitorexit
    //   10: iload_0
    //   11: ireturn
    //   12: astore_1
    //   13: ldc com/santander/app/MinhaConta
    //   15: monitorexit
    //   16: aload_1
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	12	finally
  }
  
  public static boolean f() {
    // Byte code:
    //   0: ldc com/santander/app/MinhaConta
    //   2: monitorenter
    //   3: getstatic com/santander/app/MinhaConta.aq : Z
    //   6: istore_0
    //   7: ldc com/santander/app/MinhaConta
    //   9: monitorexit
    //   10: iload_0
    //   11: ireturn
    //   12: astore_1
    //   13: ldc com/santander/app/MinhaConta
    //   15: monitorexit
    //   16: aload_1
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	12	finally
  }
  
  public static void g() {
    // Byte code:
    //   0: ldc com/santander/app/MinhaConta
    //   2: monitorenter
    //   3: iconst_0
    //   4: putstatic com/santander/app/MinhaConta.aq : Z
    //   7: ldc ''
    //   9: putstatic com/santander/app/MinhaConta.ar : Ljava/lang/String;
    //   12: iconst_0
    //   13: putstatic com/santander/app/MinhaConta.as : Z
    //   16: ldc com/santander/app/MinhaConta
    //   18: monitorexit
    //   19: return
    //   20: astore_0
    //   21: ldc com/santander/app/MinhaConta
    //   23: monitorexit
    //   24: aload_0
    //   25: athrow
    // Exception table:
    //   from	to	target	type
    //   3	16	20	finally
  }
  
  public static boolean h() {
    return au;
  }
  
  private void i() {
    Adjust.onCreate(new AdjustConfig((Context)this, "yh7ianl0g0sg", "production"));
    registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)new fit(null));
  }
  
  private void j() {
    SharedPreferences sharedPreferences = getSharedPreferences("SovereignBrasilProfile", 0);
    if (sharedPreferences.getBoolean("ni", true)) {
      SharedPreferences.Editor editor = sharedPreferences.edit();
      editor.putBoolean("ni", false);
      editor.commit();
      frq.d("APP_NEW_INSTALL", "true");
      return;
    } 
    frq.d("APP_NEW_INSTALL", "false");
  }
  
  protected void attachBaseContext(Context paramContext) {
    super.attachBaseContext(paramContext);
    MultiDex.install((Context)this);
  }
  
  public void onChange(SmiResult paramSmiResult) {
    SdState sdState = paramSmiResult.getSdState();
    Log.d(av, "sponsored data state : " + sdState);
    if (sdState == SdState.SD_AVAILABLE) {
      miq.C().g(true);
      return;
    } 
    if (sdState == SdState.SD_NOT_AVAILABLE) {
      Log.d(av, " - reason: " + paramSmiResult.getSdReason());
      miq.C().g(false);
      return;
    } 
    if (sdState == SdState.WIFI)
      return; 
  }
  
  public void onCreate() {
    String str;
    super.onCreate();
    ao = (Context)this;
    frq.a(this, true);
    frq.a("Abertura", "Aplicativo");
    if (Settings.System.getInt(getContentResolver(), "always_finish_activities", 0) == 1) {
      str = "habilitada";
    } else {
      str = "nao habilitada";
    } 
    frq.d("Outros_Opcao_Nao_manter_Activities", str);
    myn.a(this);
    i();
    startService(new Intent((Context)this, PhishingSMSService.class));
    j();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\MinhaConta.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */