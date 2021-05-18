import com.google.android.gms.common.api.Scope;
import java.util.Set;

public final class cwf {
  public static String[] a(Set<Scope> paramSet) {
    csp.a(paramSet, "scopes can't be null.");
    return a(paramSet.<Scope>toArray(new Scope[paramSet.size()]));
  }
  
  public static String[] a(Scope[] paramArrayOfScope) {
    csp.a(paramArrayOfScope, "scopes can't be null.");
    String[] arrayOfString = new String[paramArrayOfScope.length];
    for (int i = 0; i < paramArrayOfScope.length; i++)
      arrayOfString[i] = paramArrayOfScope[i].a(); 
    return arrayOfString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */