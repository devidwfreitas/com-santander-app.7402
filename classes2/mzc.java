import android.content.SharedPreferences;
import java.util.Set;

public class mzc implements SharedPreferences.Editor {
  protected SharedPreferences.Editor a;
  
  public mzc(mzb parammzb) {
    this.a = parammzb.b.edit();
  }
  
  public mzc a() {
    this.a.clear();
    return this;
  }
  
  public mzc a(String paramString) {
    this.a.remove(paramString);
    return this;
  }
  
  public mzc a(String paramString, float paramFloat) {
    this.a.putString(paramString, this.b.c(Float.toString(paramFloat)));
    return this;
  }
  
  public mzc a(String paramString, int paramInt) {
    this.a.putString(paramString, this.b.c(Integer.toString(paramInt)));
    return this;
  }
  
  public mzc a(String paramString, long paramLong) {
    this.a.putString(paramString, this.b.c(Long.toString(paramLong)));
    return this;
  }
  
  public mzc a(String paramString1, String paramString2) {
    this.a.putString(paramString1, this.b.c(paramString2));
    return this;
  }
  
  public mzc a(String paramString, boolean paramBoolean) {
    this.a.putString(paramString, this.b.c(Boolean.toString(paramBoolean)));
    return this;
  }
  
  public void apply() {
    this.a.commit();
  }
  
  public boolean commit() {
    return this.a.commit();
  }
  
  public SharedPreferences.Editor putStringSet(String paramString, Set<String> paramSet) {
    throw new RuntimeException("This class does not work with String Sets.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */