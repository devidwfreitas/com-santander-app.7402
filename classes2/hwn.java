import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.List;

public class hwn implements hvl, hvm, hwm {
  @Nullable
  private hwa a;
  
  private hvk b;
  
  private String c;
  
  private String d;
  
  public hwn(@NonNull hwa paramhwa) {
    this.a = paramhwa;
    this.b = hvn.e();
  }
  
  private void c(hxn paramhxn) {
    if (this.a == null)
      return; 
    List<String> list = this.b.a();
    int i = list.indexOf(String.format("%02d", new Object[] { Integer.valueOf(paramhxn.m()) }));
    if (i == -1)
      i = list.size() - 1; 
    this.c = list.get(i);
    this.a.b(list);
    this.a.a(i);
  }
  
  private void d(hxn paramhxn) {
    if (this.a == null)
      return; 
    List<String> list = this.b.b();
    int i = list.indexOf(String.format("%01d", new Object[] { Integer.valueOf(paramhxn.o()) }));
    if (i == -1)
      i = list.size() - 1; 
    this.d = list.get(i);
    this.a.c(list);
    this.a.b(i);
  }
  
  public void a() {
    if (this.a == null)
      return; 
    this.a.a();
    hxi.b(this.b.c());
  }
  
  public void a(Intent paramIntent) {
    if (this.a == null)
      return; 
    this.a.c();
    this.b.a(this);
  }
  
  public void a(hur paramhur) {
    if (this.a == null)
      return; 
    this.a.d();
    this.a.a(paramhur.getMessage(), false);
  }
  
  public void a(hxn paramhxn) {
    if (this.a == null)
      return; 
    this.a.d();
    this.a.a(paramhxn);
    this.a.a(paramhxn.k());
  }
  
  public void a(String paramString) {
    if (this.a == null || (this.c != null && this.c.equals(paramString)))
      return; 
    this.c = paramString;
    this.a.c();
    this.b.a(Integer.parseInt(this.d), Integer.parseInt(paramString), this);
    hxi.a(this.b.c(), paramString);
  }
  
  public void b() {
    if (this.a == null)
      return; 
    this.a.b();
    hxi.c(this.b.c());
  }
  
  public void b(hur paramhur) {
    if (this.a == null)
      return; 
    this.a.d();
    String str = paramhur.getMessage();
    if (!TextUtils.isEmpty(str)) {
      this.a.a(str, true);
      return;
    } 
    this.a.e();
  }
  
  public void b(hxn paramhxn) {
    if (this.a == null)
      return; 
    this.a.d();
    this.a.a(paramhxn);
    this.a.a(paramhxn.k());
    c(paramhxn);
    d(paramhxn);
    hxi.a(paramhxn);
  }
  
  public void b(String paramString) {
    if (this.a == null || (this.d != null && this.d.equals(paramString)))
      return; 
    this.d = paramString;
    this.a.c();
    this.b.a(Integer.parseInt(paramString), Integer.parseInt(this.c), this);
    hxi.b(this.b.c(), paramString);
  }
  
  public void c() {
    if (this.a == null)
      return; 
    this.a.f();
    hxi.d(this.b.c());
  }
  
  public void d() {
    this.a = null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hwn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */