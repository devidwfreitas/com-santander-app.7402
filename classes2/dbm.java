import com.google.android.gms.common.data.DataHolder;

public abstract class dbm<L> implements ddq<L> {
  private final DataHolder a;
  
  protected dbm(DataHolder paramDataHolder) {
    this.a = paramDataHolder;
  }
  
  public void a() {
    if (this.a != null)
      this.a.close(); 
  }
  
  public final void a(L paramL) {
    a(paramL, this.a);
  }
  
  protected abstract void a(L paramL, DataHolder paramDataHolder);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */