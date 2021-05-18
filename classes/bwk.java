import android.os.Bundle;
import java.util.Iterator;

class bwk implements bnp<String> {
  bwk(bvy parambvy, Bundle paramBundle) {}
  
  public Object a(String paramString) {
    return this.a.get(paramString);
  }
  
  public Iterator<String> a() {
    return this.a.keySet().iterator();
  }
  
  public void a(String paramString, Object paramObject, bnq parambnq) {
    if (!bqq.a(this.a, paramString, paramObject))
      parambnq.a(new bhp("Unexpected value: " + paramObject.toString())); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */