import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.internal.zzatg;
import com.google.android.gms.internal.zzato;
import com.google.android.gms.internal.zzatq;
import com.google.android.gms.internal.zzauq;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;

public class dmw extends dmu {
  protected dnj a;
  
  private egg b;
  
  private final Set<egh> c = new CopyOnWriteArraySet<egh>();
  
  private boolean d;
  
  private String e = null;
  
  private String f = null;
  
  protected dmw(dlv paramdlv) {
    super(paramdlv);
  }
  
  @WorkerThread
  private void A() {
    try {
      a(Class.forName(B()));
      return;
    } catch (ClassNotFoundException classNotFoundException) {
      u().B().a("Tag Manager is not found and thus will not be used");
      return;
    } 
  }
  
  private String B() {
    return "com.google.android.gms.tagmanager.TagManagerService";
  }
  
  private void a(String paramString1, String paramString2, Bundle paramBundle, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString3) {
    a(paramString1, paramString2, m().a(), paramBundle, paramBoolean1, paramBoolean2, paramBoolean3, paramString3);
  }
  
  @WorkerThread
  private void a(String paramString1, String paramString2, Object paramObject, long paramLong) {
    csp.a(paramString1);
    csp.a(paramString2);
    e();
    c();
    R();
    if (!this.n.G()) {
      u().C().a("User property not set since app measurement is disabled");
      return;
    } 
    if (this.n.b()) {
      u().C().a("Setting user property (FE)", paramString2, paramObject);
      zzauq zzauq = new zzauq(paramString2, paramLong, paramObject, paramString1);
      k().a(zzauq);
      return;
    } 
  }
  
  private List<AppMeasurement.ConditionalUserProperty> b(String paramString1, String paramString2, String paramString3) {
    // Byte code:
    //   0: new java/util/concurrent/atomic/AtomicReference
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #4
    //   9: aload #4
    //   11: monitorenter
    //   12: aload_0
    //   13: getfield n : Ldlv;
    //   16: invokevirtual h : ()Ldlq;
    //   19: new dnd
    //   22: dup
    //   23: aload_0
    //   24: aload #4
    //   26: aload_1
    //   27: aload_2
    //   28: aload_3
    //   29: invokespecial <init> : (Ldmw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   32: invokevirtual a : (Ljava/lang/Runnable;)V
    //   35: aload #4
    //   37: ldc2_w 5000
    //   40: invokevirtual wait : (J)V
    //   43: aload #4
    //   45: monitorexit
    //   46: aload #4
    //   48: invokevirtual get : ()Ljava/lang/Object;
    //   51: checkcast java/util/List
    //   54: astore #4
    //   56: aload #4
    //   58: ifnonnull -> 102
    //   61: aload_0
    //   62: invokevirtual u : ()Ldkw;
    //   65: invokevirtual z : ()Ldky;
    //   68: ldc 'Timed out waiting for get conditional user properties'
    //   70: aload_1
    //   71: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   74: invokestatic emptyList : ()Ljava/util/List;
    //   77: areturn
    //   78: astore_3
    //   79: aload_0
    //   80: invokevirtual u : ()Ldkw;
    //   83: invokevirtual z : ()Ldky;
    //   86: ldc 'Interrupted waiting for get conditional user properties'
    //   88: aload_1
    //   89: aload_3
    //   90: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   93: goto -> 43
    //   96: astore_1
    //   97: aload #4
    //   99: monitorexit
    //   100: aload_1
    //   101: athrow
    //   102: new java/util/ArrayList
    //   105: dup
    //   106: aload #4
    //   108: invokeinterface size : ()I
    //   113: invokespecial <init> : (I)V
    //   116: astore_3
    //   117: aload #4
    //   119: invokeinterface iterator : ()Ljava/util/Iterator;
    //   124: astore #4
    //   126: aload #4
    //   128: invokeinterface hasNext : ()Z
    //   133: ifeq -> 414
    //   136: aload #4
    //   138: invokeinterface next : ()Ljava/lang/Object;
    //   143: checkcast com/google/android/gms/internal/zzatg
    //   146: astore #5
    //   148: new com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty
    //   151: dup
    //   152: invokespecial <init> : ()V
    //   155: astore #6
    //   157: aload #6
    //   159: aload_1
    //   160: putfield mAppId : Ljava/lang/String;
    //   163: aload #6
    //   165: aload_2
    //   166: putfield mOrigin : Ljava/lang/String;
    //   169: aload #6
    //   171: aload #5
    //   173: getfield e : J
    //   176: putfield mCreationTimestamp : J
    //   179: aload #6
    //   181: aload #5
    //   183: getfield d : Lcom/google/android/gms/internal/zzauq;
    //   186: getfield b : Ljava/lang/String;
    //   189: putfield mName : Ljava/lang/String;
    //   192: aload #6
    //   194: aload #5
    //   196: getfield d : Lcom/google/android/gms/internal/zzauq;
    //   199: invokevirtual a : ()Ljava/lang/Object;
    //   202: putfield mValue : Ljava/lang/Object;
    //   205: aload #6
    //   207: aload #5
    //   209: getfield f : Z
    //   212: putfield mActive : Z
    //   215: aload #6
    //   217: aload #5
    //   219: getfield g : Ljava/lang/String;
    //   222: putfield mTriggerEventName : Ljava/lang/String;
    //   225: aload #5
    //   227: getfield h : Lcom/google/android/gms/internal/zzatq;
    //   230: ifnull -> 273
    //   233: aload #6
    //   235: aload #5
    //   237: getfield h : Lcom/google/android/gms/internal/zzatq;
    //   240: getfield a : Ljava/lang/String;
    //   243: putfield mTimedOutEventName : Ljava/lang/String;
    //   246: aload #5
    //   248: getfield h : Lcom/google/android/gms/internal/zzatq;
    //   251: getfield b : Lcom/google/android/gms/internal/zzato;
    //   254: ifnull -> 273
    //   257: aload #6
    //   259: aload #5
    //   261: getfield h : Lcom/google/android/gms/internal/zzatq;
    //   264: getfield b : Lcom/google/android/gms/internal/zzato;
    //   267: invokevirtual b : ()Landroid/os/Bundle;
    //   270: putfield mTimedOutEventParams : Landroid/os/Bundle;
    //   273: aload #6
    //   275: aload #5
    //   277: getfield i : J
    //   280: putfield mTriggerTimeout : J
    //   283: aload #5
    //   285: getfield j : Lcom/google/android/gms/internal/zzatq;
    //   288: ifnull -> 331
    //   291: aload #6
    //   293: aload #5
    //   295: getfield j : Lcom/google/android/gms/internal/zzatq;
    //   298: getfield a : Ljava/lang/String;
    //   301: putfield mTriggeredEventName : Ljava/lang/String;
    //   304: aload #5
    //   306: getfield j : Lcom/google/android/gms/internal/zzatq;
    //   309: getfield b : Lcom/google/android/gms/internal/zzato;
    //   312: ifnull -> 331
    //   315: aload #6
    //   317: aload #5
    //   319: getfield j : Lcom/google/android/gms/internal/zzatq;
    //   322: getfield b : Lcom/google/android/gms/internal/zzato;
    //   325: invokevirtual b : ()Landroid/os/Bundle;
    //   328: putfield mTriggeredEventParams : Landroid/os/Bundle;
    //   331: aload #6
    //   333: aload #5
    //   335: getfield d : Lcom/google/android/gms/internal/zzauq;
    //   338: getfield c : J
    //   341: putfield mTriggeredTimestamp : J
    //   344: aload #6
    //   346: aload #5
    //   348: getfield k : J
    //   351: putfield mTimeToLive : J
    //   354: aload #5
    //   356: getfield l : Lcom/google/android/gms/internal/zzatq;
    //   359: ifnull -> 402
    //   362: aload #6
    //   364: aload #5
    //   366: getfield l : Lcom/google/android/gms/internal/zzatq;
    //   369: getfield a : Ljava/lang/String;
    //   372: putfield mExpiredEventName : Ljava/lang/String;
    //   375: aload #5
    //   377: getfield l : Lcom/google/android/gms/internal/zzatq;
    //   380: getfield b : Lcom/google/android/gms/internal/zzato;
    //   383: ifnull -> 402
    //   386: aload #6
    //   388: aload #5
    //   390: getfield l : Lcom/google/android/gms/internal/zzatq;
    //   393: getfield b : Lcom/google/android/gms/internal/zzato;
    //   396: invokevirtual b : ()Landroid/os/Bundle;
    //   399: putfield mExpiredEventParams : Landroid/os/Bundle;
    //   402: aload_3
    //   403: aload #6
    //   405: invokeinterface add : (Ljava/lang/Object;)Z
    //   410: pop
    //   411: goto -> 126
    //   414: aload_3
    //   415: areturn
    // Exception table:
    //   from	to	target	type
    //   12	35	96	finally
    //   35	43	78	java/lang/InterruptedException
    //   35	43	96	finally
    //   43	46	96	finally
    //   79	93	96	finally
    //   97	100	96	finally
  }
  
  private Map<String, Object> b(String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    // Byte code:
    //   0: new java/util/concurrent/atomic/AtomicReference
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #5
    //   9: aload #5
    //   11: monitorenter
    //   12: aload_0
    //   13: getfield n : Ldlv;
    //   16: invokevirtual h : ()Ldlq;
    //   19: new dne
    //   22: dup
    //   23: aload_0
    //   24: aload #5
    //   26: aload_1
    //   27: aload_2
    //   28: aload_3
    //   29: iload #4
    //   31: invokespecial <init> : (Ldmw;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    //   34: invokevirtual a : (Ljava/lang/Runnable;)V
    //   37: aload #5
    //   39: ldc2_w 5000
    //   42: invokevirtual wait : (J)V
    //   45: aload #5
    //   47: monitorexit
    //   48: aload #5
    //   50: invokevirtual get : ()Ljava/lang/Object;
    //   53: checkcast java/util/List
    //   56: astore_2
    //   57: aload_2
    //   58: ifnonnull -> 102
    //   61: aload_0
    //   62: invokevirtual u : ()Ldkw;
    //   65: invokevirtual z : ()Ldky;
    //   68: ldc_w 'Timed out waiting for get user properties'
    //   71: invokevirtual a : (Ljava/lang/String;)V
    //   74: invokestatic emptyMap : ()Ljava/util/Map;
    //   77: areturn
    //   78: astore_1
    //   79: aload_0
    //   80: invokevirtual u : ()Ldkw;
    //   83: invokevirtual z : ()Ldky;
    //   86: ldc_w 'Interrupted waiting for get user properties'
    //   89: aload_1
    //   90: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   93: goto -> 45
    //   96: astore_1
    //   97: aload #5
    //   99: monitorexit
    //   100: aload_1
    //   101: athrow
    //   102: new android/support/v4/util/ArrayMap
    //   105: dup
    //   106: aload_2
    //   107: invokeinterface size : ()I
    //   112: invokespecial <init> : (I)V
    //   115: astore_1
    //   116: aload_2
    //   117: invokeinterface iterator : ()Ljava/util/Iterator;
    //   122: astore_2
    //   123: aload_2
    //   124: invokeinterface hasNext : ()Z
    //   129: ifeq -> 160
    //   132: aload_2
    //   133: invokeinterface next : ()Ljava/lang/Object;
    //   138: checkcast com/google/android/gms/internal/zzauq
    //   141: astore_3
    //   142: aload_1
    //   143: aload_3
    //   144: getfield b : Ljava/lang/String;
    //   147: aload_3
    //   148: invokevirtual a : ()Ljava/lang/Object;
    //   151: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   156: pop
    //   157: goto -> 123
    //   160: aload_1
    //   161: areturn
    // Exception table:
    //   from	to	target	type
    //   12	37	96	finally
    //   37	45	78	java/lang/InterruptedException
    //   37	45	96	finally
    //   45	48	96	finally
    //   79	93	96	finally
    //   97	100	96	finally
  }
  
  @WorkerThread
  private void b(String paramString1, String paramString2, long paramLong, Bundle paramBundle, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString3) {
    csp.a(paramString1);
    csp.a(paramString2);
    csp.a(paramBundle);
    e();
    R();
    if (!this.n.G()) {
      u().C().a("Event not sent since app measurement is disabled");
      return;
    } 
    if (!this.d) {
      this.d = true;
      A();
    } 
    boolean bool1 = "am".equals(paramString1);
    boolean bool2 = dou.l(paramString2);
    if (paramBoolean1 && this.b != null && !bool2 && !bool1) {
      u().C().a("Passing event to registered event handler (FE)", paramString2, paramBundle);
      this.b.a(paramString1, paramString2, paramBundle, paramLong);
      return;
    } 
    if (this.n.b()) {
      int i = q().c(paramString2);
      if (i != 0) {
        boolean bool;
        paramString1 = q().a(paramString2, w().y(), true);
        if (paramString2 != null) {
          bool = paramString2.length();
        } else {
          bool = false;
        } 
        this.n.o().a(i, "_ev", paramString1, bool);
        return;
      } 
      paramBundle.putString("_o", paramString1);
      List<String> list = cvp.a("_o");
      Bundle bundle = q().a(paramString2, paramBundle, list, paramBoolean3);
      if (!paramBundle.containsKey("_sc")) {
        w().V();
        dnn dnn = l().x();
        if (dnn != null)
          dnn.a = true; 
        dnk.a(dnn, bundle);
      } 
      if (paramBoolean2) {
        paramBundle = q().a(bundle);
      } else {
        paramBundle = bundle;
      } 
      u().C().a("Logging event (FE)", paramString2, paramBundle);
      zzatq zzatq = new zzatq(paramString2, new zzato(paramBundle), paramString1, paramLong);
      k().a(zzatq, paramString3);
      if (!bool1) {
        Iterator<egh> iterator = this.c.iterator();
        while (true) {
          if (iterator.hasNext()) {
            ((egh)iterator.next()).a(paramString1, paramString2, new Bundle(paramBundle), paramLong);
            continue;
          } 
          return;
        } 
      } 
    } 
  }
  
  private void b(String paramString1, String paramString2, String paramString3, Bundle paramBundle) {
    long l = m().a();
    csp.a(paramString2);
    AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
    conditionalUserProperty.mAppId = paramString1;
    conditionalUserProperty.mName = paramString2;
    conditionalUserProperty.mCreationTimestamp = l;
    if (paramString3 != null) {
      conditionalUserProperty.mExpiredEventName = paramString3;
      conditionalUserProperty.mExpiredEventParams = paramBundle;
    } 
    t().a(new dnc(this, conditionalUserProperty));
  }
  
  private void c(AppMeasurement.ConditionalUserProperty paramConditionalUserProperty) {
    long l = m().a();
    csp.a(paramConditionalUserProperty);
    csp.a(paramConditionalUserProperty.mName);
    csp.a(paramConditionalUserProperty.mOrigin);
    csp.a(paramConditionalUserProperty.mValue);
    paramConditionalUserProperty.mCreationTimestamp = l;
    String str = paramConditionalUserProperty.mName;
    Object object1 = paramConditionalUserProperty.mValue;
    if (q().e(str) != 0) {
      u().x().a("Invalid conditional user property name", str);
      return;
    } 
    if (q().c(str, object1) != 0) {
      u().x().a("Invalid conditional user property value", str, object1);
      return;
    } 
    Object object2 = q().d(str, object1);
    if (object2 == null) {
      u().x().a("Unable to normalize conditional user property value", str, object1);
      return;
    } 
    paramConditionalUserProperty.mValue = object2;
    l = paramConditionalUserProperty.mTriggerTimeout;
    if (l > w().M() || l < 1L) {
      u().x().a("Invalid conditional user property timeout", str, Long.valueOf(l));
      return;
    } 
    l = paramConditionalUserProperty.mTimeToLive;
    if (l > w().N() || l < 1L) {
      u().x().a("Invalid conditional user property time to live", str, Long.valueOf(l));
      return;
    } 
    t().a(new dnb(this, paramConditionalUserProperty));
  }
  
  @WorkerThread
  private void c(boolean paramBoolean) {
    e();
    c();
    R();
    u().C().a("Setting app measurement enabled (FE)", Boolean.valueOf(paramBoolean));
    v().b(paramBoolean);
    k().y();
  }
  
  @WorkerThread
  private void d(AppMeasurement.ConditionalUserProperty paramConditionalUserProperty) {
    e();
    R();
    csp.a(paramConditionalUserProperty);
    csp.a(paramConditionalUserProperty.mName);
    csp.a(paramConditionalUserProperty.mOrigin);
    csp.a(paramConditionalUserProperty.mValue);
    if (!this.n.G()) {
      u().C().a("Conditional property not sent since Firebase Analytics is disabled");
      return;
    } 
    zzauq zzauq = new zzauq(paramConditionalUserProperty.mName, paramConditionalUserProperty.mTriggeredTimestamp, paramConditionalUserProperty.mValue, paramConditionalUserProperty.mOrigin);
    try {
      zzatq zzatq1 = q().a(paramConditionalUserProperty.mTriggeredEventName, paramConditionalUserProperty.mTriggeredEventParams, paramConditionalUserProperty.mOrigin, 0L, true, false);
      zzatq zzatq2 = q().a(paramConditionalUserProperty.mTimedOutEventName, paramConditionalUserProperty.mTimedOutEventParams, paramConditionalUserProperty.mOrigin, 0L, true, false);
      zzatq zzatq3 = q().a(paramConditionalUserProperty.mExpiredEventName, paramConditionalUserProperty.mExpiredEventParams, paramConditionalUserProperty.mOrigin, 0L, true, false);
      zzatg zzatg = new zzatg(paramConditionalUserProperty.mAppId, paramConditionalUserProperty.mOrigin, zzauq, paramConditionalUserProperty.mCreationTimestamp, false, paramConditionalUserProperty.mTriggerEventName, zzatq2, paramConditionalUserProperty.mTriggerTimeout, zzatq1, paramConditionalUserProperty.mTimeToLive, zzatq3);
      k().a(zzatg);
      return;
    } catch (IllegalArgumentException illegalArgumentException) {
      return;
    } 
  }
  
  @WorkerThread
  private void e(AppMeasurement.ConditionalUserProperty paramConditionalUserProperty) {
    e();
    R();
    csp.a(paramConditionalUserProperty);
    csp.a(paramConditionalUserProperty.mName);
    if (!this.n.G()) {
      u().C().a("Conditional property not cleared since Firebase Analytics is disabled");
      return;
    } 
    zzauq zzauq = new zzauq(paramConditionalUserProperty.mName, 0L, null, null);
    try {
      zzatq zzatq = q().a(paramConditionalUserProperty.mExpiredEventName, paramConditionalUserProperty.mExpiredEventParams, paramConditionalUserProperty.mOrigin, paramConditionalUserProperty.mCreationTimestamp, true, false);
      zzatg zzatg = new zzatg(paramConditionalUserProperty.mAppId, paramConditionalUserProperty.mOrigin, zzauq, paramConditionalUserProperty.mCreationTimestamp, paramConditionalUserProperty.mActive, paramConditionalUserProperty.mTriggerEventName, null, paramConditionalUserProperty.mTriggerTimeout, null, paramConditionalUserProperty.mTimeToLive, zzatq);
      k().a(zzatg);
      return;
    } catch (IllegalArgumentException illegalArgumentException) {
      return;
    } 
  }
  
  @Nullable
  @WorkerThread
  public String a(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual R : ()V
    //   6: aload_0
    //   7: invokevirtual c : ()V
    //   10: aload_1
    //   11: ifnull -> 34
    //   14: aload_1
    //   15: aload_0
    //   16: getfield f : Ljava/lang/String;
    //   19: invokevirtual equals : (Ljava/lang/Object;)Z
    //   22: ifeq -> 34
    //   25: aload_0
    //   26: getfield e : Ljava/lang/String;
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: areturn
    //   34: aload_0
    //   35: ldc2_w 30000
    //   38: invokevirtual c : (J)Ljava/lang/String;
    //   41: astore_2
    //   42: aload_2
    //   43: ifnonnull -> 51
    //   46: aconst_null
    //   47: astore_1
    //   48: goto -> 30
    //   51: aload_0
    //   52: aload_1
    //   53: putfield f : Ljava/lang/String;
    //   56: aload_0
    //   57: aload_2
    //   58: putfield e : Ljava/lang/String;
    //   61: aload_0
    //   62: getfield e : Ljava/lang/String;
    //   65: astore_1
    //   66: goto -> 30
    //   69: astore_1
    //   70: aload_0
    //   71: monitorexit
    //   72: aload_1
    //   73: athrow
    // Exception table:
    //   from	to	target	type
    //   2	10	69	finally
    //   14	30	69	finally
    //   34	42	69	finally
    //   51	66	69	finally
  }
  
  public List<AppMeasurement.ConditionalUserProperty> a(String paramString1, String paramString2) {
    c();
    return b((String)null, paramString1, paramString2);
  }
  
  public List<AppMeasurement.ConditionalUserProperty> a(String paramString1, String paramString2, String paramString3) {
    csp.a(paramString1);
    b();
    return b(paramString1, paramString2, paramString3);
  }
  
  public Map<String, Object> a(String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    csp.a(paramString1);
    b();
    return b(paramString1, paramString2, paramString3, paramBoolean);
  }
  
  public Map<String, Object> a(String paramString1, String paramString2, boolean paramBoolean) {
    c();
    return b((String)null, paramString1, paramString2, paramBoolean);
  }
  
  protected void a() {}
  
  public void a(long paramLong) {
    c();
    t().a(new dnf(this, paramLong));
  }
  
  public void a(AppMeasurement.ConditionalUserProperty paramConditionalUserProperty) {
    csp.a(paramConditionalUserProperty);
    c();
    paramConditionalUserProperty = new AppMeasurement.ConditionalUserProperty(paramConditionalUserProperty);
    if (!TextUtils.isEmpty(paramConditionalUserProperty.mAppId))
      u().z().a("Package name should be null when calling setConditionalUserProperty"); 
    paramConditionalUserProperty.mAppId = null;
    c(paramConditionalUserProperty);
  }
  
  @WorkerThread
  public void a(egg paramegg) {
    e();
    c();
    R();
    if (paramegg != null && paramegg != this.b) {
      boolean bool;
      if (this.b == null) {
        bool = true;
      } else {
        bool = false;
      } 
      csp.a(bool, "EventInterceptor already set.");
    } 
    this.b = paramegg;
  }
  
  public void a(egh paramegh) {
    c();
    R();
    csp.a(paramegh);
    if (!this.c.add(paramegh))
      u().z().a("OnEventListener already registered"); 
  }
  
  @WorkerThread
  public void a(Class<?> paramClass) {
    try {
      paramClass.getDeclaredMethod("initialize", new Class[] { Context.class }).invoke(null, new Object[] { n() });
      return;
    } catch (Exception exception) {
      u().z().a("Failed to invoke Tag Manager's initialize() method", exception);
      return;
    } 
  }
  
  protected void a(String paramString1, String paramString2, long paramLong, Bundle paramBundle, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString3) {
    if (paramBundle != null) {
      paramBundle = new Bundle(paramBundle);
    } else {
      paramBundle = new Bundle();
    } 
    t().a(new dnh(this, paramString1, paramString2, paramLong, paramBundle, paramBoolean1, paramBoolean2, paramBoolean3, paramString3));
  }
  
  void a(String paramString1, String paramString2, long paramLong, Object paramObject) {
    t().a(new dni(this, paramString1, paramString2, paramObject, paramLong));
  }
  
  public void a(String paramString1, String paramString2, Bundle paramBundle) {
    boolean bool;
    c();
    if (this.b == null || dou.l(paramString2)) {
      bool = true;
    } else {
      bool = false;
    } 
    a(paramString1, paramString2, paramBundle, true, bool, false, (String)null);
  }
  
  public void a(String paramString1, String paramString2, Bundle paramBundle, long paramLong) {
    c();
    a(paramString1, paramString2, paramLong, paramBundle, false, true, true, (String)null);
  }
  
  public void a(String paramString1, String paramString2, Bundle paramBundle, boolean paramBoolean) {
    boolean bool;
    c();
    if (this.b == null || dou.l(paramString2)) {
      bool = true;
    } else {
      bool = false;
    } 
    a(paramString1, paramString2, paramBundle, true, bool, paramBoolean, (String)null);
  }
  
  public void a(String paramString1, String paramString2, Object paramObject) {
    int i = 0;
    int j = 0;
    csp.a(paramString1);
    long l = m().a();
    int k = q().e(paramString2);
    if (k != 0) {
      paramString1 = q().a(paramString2, w().z(), true);
      i = j;
      if (paramString2 != null)
        i = paramString2.length(); 
      this.n.o().a(k, "_ev", paramString1, i);
      return;
    } 
    if (paramObject != null) {
      j = q().c(paramString2, paramObject);
      if (j != 0) {
        paramString1 = q().a(paramString2, w().z(), true);
        if (paramObject instanceof String || paramObject instanceof CharSequence)
          i = String.valueOf(paramObject).length(); 
        this.n.o().a(j, "_ev", paramString1, i);
        return;
      } 
      paramObject = q().d(paramString2, paramObject);
      if (paramObject != null) {
        a(paramString1, paramString2, l, paramObject);
        return;
      } 
      return;
    } 
    a(paramString1, paramString2, l, (Object)null);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, Bundle paramBundle) {
    csp.a(paramString1);
    b();
    b(paramString1, paramString2, paramString3, paramBundle);
  }
  
  public void a(boolean paramBoolean) {
    R();
    c();
    t().a(new dmx(this, paramBoolean));
  }
  
  public int b(String paramString) {
    csp.a(paramString);
    return w().K();
  }
  
  public List<zzauq> b(boolean paramBoolean) {
    AtomicReference<List> atomicReference;
    List<?> list;
    c();
    R();
    u().C().a("Fetching user attributes (FE)");
    synchronized (new AtomicReference()) {
      this.n.h().a(new dmy(this, atomicReference, paramBoolean));
      try {
        atomicReference.wait(5000L);
      } catch (InterruptedException interruptedException) {}
      List<?> list1 = atomicReference.get();
      list = list1;
      if (list1 == null) {
        u().z().a("Timed out waiting for get user properties");
        list = Collections.emptyList();
      } 
      return (List)list;
    } 
  }
  
  public void b(long paramLong) {
    c();
    t().a(new dng(this, paramLong));
  }
  
  public void b(AppMeasurement.ConditionalUserProperty paramConditionalUserProperty) {
    csp.a(paramConditionalUserProperty);
    csp.a(paramConditionalUserProperty.mAppId);
    b();
    c(new AppMeasurement.ConditionalUserProperty(paramConditionalUserProperty));
  }
  
  public void b(String paramString1, String paramString2, Bundle paramBundle) {
    c();
    b((String)null, paramString1, paramString2, paramBundle);
  }
  
  @Nullable
  public String c(long paramLong) {
    if (t().y()) {
      u().x().a("Cannot retrieve app instance id from analytics worker thread");
      return null;
    } 
    if (t().x()) {
      u().x().a("Cannot retrieve app instance id from main thread");
      return null;
    } 
    synchronized (new AtomicReference()) {
      t().a(new dna(this, null));
      try {
        null.wait(paramLong);
        return null.get();
      } catch (InterruptedException interruptedException) {
        u().z().a("Interrupted waiting for app instance id");
        return null;
      } 
    } 
  }
  
  @TargetApi(14)
  public void x() {
    if (n().getApplicationContext() instanceof Application) {
      Application application = (Application)n().getApplicationContext();
      if (this.a == null)
        this.a = new dnj(this, null); 
      application.unregisterActivityLifecycleCallbacks(this.a);
      application.registerActivityLifecycleCallbacks(this.a);
      u().D().a("Registered activity lifecycle callback");
    } 
  }
  
  public egv<String> y() {
    try {
      String str = v().B();
      return (egv)((str != null) ? eha.a(str) : eha.a(t().z(), new dmz(this)));
    } catch (Exception exception) {
      u().z().a("Failed to schedule task for getAppInstanceId");
      return eha.a(exception);
    } 
  }
  
  @WorkerThread
  public void z() {
    e();
    c();
    R();
    if (this.n.b()) {
      k().z();
      String str = v().E();
      if (!TextUtils.isEmpty(str) && !str.equals(j().y())) {
        Bundle bundle = new Bundle();
        bundle.putString("_po", str);
        a("auto", "_ou", bundle);
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dmw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */