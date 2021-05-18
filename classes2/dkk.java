import com.google.android.gms.internal.zzato;
import java.util.Iterator;

public class dkk implements Iterator<String> {
  Iterator<String> a = zzato.a(this.b).keySet().iterator();
  
  public dkk(zzato paramzzato) {}
  
  public String a() {
    return this.a.next();
  }
  
  public boolean hasNext() {
    return this.a.hasNext();
  }
  
  public void remove() {
    throw new UnsupportedOperationException("Remove not supported");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */