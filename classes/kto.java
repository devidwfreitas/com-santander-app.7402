import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class kto {
  @eks(a = "termOrder")
  private String a;
  
  @eks(a = "termResponseList")
  private List<ktn> b;
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<ktn> paramList) {
    this.b = paramList;
  }
  
  public List<ktn> b() {
    return this.b;
  }
  
  public List<ktn> c() {
    if (!TextUtils.isEmpty(this.a)) {
      String[] arrayOfString = this.a.split(",");
      ArrayList<ktn> arrayList = new ArrayList();
      int j = arrayOfString.length;
      for (int i = 0; i < j; i++) {
        String str = arrayOfString[i];
        for (ktn ktn : this.b) {
          if (ktn.e() != null && ktn.e().equals(Integer.valueOf(str))) {
            ktn ktn1 = ktn.d();
            ktn1.a(true);
            arrayList.add(ktn1);
            arrayList.add(ktn);
            break;
          } 
        } 
      } 
      return arrayList;
    } 
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */