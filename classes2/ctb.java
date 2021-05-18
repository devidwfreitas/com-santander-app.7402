import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.zzc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class ctb<T extends IInterface> {
  public static final String[] d = new String[] { "service_esmobile", "service_googleme" };
  
  final Handler a;
  
  protected cth b;
  
  protected AtomicInteger c = new AtomicInteger(0);
  
  private int e;
  
  private long f;
  
  private long g;
  
  private int h;
  
  private long i;
  
  private final Context j;
  
  private final Looper k;
  
  private final cua l;
  
  private final cwn m;
  
  private final Object n = new Object();
  
  private final Object o = new Object();
  
  private cur p;
  
  private T q;
  
  private final ArrayList<ctg<?>> r = new ArrayList<ctg<?>>();
  
  private ctj s;
  
  private int t = 1;
  
  private final ctd u;
  
  private final cte v;
  
  private final int w;
  
  private final String x;
  
  protected ctb(Context paramContext, Looper paramLooper, int paramInt, ctd paramctd, cte paramcte, String paramString) {
    this(paramContext, paramLooper, cua.a(paramContext), cwn.b(), paramInt, csp.<ctd>a(paramctd), csp.<cte>a(paramcte), paramString);
  }
  
  protected ctb(Context paramContext, Looper paramLooper, cua paramcua, cwn paramcwn, int paramInt, ctd paramctd, cte paramcte, String paramString) {
    this.j = csp.<Context>a(paramContext, "Context must not be null");
    this.k = csp.<Looper>a(paramLooper, "Looper must not be null");
    this.l = csp.<cua>a(paramcua, "Supervisor must not be null");
    this.m = csp.<cwn>a(paramcwn, "API availability must not be null");
    this.a = new ctf(this, paramLooper);
    this.w = paramInt;
    this.u = paramctd;
    this.v = paramcte;
    this.x = paramString;
  }
  
  private void a(int paramInt, T paramT) {
    boolean bool1;
    boolean bool2;
    boolean bool3 = true;
    if (paramInt == 3) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (paramT != null) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (bool1 != bool2)
      bool3 = false; 
    csp.b(bool3);
    synchronized (this.n) {
      this.t = paramInt;
      this.q = paramT;
      switch (paramInt) {
        case 2:
          k();
          break;
        case 3:
          a(paramT);
          break;
        case 1:
          z();
          break;
      } 
      return;
    } 
  }
  
  private boolean a(int paramInt1, int paramInt2, T paramT) {
    synchronized (this.n) {
      if (this.t != paramInt1)
        return false; 
      a(paramInt2, paramT);
      return true;
    } 
  }
  
  private void k() {
    if (this.s != null) {
      String str1 = String.valueOf(i());
      String str2 = String.valueOf(g_());
      Log.e("GmsClient", (new StringBuilder(String.valueOf(str1).length() + 70 + String.valueOf(str2).length())).append("Calling connect() while still connected, missing disconnect() for ").append(str1).append(" on ").append(str2).toString());
      this.l.b(i(), g_(), this.s, m());
      this.c.incrementAndGet();
    } 
    this.s = new ctj(this, this.c.get());
    if (!this.l.a(i(), g_(), this.s, m())) {
      String str1 = String.valueOf(i());
      String str2 = String.valueOf(g_());
      Log.e("GmsClient", (new StringBuilder(String.valueOf(str1).length() + 34 + String.valueOf(str2).length())).append("unable to connect to service: ").append(str1).append(" on ").append(str2).toString());
      a(16, (Bundle)null, this.c.get());
    } 
  }
  
  private void z() {
    if (this.s != null) {
      this.l.b(i(), g_(), this.s, m());
      this.s = null;
    } 
  }
  
  @Nullable
  protected abstract T a(IBinder paramIBinder);
  
  public void a() {
    this.c.incrementAndGet();
    synchronized (this.r) {
      int j = this.r.size();
      for (int i = 0; i < j; i++)
        ((ctg)this.r.get(i)).d(); 
      this.r.clear();
      null = this.o;
      /* monitor enter ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=null} */
      try {
        this.p = null;
        a(1, (T)null);
        return;
      } finally {
        Exception exception;
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_3} */
    throw SYNTHETIC_LOCAL_VARIABLE_4;
  }
  
  @CallSuper
  protected void a(int paramInt) {
    this.e = paramInt;
    this.f = System.currentTimeMillis();
  }
  
  protected void a(int paramInt1, @Nullable Bundle paramBundle, int paramInt2) {
    this.a.sendMessage(this.a.obtainMessage(5, paramInt2, -1, new ctm(this, paramInt1, paramBundle)));
  }
  
  protected void a(int paramInt1, IBinder paramIBinder, Bundle paramBundle, int paramInt2) {
    this.a.sendMessage(this.a.obtainMessage(1, paramInt2, -1, new ctl(this, paramInt1, paramIBinder, paramBundle)));
  }
  
  @CallSuper
  protected void a(@NonNull T paramT) {
    this.g = System.currentTimeMillis();
  }
  
  @CallSuper
  protected void a(ConnectionResult paramConnectionResult) {
    this.h = paramConnectionResult.c();
    this.i = System.currentTimeMillis();
  }
  
  public void a(@NonNull cth paramcth) {
    this.b = csp.<cth>a(paramcth, "Connection progress callbacks cannot be null.");
    a(2, (T)null);
  }
  
  public void a(@NonNull cth paramcth, int paramInt, @Nullable PendingIntent paramPendingIntent) {
    this.b = csp.<cth>a(paramcth, "Connection progress callbacks cannot be null.");
    this.a.sendMessage(this.a.obtainMessage(3, this.c.get(), paramInt, paramPendingIntent));
  }
  
  @WorkerThread
  public void a(cug paramcug, Set<Scope> paramSet) {
    Bundle bundle = t();
    zzj zzj = (new zzj(this.w)).a(this.j.getPackageName()).a(bundle);
    if (paramSet != null)
      zzj.a(paramSet); 
    if (d()) {
      zzj.a(s()).a(paramcug);
    } else if (x()) {
      zzj.a(q());
    } 
    zzj.a(r());
    try {
      synchronized (this.o) {
        if (this.p != null) {
          this.p.a(new cti(this, this.c.get()), zzj);
        } else {
          Log.w("GmsClient", "mServiceBroker is null, client disconnected");
        } 
        return;
      } 
    } catch (DeadObjectException deadObjectException) {
      Log.w("GmsClient", "IGmsServiceBroker.getService failed", (Throwable)deadObjectException);
      b(1);
      return;
    } catch (SecurityException null) {
      throw runtimeException;
    } catch (RemoteException remoteException) {
    
    } catch (RuntimeException runtimeException) {}
    Log.w("GmsClient", "IGmsServiceBroker.getService failed", runtimeException);
    a(8, (IBinder)null, (Bundle)null, this.c.get());
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    // Byte code:
    //   0: aload_0
    //   1: getfield n : Ljava/lang/Object;
    //   4: astore #4
    //   6: aload #4
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield t : I
    //   13: istore #5
    //   15: aload_0
    //   16: getfield q : Landroid/os/IInterface;
    //   19: astore_2
    //   20: aload #4
    //   22: monitorexit
    //   23: aload_0
    //   24: getfield o : Ljava/lang/Object;
    //   27: astore #4
    //   29: aload #4
    //   31: monitorenter
    //   32: aload_0
    //   33: getfield p : Lcur;
    //   36: astore #8
    //   38: aload #4
    //   40: monitorexit
    //   41: aload_3
    //   42: aload_1
    //   43: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   46: ldc_w 'mConnectState='
    //   49: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   52: pop
    //   53: iload #5
    //   55: tableswitch default -> 84, 1 -> 519, 2 -> 489, 3 -> 499, 4 -> 509
    //   84: aload_3
    //   85: ldc_w 'UNKNOWN'
    //   88: invokevirtual print : (Ljava/lang/String;)V
    //   91: aload_3
    //   92: ldc_w ' mService='
    //   95: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   98: pop
    //   99: aload_2
    //   100: ifnonnull -> 529
    //   103: aload_3
    //   104: ldc_w 'null'
    //   107: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   110: pop
    //   111: aload_3
    //   112: ldc_w ' mServiceBroker='
    //   115: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   118: pop
    //   119: aload #8
    //   121: ifnonnull -> 562
    //   124: aload_3
    //   125: ldc_w 'null'
    //   128: invokevirtual println : (Ljava/lang/String;)V
    //   131: new java/text/SimpleDateFormat
    //   134: dup
    //   135: ldc_w 'yyyy-MM-dd HH:mm:ss.SSS'
    //   138: getstatic java/util/Locale.US : Ljava/util/Locale;
    //   141: invokespecial <init> : (Ljava/lang/String;Ljava/util/Locale;)V
    //   144: astore_2
    //   145: aload_0
    //   146: getfield g : J
    //   149: lconst_0
    //   150: lcmp
    //   151: ifle -> 235
    //   154: aload_3
    //   155: aload_1
    //   156: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   159: ldc_w 'lastConnectedTime='
    //   162: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   165: astore #4
    //   167: aload_0
    //   168: getfield g : J
    //   171: lstore #6
    //   173: aload_2
    //   174: new java/util/Date
    //   177: dup
    //   178: aload_0
    //   179: getfield g : J
    //   182: invokespecial <init> : (J)V
    //   185: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   188: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   191: astore #8
    //   193: aload #4
    //   195: new java/lang/StringBuilder
    //   198: dup
    //   199: aload #8
    //   201: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   204: invokevirtual length : ()I
    //   207: bipush #21
    //   209: iadd
    //   210: invokespecial <init> : (I)V
    //   213: lload #6
    //   215: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   218: ldc_w ' '
    //   221: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: aload #8
    //   226: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: invokevirtual toString : ()Ljava/lang/String;
    //   232: invokevirtual println : (Ljava/lang/String;)V
    //   235: aload_0
    //   236: getfield f : J
    //   239: lconst_0
    //   240: lcmp
    //   241: ifle -> 373
    //   244: aload_3
    //   245: aload_1
    //   246: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   249: ldc_w 'lastSuspendedCause='
    //   252: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   255: pop
    //   256: aload_0
    //   257: getfield e : I
    //   260: tableswitch default -> 284, 1 -> 588, 2 -> 599
    //   284: aload_3
    //   285: aload_0
    //   286: getfield e : I
    //   289: invokestatic valueOf : (I)Ljava/lang/String;
    //   292: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   295: pop
    //   296: aload_3
    //   297: ldc_w ' lastSuspendedTime='
    //   300: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   303: astore #4
    //   305: aload_0
    //   306: getfield f : J
    //   309: lstore #6
    //   311: aload_2
    //   312: new java/util/Date
    //   315: dup
    //   316: aload_0
    //   317: getfield f : J
    //   320: invokespecial <init> : (J)V
    //   323: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   326: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   329: astore #8
    //   331: aload #4
    //   333: new java/lang/StringBuilder
    //   336: dup
    //   337: aload #8
    //   339: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   342: invokevirtual length : ()I
    //   345: bipush #21
    //   347: iadd
    //   348: invokespecial <init> : (I)V
    //   351: lload #6
    //   353: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   356: ldc_w ' '
    //   359: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: aload #8
    //   364: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: invokevirtual toString : ()Ljava/lang/String;
    //   370: invokevirtual println : (Ljava/lang/String;)V
    //   373: aload_0
    //   374: getfield i : J
    //   377: lconst_0
    //   378: lcmp
    //   379: ifle -> 476
    //   382: aload_3
    //   383: aload_1
    //   384: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   387: ldc_w 'lastFailedStatus='
    //   390: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   393: aload_0
    //   394: getfield h : I
    //   397: invokestatic a : (I)Ljava/lang/String;
    //   400: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   403: pop
    //   404: aload_3
    //   405: ldc_w ' lastFailedTime='
    //   408: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   411: astore_1
    //   412: aload_0
    //   413: getfield i : J
    //   416: lstore #6
    //   418: aload_2
    //   419: new java/util/Date
    //   422: dup
    //   423: aload_0
    //   424: getfield i : J
    //   427: invokespecial <init> : (J)V
    //   430: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   433: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   436: astore_2
    //   437: aload_1
    //   438: new java/lang/StringBuilder
    //   441: dup
    //   442: aload_2
    //   443: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   446: invokevirtual length : ()I
    //   449: bipush #21
    //   451: iadd
    //   452: invokespecial <init> : (I)V
    //   455: lload #6
    //   457: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   460: ldc_w ' '
    //   463: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: aload_2
    //   467: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   470: invokevirtual toString : ()Ljava/lang/String;
    //   473: invokevirtual println : (Ljava/lang/String;)V
    //   476: return
    //   477: astore_1
    //   478: aload #4
    //   480: monitorexit
    //   481: aload_1
    //   482: athrow
    //   483: astore_1
    //   484: aload #4
    //   486: monitorexit
    //   487: aload_1
    //   488: athrow
    //   489: aload_3
    //   490: ldc_w 'CONNECTING'
    //   493: invokevirtual print : (Ljava/lang/String;)V
    //   496: goto -> 91
    //   499: aload_3
    //   500: ldc_w 'CONNECTED'
    //   503: invokevirtual print : (Ljava/lang/String;)V
    //   506: goto -> 91
    //   509: aload_3
    //   510: ldc_w 'DISCONNECTING'
    //   513: invokevirtual print : (Ljava/lang/String;)V
    //   516: goto -> 91
    //   519: aload_3
    //   520: ldc_w 'DISCONNECTED'
    //   523: invokevirtual print : (Ljava/lang/String;)V
    //   526: goto -> 91
    //   529: aload_3
    //   530: aload_0
    //   531: invokevirtual j : ()Ljava/lang/String;
    //   534: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   537: ldc_w '@'
    //   540: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   543: aload_2
    //   544: invokeinterface asBinder : ()Landroid/os/IBinder;
    //   549: invokestatic identityHashCode : (Ljava/lang/Object;)I
    //   552: invokestatic toHexString : (I)Ljava/lang/String;
    //   555: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   558: pop
    //   559: goto -> 111
    //   562: aload_3
    //   563: ldc_w 'IGmsServiceBroker@'
    //   566: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   569: aload #8
    //   571: invokeinterface asBinder : ()Landroid/os/IBinder;
    //   576: invokestatic identityHashCode : (Ljava/lang/Object;)I
    //   579: invokestatic toHexString : (I)Ljava/lang/String;
    //   582: invokevirtual println : (Ljava/lang/String;)V
    //   585: goto -> 131
    //   588: aload_3
    //   589: ldc_w 'CAUSE_SERVICE_DISCONNECTED'
    //   592: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   595: pop
    //   596: goto -> 296
    //   599: aload_3
    //   600: ldc_w 'CAUSE_NETWORK_LOST'
    //   603: invokevirtual append : (Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   606: pop
    //   607: goto -> 296
    // Exception table:
    //   from	to	target	type
    //   9	23	477	finally
    //   32	41	483	finally
    //   478	481	477	finally
    //   484	487	483	finally
  }
  
  public void b(int paramInt) {
    this.a.sendMessage(this.a.obtainMessage(4, this.c.get(), paramInt));
  }
  
  public boolean b() {
    synchronized (this.n) {
      if (this.t == 3)
        return true; 
    } 
    boolean bool = false;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    return bool;
  }
  
  public boolean c() {
    synchronized (this.n) {
      if (this.t == 2)
        return true; 
    } 
    boolean bool = false;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    return bool;
  }
  
  public boolean d() {
    return false;
  }
  
  public boolean e() {
    return true;
  }
  
  public boolean f() {
    return false;
  }
  
  public Intent g() {
    throw new UnsupportedOperationException("Not a sign in API");
  }
  
  protected String g_() {
    return "com.google.android.gms";
  }
  
  @Nullable
  public IBinder h() {
    synchronized (this.o) {
      if (this.p == null)
        return null; 
      return this.p.asBinder();
    } 
  }
  
  @NonNull
  protected abstract String i();
  
  @NonNull
  protected abstract String j();
  
  @Nullable
  protected final String m() {
    return (this.x == null) ? this.j.getClass().getName() : this.x;
  }
  
  public void n() {
    int i = this.m.a(this.j);
    if (i != 0) {
      a(1, (T)null);
      a(new ctk(this), i, (PendingIntent)null);
      return;
    } 
    a(new ctk(this));
  }
  
  public final Context o() {
    return this.j;
  }
  
  public final Looper p() {
    return this.k;
  }
  
  public Account q() {
    return null;
  }
  
  public zzc[] r() {
    return new zzc[0];
  }
  
  public final Account s() {
    return (q() != null) ? q() : new Account("<<default account>>", "com.google");
  }
  
  protected Bundle t() {
    return new Bundle();
  }
  
  protected final void u() {
    if (!b())
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called."); 
  }
  
  public Bundle v() {
    return null;
  }
  
  public final T w() {
    synchronized (this.n) {
      if (this.t == 4)
        throw new DeadObjectException(); 
    } 
    u();
    if (this.q != null) {
      boolean bool1 = true;
      csp.a(bool1, "Client is connected but service is null");
      T t1 = this.q;
      /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
      return t1;
    } 
    boolean bool = false;
    csp.a(bool, "Client is connected but service is null");
    T t = this.q;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    return t;
  }
  
  public boolean x() {
    return false;
  }
  
  protected Set<Scope> y() {
    return Collections.EMPTY_SET;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ctb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */