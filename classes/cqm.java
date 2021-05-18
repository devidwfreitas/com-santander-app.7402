import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.Iterator;

public class cqm extends Exception {
  private final ArrayMap<dth<?>, ConnectionResult> a;
  
  public cqm(ArrayMap<dth<?>, ConnectionResult> paramArrayMap) {
    this.a = paramArrayMap;
  }
  
  public ArrayMap<dth<?>, ConnectionResult> a() {
    return this.a;
  }
  
  public ConnectionResult a(cqn<? extends coy> paramcqn) {
    dth<? extends coy> dth = paramcqn.c();
    if (this.a.get(dth) != null) {
      boolean bool1 = true;
      csp.b(bool1, "The given API was not part of the availability request.");
      return (ConnectionResult)this.a.get(dth);
    } 
    boolean bool = false;
    csp.b(bool, "The given API was not part of the availability request.");
    return (ConnectionResult)this.a.get(dth);
  }
  
  public String getMessage() {
    ArrayList<String> arrayList = new ArrayList();
    Iterator<dth> iterator = this.a.keySet().iterator();
    boolean bool = true;
    while (iterator.hasNext()) {
      dth dth = iterator.next();
      ConnectionResult connectionResult = (ConnectionResult)this.a.get(dth);
      if (connectionResult.b())
        bool = false; 
      String str2 = String.valueOf(dth.a());
      String str1 = String.valueOf(connectionResult);
      arrayList.add((new StringBuilder(String.valueOf(str2).length() + 2 + String.valueOf(str1).length())).append(str2).append(": ").append(str1).toString());
    } 
    StringBuilder stringBuilder = new StringBuilder();
    if (bool) {
      stringBuilder.append("None of the queried APIs are available. ");
      stringBuilder.append(TextUtils.join("; ", arrayList));
      return stringBuilder.toString();
    } 
    stringBuilder.append("Some of the queried APIs are unavailable. ");
    stringBuilder.append(TextUtils.join("; ", arrayList));
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */