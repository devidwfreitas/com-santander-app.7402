import android.content.SharedPreferences;
import java.util.Set;

public class akh implements SharedPreferences.Editor {
  protected SharedPreferences.Editor a;
  
  public akh(akg paramakg) {
    this.a = paramakg.b.edit();
  }
  
  public akh a() {
    this.a.clear();
    return this;
  }
  
  public akh a(String paramString) {
    this.a.remove(paramString);
    return this;
  }
  
  public akh a(String paramString, float paramFloat) {
    this.a.putString(paramString, this.b.c(Float.toString(paramFloat)));
    return this;
  }
  
  public akh a(String paramString, int paramInt) {
    this.a.putString(paramString, this.b.c(Integer.toString(paramInt)));
    return this;
  }
  
  public akh a(String paramString, long paramLong) {
    this.a.putString(paramString, this.b.c(Long.toString(paramLong)));
    return this;
  }
  
  public akh a(String paramString1, String paramString2) {
    this.a.putString(paramString1, this.b.c(paramString2));
    return this;
  }
  
  public akh a(String paramString, boolean paramBoolean) {
    this.a.putString(paramString, this.b.c(Boolean.toString(paramBoolean)));
    return this;
  }
  
  public void apply() {
    this.a.commit();
  }
  
  public boolean commit() {
    return this.a.commit();
  }
  
  public SharedPreferences.Editor putStringSet(String paramString, Set paramSet) {
    throw new RuntimeException("This class does not work with String Sets.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\akh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */