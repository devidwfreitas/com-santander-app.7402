import android.support.annotation.Nullable;
import android.text.TextUtils;

public class eit {
  private static final Object a = new Object();
  
  private final eiz b;
  
  public eit(eiz parameiz) {
    this.b = parameiz;
  }
  
  @Nullable
  public String a() {
    synchronized (a) {
      String str = this.b.a().getString("topic_operaion_queue", null);
      if (str != null) {
        String[] arrayOfString = str.split(",");
        if (arrayOfString.length > 1 && !TextUtils.isEmpty(arrayOfString[1]))
          return arrayOfString[1]; 
      } 
      return null;
    } 
  }
  
  public void a(String paramString) {
    synchronized (a) {
      String str1 = this.b.a().getString("topic_operaion_queue", "");
      String str2 = String.valueOf(",");
      paramString = (new StringBuilder(String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(paramString).length())).append(str1).append(str2).append(paramString).toString();
      this.b.a().edit().putString("topic_operaion_queue", paramString).apply();
      return;
    } 
  }
  
  public boolean b(String paramString) {
    synchronized (a) {
      String str2 = this.b.a().getString("topic_operaion_queue", "");
      String str1 = String.valueOf(",");
      String str3 = String.valueOf(paramString);
      if (str3.length() != 0) {
        str1 = str1.concat(str3);
      } else {
        str1 = new String(str1);
      } 
      if (str2.startsWith(str1)) {
        str1 = String.valueOf(",");
        paramString = String.valueOf(paramString);
        if (paramString.length() != 0) {
          paramString = str1.concat(paramString);
          paramString = str2.substring(paramString.length());
          this.b.a().edit().putString("topic_operaion_queue", paramString).apply();
          return true;
        } 
        paramString = new String(str1);
        paramString = str2.substring(paramString.length());
        this.b.a().edit().putString("topic_operaion_queue", paramString).apply();
        return true;
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_3} */
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eit.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */