import android.util.Log;

public class aby extends abv {
  private String a;
  
  private String b;
  
  public aby(int paramInt, String paramString) {
    this.a = String.valueOf(paramInt);
    this.b = paramString;
  }
  
  public aby(String paramString1, String paramString2) {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  public aby(String paramString1, String paramString2, Exception paramException) {
    this.a = paramString1;
    this.b = paramString2;
    Log.e("ErrorStack", paramException.toString() + "", paramException);
  }
  
  public String a() {
    return this.b;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public String b() {
    return this.a;
  }
  
  public void b(String paramString) {
    this.a = paramString;
  }
  
  public String toString() {
    return "ErrorResponseModel{code='" + this.a + '\'' + ", message='" + this.b + '\'' + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aby.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */