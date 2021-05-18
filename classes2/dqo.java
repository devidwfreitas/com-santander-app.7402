import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;

public class dqo {
  private static String a = "WakeLock";
  
  private static String b = "*gcore*:";
  
  private static boolean c = false;
  
  private final PowerManager.WakeLock d;
  
  private WorkSource e;
  
  private final int f;
  
  private final String g;
  
  private final String h;
  
  private final String i;
  
  private final Context j;
  
  private boolean k = true;
  
  private int l;
  
  private int m;
  
  public dqo(Context paramContext, int paramInt, String paramString) {
    this(paramContext, paramInt, paramString, null, str);
  }
  
  @SuppressLint({"UnwrappedWakeLock"})
  public dqo(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3) {
    this(paramContext, paramInt, paramString1, paramString2, paramString3, null);
  }
  
  @SuppressLint({"UnwrappedWakeLock"})
  public dqo(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4) {
    csp.a(paramString1, "Wake lock name can NOT be empty");
    this.f = paramInt;
    this.h = paramString2;
    this.i = paramString4;
    this.j = paramContext.getApplicationContext();
    if (!"com.google.android.gms".equals(paramContext.getPackageName())) {
      paramString2 = String.valueOf(b);
      paramString4 = String.valueOf(paramString1);
      if (paramString4.length() != 0) {
        paramString2 = paramString2.concat(paramString4);
      } else {
        paramString2 = new String(paramString2);
      } 
      this.g = paramString2;
    } else {
      this.g = paramString1;
    } 
    this.d = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(paramInt, paramString1);
    if (cwj.a(this.j)) {
      paramString1 = paramString3;
      if (cwg.a(paramString3))
        paramString1 = paramContext.getPackageName(); 
      this.e = cwj.a(paramContext, paramString1);
      a(this.e);
    } 
  }
  
  private String a(String paramString, boolean paramBoolean) {
    return this.k ? (paramBoolean ? paramString : this.h) : this.h;
  }
  
  private void a(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial b : (Ljava/lang/String;)Z
    //   5: istore_3
    //   6: aload_0
    //   7: aload_1
    //   8: iload_3
    //   9: invokespecial a : (Ljava/lang/String;Z)Ljava/lang/String;
    //   12: astore_1
    //   13: aload_0
    //   14: monitorenter
    //   15: aload_0
    //   16: getfield k : Z
    //   19: ifeq -> 42
    //   22: aload_0
    //   23: getfield l : I
    //   26: iconst_1
    //   27: isub
    //   28: istore_2
    //   29: aload_0
    //   30: iload_2
    //   31: putfield l : I
    //   34: iload_2
    //   35: ifeq -> 57
    //   38: iload_3
    //   39: ifne -> 57
    //   42: aload_0
    //   43: getfield k : Z
    //   46: ifne -> 107
    //   49: aload_0
    //   50: getfield m : I
    //   53: iconst_1
    //   54: if_icmpne -> 107
    //   57: invokestatic a : ()Lcvj;
    //   60: aload_0
    //   61: getfield j : Landroid/content/Context;
    //   64: aload_0
    //   65: getfield d : Landroid/os/PowerManager$WakeLock;
    //   68: aload_1
    //   69: invokestatic a : (Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;
    //   72: bipush #8
    //   74: aload_0
    //   75: getfield g : Ljava/lang/String;
    //   78: aload_1
    //   79: aload_0
    //   80: getfield i : Ljava/lang/String;
    //   83: aload_0
    //   84: getfield f : I
    //   87: aload_0
    //   88: getfield e : Landroid/os/WorkSource;
    //   91: invokestatic b : (Landroid/os/WorkSource;)Ljava/util/List;
    //   94: invokevirtual a : (Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    //   97: aload_0
    //   98: aload_0
    //   99: getfield m : I
    //   102: iconst_1
    //   103: isub
    //   104: putfield m : I
    //   107: aload_0
    //   108: monitorexit
    //   109: return
    //   110: astore_1
    //   111: aload_0
    //   112: monitorexit
    //   113: aload_1
    //   114: athrow
    // Exception table:
    //   from	to	target	type
    //   15	34	110	finally
    //   42	57	110	finally
    //   57	107	110	finally
    //   107	109	110	finally
    //   111	113	110	finally
  }
  
  private void a(String paramString, long paramLong) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial b : (Ljava/lang/String;)Z
    //   5: istore #5
    //   7: aload_0
    //   8: aload_1
    //   9: iload #5
    //   11: invokespecial a : (Ljava/lang/String;Z)Ljava/lang/String;
    //   14: astore_1
    //   15: aload_0
    //   16: monitorenter
    //   17: aload_0
    //   18: getfield k : Z
    //   21: ifeq -> 48
    //   24: aload_0
    //   25: getfield l : I
    //   28: istore #4
    //   30: aload_0
    //   31: iload #4
    //   33: iconst_1
    //   34: iadd
    //   35: putfield l : I
    //   38: iload #4
    //   40: ifeq -> 62
    //   43: iload #5
    //   45: ifne -> 62
    //   48: aload_0
    //   49: getfield k : Z
    //   52: ifne -> 113
    //   55: aload_0
    //   56: getfield m : I
    //   59: ifne -> 113
    //   62: invokestatic a : ()Lcvj;
    //   65: aload_0
    //   66: getfield j : Landroid/content/Context;
    //   69: aload_0
    //   70: getfield d : Landroid/os/PowerManager$WakeLock;
    //   73: aload_1
    //   74: invokestatic a : (Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;
    //   77: bipush #7
    //   79: aload_0
    //   80: getfield g : Ljava/lang/String;
    //   83: aload_1
    //   84: aload_0
    //   85: getfield i : Ljava/lang/String;
    //   88: aload_0
    //   89: getfield f : I
    //   92: aload_0
    //   93: getfield e : Landroid/os/WorkSource;
    //   96: invokestatic b : (Landroid/os/WorkSource;)Ljava/util/List;
    //   99: lload_2
    //   100: invokevirtual a : (Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V
    //   103: aload_0
    //   104: aload_0
    //   105: getfield m : I
    //   108: iconst_1
    //   109: iadd
    //   110: putfield m : I
    //   113: aload_0
    //   114: monitorexit
    //   115: return
    //   116: astore_1
    //   117: aload_0
    //   118: monitorexit
    //   119: aload_1
    //   120: athrow
    // Exception table:
    //   from	to	target	type
    //   17	38	116	finally
    //   48	62	116	finally
    //   62	113	116	finally
    //   113	115	116	finally
    //   117	119	116	finally
  }
  
  private void b(WorkSource paramWorkSource) {
    try {
      this.d.setWorkSource(paramWorkSource);
      return;
    } catch (IllegalArgumentException illegalArgumentException) {
      Log.wtf(a, illegalArgumentException.toString());
      return;
    } 
  }
  
  private boolean b(String paramString) {
    return (!TextUtils.isEmpty(paramString) && !paramString.equals(this.h));
  }
  
  public void a() {
    a((String)null);
    this.d.release();
  }
  
  public void a(long paramLong) {
    cwd.c();
    a((String)null, paramLong);
    this.d.acquire(paramLong);
  }
  
  public void a(WorkSource paramWorkSource) {
    if (paramWorkSource != null && cwj.a(this.j)) {
      if (this.e != null) {
        this.e.add(paramWorkSource);
      } else {
        this.e = paramWorkSource;
      } 
      b(this.e);
    } 
  }
  
  public void a(boolean paramBoolean) {
    this.d.setReferenceCounted(paramBoolean);
    this.k = paramBoolean;
  }
  
  public boolean b() {
    return this.d.isHeld();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */