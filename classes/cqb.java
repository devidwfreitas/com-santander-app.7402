import android.os.Looper;
import com.google.android.gms.common.api.Status;

final class cqb<R extends cqg> extends dat<R> {
  private final R d;
  
  public cqb(R paramR) {
    super(Looper.getMainLooper());
    this.d = paramR;
  }
  
  protected R b(Status paramStatus) {
    if (paramStatus.h() != this.d.a().h())
      throw new UnsupportedOperationException("Creating failed results is not supported"); 
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */