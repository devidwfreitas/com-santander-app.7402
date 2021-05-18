import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Status;

public final class dtd extends dtb {
  public final ddv<cpe, ?> c;
  
  public final deq<cpe, ?> d;
  
  public dtd(ddw paramddw, egw<Void> paramegw) {
    super(3, paramegw);
    this.c = paramddw.a;
    this.d = paramddw.b;
  }
  
  public void b(dcs<?> paramdcs) {
    if (this.c.a() != null)
      paramdcs.c().put(this.c.a(), new ddw(this.c, this.d)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dtd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */