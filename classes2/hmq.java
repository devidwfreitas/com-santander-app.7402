import android.os.Build;
import android.text.Html;
import android.text.Spanned;

class hmq implements hgb {
  hmq(hmp paramhmp, String paramString) {}
  
  public int a() {
    return 0;
  }
  
  public String b() {
    return "Termos e Condições";
  }
  
  public bfj c() {
    if (Build.VERSION.SDK_INT >= 24) {
      String str1 = String.valueOf(Html.fromHtml(this.a, 0));
      return new bfj(str1);
    } 
    String str = String.valueOf(Html.fromHtml(this.a));
    return new bfj(str);
  }
  
  public String g() {
    return "";
  }
  
  public String h() {
    return "";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hmq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */