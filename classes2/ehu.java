import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import android.support.v4.content.ContextCompat;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public class ehu {
  public static final String a = "[DEFAULT]";
  
  static final Map<String, ehu> b;
  
  private static final List<String> c = Arrays.asList(new String[] { "com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId" });
  
  private static final List<String> d = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");
  
  private static final List<String> e = Arrays.asList(new String[] { "com.google.android.gms.measurement.AppMeasurement" });
  
  private static final List<String> f = Arrays.asList(new String[0]);
  
  private static final Set<String> g = Collections.emptySet();
  
  private static final Object h = new Object();
  
  private final Context i;
  
  private final String j;
  
  private final eib k;
  
  private final AtomicBoolean l = new AtomicBoolean(false);
  
  private final AtomicBoolean m = new AtomicBoolean();
  
  private final List<ehw> n = new CopyOnWriteArrayList<ehw>();
  
  private final List<ehx> o = new CopyOnWriteArrayList<ehx>();
  
  private final List<Object> p = new CopyOnWriteArrayList();
  
  private dqs q;
  
  static {
    b = (Map<String, ehu>)new ArrayMap();
  }
  
  protected ehu(Context paramContext, String paramString, eib parameib) {
    this.i = csp.<Context>a(paramContext);
    this.j = csp.a(paramString);
    this.k = csp.<eib>a(parameib);
  }
  
  public static ehu a(Context paramContext, eib parameib) {
    return a(paramContext, parameib, "[DEFAULT]");
  }
  
  public static ehu a(Context paramContext, eib parameib, String paramString) {
    dqr dqr = dqr.a(paramContext);
    c(paramContext);
    paramString = b(paramString);
    if (paramContext.getApplicationContext() != null)
      paramContext = paramContext.getApplicationContext(); 
    synchronized (h) {
      boolean bool;
      if (!b.containsKey(paramString)) {
        bool = true;
      } else {
        bool = false;
      } 
      csp.a(bool, (new StringBuilder(String.valueOf(paramString).length() + 33)).append("FirebaseApp name ").append(paramString).append(" already exists!").toString());
      csp.a(paramContext, "Application context cannot be null.");
      ehu ehu1 = new ehu(paramContext, paramString, parameib);
      b.put(paramString, ehu1);
      dqr.a(ehu1);
      ehu1.a(ehu.class, ehu1, c);
      if (ehu1.e()) {
        ehu1.a(ehu.class, ehu1, d);
        ehu1.a(Context.class, ehu1.a(), e);
      } 
      return ehu1;
    } 
  }
  
  public static ehu a(@NonNull String paramString) {
    synchronized (h) {
      ehu ehu1 = b.get(b(paramString));
      if (ehu1 != null)
        return ehu1; 
      List<String> list = i();
      if (list.isEmpty()) {
        str = "";
        throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", new Object[] { paramString, str }));
      } 
    } 
    String str = String.valueOf(TextUtils.join(", ", (Iterable)str));
    if (str.length() != 0) {
      str = "Available app names: ".concat(str);
      throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", new Object[] { paramString, str }));
    } 
    str = new String("Available app names: ");
    throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", new Object[] { paramString, str }));
  }
  
  public static List<ehu> a(Context paramContext) {
    ArrayList<ehu> arrayList;
    dqr dqr = dqr.a(paramContext);
    synchronized (h) {
      arrayList = new ArrayList(b.values());
      Set<String> set = dqr.a().b();
      set.removeAll(b.keySet());
      for (String str : set) {
        dqr.a(str);
        arrayList.add(a(paramContext, (eib)null, str));
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
    return arrayList;
  }
  
  private <T> void a(Class<T> paramClass, T paramT, Iterable<String> paramIterable) {
    boolean bool = ContextCompat.isDeviceProtectedStorage(this.i);
    if (bool)
      ehy.a(this.i); 
    Iterator<String> iterator = paramIterable.iterator();
    while (true) {
      while (true)
        break; 
      if (Modifier.isPublic(SYNTHETIC_LOCAL_VARIABLE_4) && Modifier.isStatic(SYNTHETIC_LOCAL_VARIABLE_4))
        SYNTHETIC_LOCAL_VARIABLE_7.invoke(null, new Object[] { paramT }); 
    } 
  }
  
  public static void a(boolean paramBoolean) {
    synchronized (h) {
      for (ehu ehu1 : new ArrayList(b.values())) {
        if (ehu1.l.get())
          ehu1.d(paramBoolean); 
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
  }
  
  @Nullable
  public static ehu b(Context paramContext) {
    eib eib1;
    synchronized (h) {
      ehu ehu2;
      if (b.containsKey("[DEFAULT]")) {
        ehu2 = d();
        return ehu2;
      } 
      eib1 = eib.a((Context)ehu2);
      if (eib1 == null)
        return null; 
    } 
    ehu ehu1 = a(paramContext, eib1);
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
    return ehu1;
  }
  
  private static String b(@NonNull String paramString) {
    return paramString.trim();
  }
  
  @TargetApi(14)
  private static void c(Context paramContext) {
    cwd.c();
    if (paramContext.getApplicationContext() instanceof Application) {
      dak.a((Application)paramContext.getApplicationContext());
      dak.a().a(new ehv());
    } 
  }
  
  @Nullable
  public static ehu d() {
    synchronized (h) {
      ehu ehu1 = b.get("[DEFAULT]");
      if (ehu1 == null) {
        String str = String.valueOf(cwe.a());
        throw new IllegalStateException((new StringBuilder(String.valueOf(str).length() + 116)).append("Default FirebaseApp is not initialized in this process ").append(str).append(". Make sure to call FirebaseApp.initializeApp(Context) first.").toString());
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_0} */
    return (ehu)SYNTHETIC_LOCAL_VARIABLE_1;
  }
  
  private void d(boolean paramBoolean) {
    Log.d("FirebaseApp", "Notifying background state change listeners.");
    Iterator<ehx> iterator = this.o.iterator();
    while (iterator.hasNext())
      ((ehx)iterator.next()).a(paramBoolean); 
  }
  
  private void h() {
    boolean bool;
    if (!this.m.get()) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.a(bool, "FirebaseApp was deleted");
  }
  
  private static List<String> i() {
    null = new cvk();
    synchronized (h) {
      Iterator<ehu> iterator = b.values().iterator();
      while (iterator.hasNext())
        null.add(((ehu)iterator.next()).b()); 
    } 
    dqr dqr = dqr.a();
    if (dqr != null)
      SYNTHETIC_LOCAL_VARIABLE_1.addAll(dqr.b()); 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_0} */
    ArrayList<Comparable> arrayList = new ArrayList((Collection<?>)SYNTHETIC_LOCAL_VARIABLE_1);
    Collections.sort(arrayList);
    return (List)arrayList;
  }
  
  private void j() {
    a(ehu.class, this, c);
    if (e()) {
      a(ehu.class, this, d);
      a(Context.class, this.i, e);
    } 
  }
  
  @NonNull
  public Context a() {
    h();
    return this.i;
  }
  
  public void a(@NonNull dqs paramdqs) {
    this.q = csp.<dqs>a(paramdqs);
  }
  
  @UiThread
  public void a(@NonNull dqt paramdqt) {
    Log.d("FirebaseApp", "Notifying auth state listeners.");
    Iterator<ehw> iterator = this.n.iterator();
    int i;
    for (i = 0; iterator.hasNext(); i++)
      ((ehw)iterator.next()).a(paramdqt); 
    Log.d("FirebaseApp", String.format("Notified %d auth state listeners.", new Object[] { Integer.valueOf(i) }));
  }
  
  public void a(@NonNull ehw paramehw) {
    h();
    csp.a(paramehw);
    this.n.add(paramehw);
  }
  
  public void a(ehx paramehx) {
    h();
    if (this.l.get() && dak.a().b())
      paramehx.a(true); 
    this.o.add(paramehx);
  }
  
  public egv<eik> b(boolean paramBoolean) {
    h();
    return (this.q == null) ? eha.a((Exception)new eht("firebase-auth is not linked, please fall back to unauthenticated mode.")) : this.q.a(paramBoolean);
  }
  
  @NonNull
  public String b() {
    h();
    return this.j;
  }
  
  @NonNull
  public eib c() {
    h();
    return this.k;
  }
  
  public void c(boolean paramBoolean) {
    boolean bool;
    h();
    AtomicBoolean atomicBoolean = this.l;
    if (!paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    if (atomicBoolean.compareAndSet(bool, paramBoolean)) {
      bool = dak.a().b();
      if (paramBoolean && bool) {
        d(true);
        return;
      } 
    } else {
      return;
    } 
    if (!paramBoolean && bool) {
      d(false);
      return;
    } 
  }
  
  public boolean e() {
    return "[DEFAULT]".equals(b());
  }
  
  public boolean equals(Object paramObject) {
    return !(paramObject instanceof ehu) ? false : this.j.equals(((ehu)paramObject).b());
  }
  
  public String f() {
    String str1 = String.valueOf(cvm.c(b().getBytes()));
    String str2 = String.valueOf(cvm.c(c().b().getBytes()));
    return (new StringBuilder(String.valueOf(str1).length() + 1 + String.valueOf(str2).length())).append(str1).append("+").append(str2).toString();
  }
  
  public int hashCode() {
    return this.j.hashCode();
  }
  
  public String toString() {
    return csg.a(this).a("name", this.j).a("options", this.k).toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */