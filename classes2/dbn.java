import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

public abstract class dbn implements cqe, cqg {
  protected final Status a;
  
  protected final DataHolder b;
  
  protected dbn(DataHolder paramDataHolder, Status paramStatus) {
    this.a = paramStatus;
    this.b = paramDataHolder;
  }
  
  public Status a() {
    return this.a;
  }
  
  public void b() {
    if (this.b != null)
      this.b.close(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */