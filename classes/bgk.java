import android.content.SharedPreferences;
import java.util.Set;

public class bgk implements SharedPreferences.Editor {
  protected SharedPreferences.Editor a;
  
  public bgk(bgj parambgj) {
    this.a = parambgj.b.edit();
  }
  
  public void apply() {
    this.a.commit();
  }
  
  public SharedPreferences.Editor clear() {
    this.a.clear();
    return this;
  }
  
  public boolean commit() {
    return this.a.commit();
  }
  
  public SharedPreferences.Editor putBoolean(String paramString, boolean paramBoolean) {
    paramString = this.b.a(paramString);
    this.a.putString(paramString, this.b.b(Boolean.toString(paramBoolean)));
    return this;
  }
  
  public SharedPreferences.Editor putFloat(String paramString, float paramFloat) {
    paramString = this.b.a(paramString);
    this.a.putString(paramString, this.b.b(Float.toString(paramFloat)));
    return this;
  }
  
  public SharedPreferences.Editor putInt(String paramString, int paramInt) {
    paramString = this.b.a(paramString);
    this.a.putString(paramString, this.b.b(Integer.toString(paramInt)));
    return this;
  }
  
  public SharedPreferences.Editor putLong(String paramString, long paramLong) {
    paramString = this.b.a(paramString);
    this.a.putString(paramString, this.b.b(Long.toString(paramLong)));
    return this;
  }
  
  public SharedPreferences.Editor putString(String paramString1, String paramString2) {
    paramString1 = this.b.a(paramString1);
    this.a.putString(paramString1, this.b.b(paramString2));
    return this;
  }
  
  public SharedPreferences.Editor putStringSet(String paramString, Set paramSet) {
    this.b.a(paramString);
    throw new RuntimeException("");
  }
  
  public SharedPreferences.Editor remove(String paramString) {
    paramString = this.b.a(paramString);
    this.a.remove(paramString);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */