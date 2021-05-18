import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import java.io.IOException;
import java.security.KeyPair;
import java.util.HashMap;
import java.util.Map;

public class eis {
  static Map<String, eis> a = new HashMap<String, eis>();
  
  public static String e;
  
  private static eiz f;
  
  private static eiu g;
  
  Context b;
  
  KeyPair c;
  
  String d = "";
  
  protected eis(Context paramContext, String paramString, Bundle paramBundle) {
    this.b = paramContext.getApplicationContext();
    this.d = paramString;
  }
  
  public static eis a(Context paramContext, Bundle paramBundle) {
    // Byte code:
    //   0: ldc eis
    //   2: monitorenter
    //   3: aload_1
    //   4: ifnonnull -> 107
    //   7: ldc ''
    //   9: astore_2
    //   10: goto -> 126
    //   13: aload_0
    //   14: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   17: astore #4
    //   19: getstatic eis.f : Leiz;
    //   22: ifnonnull -> 49
    //   25: new eiz
    //   28: dup
    //   29: aload #4
    //   31: invokespecial <init> : (Landroid/content/Context;)V
    //   34: putstatic eis.f : Leiz;
    //   37: new eiu
    //   40: dup
    //   41: aload #4
    //   43: invokespecial <init> : (Landroid/content/Context;)V
    //   46: putstatic eis.g : Leiu;
    //   49: aload #4
    //   51: invokestatic b : (Landroid/content/Context;)I
    //   54: invokestatic toString : (I)Ljava/lang/String;
    //   57: putstatic eis.e : Ljava/lang/String;
    //   60: getstatic eis.a : Ljava/util/Map;
    //   63: aload_2
    //   64: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   69: checkcast eis
    //   72: astore_3
    //   73: aload_3
    //   74: astore_0
    //   75: aload_3
    //   76: ifnonnull -> 102
    //   79: new eis
    //   82: dup
    //   83: aload #4
    //   85: aload_2
    //   86: aload_1
    //   87: invokespecial <init> : (Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    //   90: astore_0
    //   91: getstatic eis.a : Ljava/util/Map;
    //   94: aload_2
    //   95: aload_0
    //   96: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   101: pop
    //   102: ldc eis
    //   104: monitorexit
    //   105: aload_0
    //   106: areturn
    //   107: aload_1
    //   108: ldc 'subtype'
    //   110: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   113: astore_2
    //   114: goto -> 126
    //   117: astore_0
    //   118: ldc eis
    //   120: monitorexit
    //   121: aload_0
    //   122: athrow
    //   123: goto -> 13
    //   126: aload_2
    //   127: ifnonnull -> 123
    //   130: ldc ''
    //   132: astore_2
    //   133: goto -> 13
    // Exception table:
    //   from	to	target	type
    //   13	49	117	finally
    //   49	73	117	finally
    //   79	102	117	finally
    //   107	114	117	finally
  }
  
  public KeyPair a() {
    if (this.c == null)
      this.c = f.e(this.d); 
    if (this.c == null)
      this.c = f.b(this.d); 
    return this.c;
  }
  
  public void a(String paramString1, String paramString2, Bundle paramBundle) {
    if (Looper.getMainLooper() == Looper.myLooper())
      throw new IOException("MAIN_THREAD"); 
    f.b(this.d, paramString1, paramString2);
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    bundle.putString("sender", paramString1);
    if (paramString2 != null)
      bundle.putString("scope", paramString2); 
    bundle.putString("subscription", paramString1);
    bundle.putString("delete", "1");
    bundle.putString("X-delete", "1");
    if ("".equals(this.d)) {
      paramString2 = paramString1;
    } else {
      paramString2 = this.d;
    } 
    bundle.putString("subtype", paramString2);
    if (!"".equals(this.d))
      paramString1 = this.d; 
    bundle.putString("X-subtype", paramString1);
    Intent intent = g.a(bundle, a());
    g.b(intent);
  }
  
  public long b() {
    return f.a(this.d);
  }
  
  public String b(String paramString1, String paramString2, Bundle paramBundle) {
    boolean bool1;
    if (Looper.getMainLooper() == Looper.myLooper())
      throw new IOException("MAIN_THREAD"); 
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    boolean bool2 = true;
    if (bundle.getString("ttl") != null || "jwt".equals(bundle.getString("type"))) {
      bool1 = false;
    } else {
      eja eja = f.a(this.d, paramString1, paramString2);
      bool1 = bool2;
      if (eja != null) {
        bool1 = bool2;
        if (!eja.b(e))
          return eja.a; 
      } 
    } 
    String str = c(paramString1, paramString2, bundle);
    if (str != null && bool1)
      f.a(this.d, paramString1, paramString2, str, e); 
    return str;
  }
  
  public String c(String paramString1, String paramString2, Bundle paramBundle) {
    if (paramString2 != null)
      paramBundle.putString("scope", paramString2); 
    paramBundle.putString("sender", paramString1);
    if ("".equals(this.d)) {
      paramString2 = paramString1;
    } else {
      paramString2 = this.d;
    } 
    if (!paramBundle.containsKey("legacy.register")) {
      paramBundle.putString("subscription", paramString1);
      paramBundle.putString("subtype", paramString2);
      paramBundle.putString("X-subscription", paramString1);
      paramBundle.putString("X-subtype", paramString2);
    } 
    Intent intent = g.a(paramBundle, a());
    return g.b(intent);
  }
  
  public void c() {
    f.c(this.d);
    this.c = null;
  }
  
  public eiz d() {
    return f;
  }
  
  public eiu e() {
    return g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */