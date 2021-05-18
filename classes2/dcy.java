import android.content.Context;
import android.os.Looper;
import android.support.annotation.NonNull;

public class dcy<O extends coy> extends dbo {
  private final cqn<O> c;
  
  public dcy(cqn<O> paramcqn) {
    super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
    this.c = paramcqn;
  }
  
  public <A extends cpe, R extends cqg, T extends dan<R, A>> T a(@NonNull T paramT) {
    return (T)this.c.a((dan)paramT);
  }
  
  public void a(dej paramdej) {}
  
  public Context b() {
    return this.c.g();
  }
  
  public <A extends cpe, T extends dan<? extends cqg, A>> T b(@NonNull T paramT) {
    return (T)this.c.b((dan)paramT);
  }
  
  public void b(dej paramdej) {}
  
  public Looper c() {
    return this.c.f();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */