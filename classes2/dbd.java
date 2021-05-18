import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;

public final class dbd<O extends coy> extends cqn<O> {
  private final cph b;
  
  private final dax c;
  
  private final ctn d;
  
  private final cpd<? extends dpx, dpy> e;
  
  public dbd(@NonNull Context paramContext, cox<O> paramcox, Looper paramLooper, @NonNull cph paramcph, @NonNull dax paramdax, ctn paramctn, cpd<? extends dpx, dpy> paramcpd) {
    super(paramContext, paramcox, paramLooper);
    this.b = paramcph;
    this.c = paramdax;
    this.d = paramctn;
    this.e = paramcpd;
    this.a.a(this);
  }
  
  public cph a(Looper paramLooper, dcs<O> paramdcs) {
    this.c.a(paramdcs);
    return this.b;
  }
  
  public dea a(Context paramContext, Handler paramHandler) {
    return new dea(paramContext, paramHandler, this.d, this.e);
  }
  
  public cph h() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */