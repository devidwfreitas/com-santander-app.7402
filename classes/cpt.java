import android.content.Context;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;

public abstract class cpt {
  public static final int a = 1;
  
  public static final int b = 2;
  
  private static final Set<cpt> c = Collections.newSetFromMap(new WeakHashMap<cpt, Boolean>());
  
  public static Set<cpt> a() {
    synchronized (c) {
      return c;
    } 
  }
  
  public static void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    synchronized (c) {
      String str = String.valueOf(paramString).concat("  ");
      Iterator<cpt> iterator = c.iterator();
      int i;
      for (i = 0; iterator.hasNext(); i++) {
        cpt cpt1 = iterator.next();
        paramPrintWriter.append(paramString).append("GoogleApiClient#").println(i);
        cpt1.b(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      } 
      return;
    } 
  }
  
  public abstract ConnectionResult a(long paramLong, @NonNull TimeUnit paramTimeUnit);
  
  @NonNull
  public <C extends cph> C a(@NonNull cpf<C> paramcpf) {
    throw new UnsupportedOperationException();
  }
  
  public <A extends cpe, R extends cqg, T extends dan<R, A>> T a(@NonNull T paramT) {
    throw new UnsupportedOperationException();
  }
  
  public <L> ddn<L> a(@NonNull L paramL) {
    throw new UnsupportedOperationException();
  }
  
  public void a(int paramInt) {
    throw new UnsupportedOperationException();
  }
  
  public abstract void a(@NonNull FragmentActivity paramFragmentActivity);
  
  public abstract void a(@NonNull cpv paramcpv);
  
  public abstract void a(@NonNull cpw paramcpw);
  
  public void a(dej paramdej) {
    throw new UnsupportedOperationException();
  }
  
  public boolean a(@NonNull cox<?> paramcox) {
    throw new UnsupportedOperationException();
  }
  
  public boolean a(ddz paramddz) {
    throw new UnsupportedOperationException();
  }
  
  public Context b() {
    throw new UnsupportedOperationException();
  }
  
  public <A extends cpe, T extends dan<? extends cqg, A>> T b(@NonNull T paramT) {
    throw new UnsupportedOperationException();
  }
  
  public void b(dej paramdej) {
    throw new UnsupportedOperationException();
  }
  
  public abstract void b(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public abstract boolean b(@NonNull cox<?> paramcox);
  
  public abstract boolean b(@NonNull cpv paramcpv);
  
  public abstract boolean b(@NonNull cpw paramcpw);
  
  public Looper c() {
    throw new UnsupportedOperationException();
  }
  
  @NonNull
  public abstract ConnectionResult c(@NonNull cox<?> paramcox);
  
  public abstract void c(@NonNull cpv paramcpv);
  
  public abstract void c(@NonNull cpw paramcpw);
  
  public void d() {
    throw new UnsupportedOperationException();
  }
  
  public abstract void e();
  
  public abstract ConnectionResult f();
  
  public abstract void g();
  
  public abstract void h();
  
  public abstract cpy<Status> i();
  
  public abstract boolean j();
  
  public abstract boolean k();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cpt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */