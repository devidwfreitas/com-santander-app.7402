import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.annotation.NonNull;
import android.view.View;
import android.widget.RadioGroup;
import br.com.santander.uisdk.SantanderSwitch;
import com.santander.app.MinhaConta;
import com.santander.app.homenaologada.presentation.HomeActivity;
import java.util.List;

public class iuo implements iun {
  private ium a;
  
  private isa b;
  
  private String c;
  
  private int d;
  
  private int e;
  
  private Bitmap f;
  
  private Activity g;
  
  public iuo(ium paramium) {
    this.a = paramium;
    this.g = (Activity)this.a;
    this.a.a();
    this.b = new isb(this.g, this);
  }
  
  public void a() {}
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent) {
    boolean bool1;
    boolean bool2 = false;
    switch (paramInt1) {
      default:
        return;
      case 2:
      case 9920:
        this.b.f();
        return;
      case 3:
      case 4:
      case 5:
        bool1 = bool2;
        if (paramIntent != null) {
          bool1 = bool2;
          if (paramIntent.getBooleanExtra("showLogin", false))
            bool1 = true; 
        } 
        this.a.b(bool1);
        return;
      case 1122:
      case 1130:
        break;
    } 
    this.a.u();
  }
  
  public void a(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint, Activity paramActivity) {
    String str1;
    boolean bool;
    String str2 = mze.a(paramInt, paramArrayOfString, paramArrayOfint, paramActivity);
    if (!str2.equalsIgnoreCase("")) {
      str1 = str2.split("#")[0];
      bool = Boolean.valueOf(str2.split("#")[1]).booleanValue();
    } else {
      str1 = "";
      bool = false;
    } 
    if (!str1.equalsIgnoreCase("")) {
      mze.a(str1, paramInt, bool, paramActivity);
      return;
    } 
    if (paramInt == 4) {
      this.a.r();
      return;
    } 
    if (paramInt == 10) {
      if (paramArrayOfint[0] != -1) {
        this.a.i();
        return;
      } 
      this.a.a("Para utilizar o Localizador de Agências, habilite a permissão de localização.", true);
      return;
    } 
    if (paramInt == 13) {
      this.a.s();
      return;
    } 
  }
  
  public void a(DialogInterface paramDialogInterface, int paramInt) {
    SantanderSwitch santanderSwitch = (SantanderSwitch)((AlertDialog)paramDialogInterface).findViewById(2131758442);
    RadioGroup radioGroup = (RadioGroup)((AlertDialog)paramDialogInterface).findViewById(2131758434);
    paramInt = radioGroup.indexOfChild(radioGroup.findViewById(radioGroup.getCheckedRadioButtonId()));
    this.b.a(paramInt);
  }
  
  public void a(Bitmap paramBitmap) {
    this.f = paramBitmap;
    this.a.a(paramBitmap);
  }
  
  public void a(View paramView) {
    if (this.c != null && !this.c.isEmpty())
      this.a.f(); 
  }
  
  public void a(irz paramirz, View paramView, int paramInt) {
    switch (paramInt) {
      default:
        return;
      case 0:
        this.a.h();
        return;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        break;
    } 
    this.d = paramirz.b();
    this.e = paramirz.c();
    if (myo.a(this.d)) {
      this.a.d();
      return;
    } 
    if (this.d == 2131297592) {
      this.a.a(this.d);
      return;
    } 
    this.a.b();
  }
  
  public void a(String paramString) {
    Bitmap bitmap = BitmapFactory.decodeResource(((HomeActivity)this.a).getResources(), 2130837654);
    if (this.f == null || (this.f.equals(bitmap) && "".equals(paramString))) {
      this.c = "";
      return;
    } 
    this.c = paramString;
  }
  
  public void a(List<irz> paramList) {
    this.a.a(paramList);
  }
  
  public void a(boolean paramBoolean) {
    this.a.b(paramBoolean);
  }
  
  public void a(String[] paramArrayOfString) {
    this.a.a(paramArrayOfString);
  }
  
  public void b() {
    this.a.e();
    this.a.a(MinhaConta.b().getString(this.d), MinhaConta.b().getString(this.e));
  }
  
  public void b(View paramView) {
    this.a.g();
    this.a.a(this.c);
  }
  
  public void b(String paramString) {
    this.b.a(new iup(this, paramString));
  }
  
  public void c() {
    this.a.c();
    this.a.b(MinhaConta.b().getString(this.d));
  }
  
  public void d() {
    this.a.m();
  }
  
  public void e() {
    this.a.l();
  }
  
  public void f() {
    this.a.k();
  }
  
  public void g() {
    this.a.n();
  }
  
  public void h() {
    this.a.o();
  }
  
  public Context i() {
    return (Context)this.a;
  }
  
  public String j() {
    return this.b.h();
  }
  
  public void k() {
    this.b.a();
    this.b.b();
    this.b.c();
    this.b.a(this.a.p());
    this.b.g();
    this.b.d();
    n();
    a(false);
  }
  
  public void l() {
    this.b.i();
  }
  
  public void m() {
    this.a.r();
  }
  
  public void n() {
    this.a.q();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iuo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */