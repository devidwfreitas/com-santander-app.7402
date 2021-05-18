import android.app.Activity;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.santander.app.MinhaConta;
import com.santander.app.transfergolden.presentation.ExtensionActivity;

public class mva implements msd, muz {
  @Nullable
  private msz a;
  
  private msc b;
  
  private String c;
  
  public mva(@NonNull msz parammsz) {
    this.a = parammsz;
    this.b = mse.a((Activity)parammsz);
  }
  
  private void b(Intent paramIntent) {
    if (this.a == null)
      return; 
    this.c = paramIntent.getStringExtra("EXTRA_CLIPBOARD_TEXT");
    if (this.b.c()) {
      e();
      return;
    } 
    this.a.a();
  }
  
  private void e() {
    if (this.a == null)
      return; 
    this.a.a(((ExtensionActivity)this.a).getString(2131299158));
    this.b.a(this.c, this);
  }
  
  public void a() {
    if (this.a == null)
      return; 
    this.a.g();
    this.a.e();
  }
  
  public void a(int paramInt) {
    this.b.a(paramInt);
    e();
  }
  
  public void a(Intent paramIntent) {
    if (this.a == null)
      return; 
    this.a.setTitle("");
    this.a.a(((ExtensionActivity)this.a).getString(2131299158));
    myn.a(MinhaConta.a(), new mvb(this, paramIntent));
  }
  
  public void a(Exception paramException) {
    if (this.a == null)
      return; 
    this.a.e();
    this.a.a(paramException.getMessage(), new mvc(this));
  }
  
  public void a(mrp parammrp, boolean paramBoolean) {
    if (this.a == null)
      return; 
    if (paramBoolean) {
      this.a.h();
    } else {
      this.a.i();
    } 
    this.a.e();
  }
  
  public void a(boolean paramBoolean) {
    if (this.a == null)
      return; 
    if (this.b.d()) {
      this.a.c(paramBoolean);
      return;
    } 
    this.a.k();
  }
  
  public void b() {
    if (this.a == null)
      return; 
    this.a.e();
    this.a.k();
  }
  
  public void c() {
    this.a = null;
    MinhaConta.b(false);
    jcd.a();
  }
  
  public void d() {
    if (this.a == null)
      return; 
    if (this.b.a().a()) {
      this.a.setTitle(2131299171);
      return;
    } 
    this.a.setTitle(2131299170);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mva.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */