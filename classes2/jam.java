import android.app.Activity;
import android.widget.EditText;
import java.util.List;

public class jam implements jal {
  private iyv a;
  
  private ivy b;
  
  public jam(iyv paramiyv, Activity paramActivity) {
    this.a = paramiyv;
    this.b = new ivz(this, paramActivity);
  }
  
  public void a() {
    this.b.a();
  }
  
  public void a(EditText paramEditText) {
    if (paramEditText.getText().toString().isEmpty() || paramEditText.getText().toString().length() < 14) {
      this.a.a(paramEditText);
      return;
    } 
    this.a.b(paramEditText);
  }
  
  public void a(Boolean paramBoolean) {
    this.a.a(paramBoolean);
  }
  
  public void a(Object paramObject) {
    this.b.a(paramObject);
  }
  
  public void a(String paramString) {
    this.a.a(paramString);
  }
  
  public void a(String paramString1, String paramString2) {
    if (paramString1.equals(paramString2)) {
      this.a.c();
      return;
    } 
    this.a.b();
  }
  
  public void a(List<iuz> paramList) {
    this.a.a(paramList);
  }
  
  public void b() {
    this.a.a();
  }
  
  public void b(Object paramObject) {
    this.a.a(paramObject);
  }
  
  public void b(String paramString) {
    this.b.a(paramString.substring(1, 3), paramString.substring(4).replace("-", "").trim());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jam.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */