import android.content.Context;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.santander.app.emprestimo.ServicoIndisponivelActivity;
import com.santander.app.emprestimo.chat.presentation.EmpChatActivity;
import java.util.HashMap;

public class hyb implements hya {
  private static final String a = "EmpElegibilidadeService";
  
  private static hyb b;
  
  private mip c = (mip)miq.C();
  
  private hxo d;
  
  private hqa e = new hqd();
  
  private hgc f = hgh.f();
  
  private hwo g = new hwu();
  
  private HashMap<Integer, Boolean> h;
  
  private hyb() {
    hkr hkr = this.c.f().u();
    this.d = hkr.a();
    if (this.d == null) {
      hxo hxo1 = new hxo();
      this.d = hxo1;
      hkr.a(hxo1);
    } 
    this.h = new HashMap<Integer, Boolean>();
  }
  
  private hxk a(@Nullable hxk paramhxk, hyq paramhyq, boolean paramBoolean) {
    hxk hxk1 = paramhxk;
    if (paramhxk == null)
      hxk1 = new hxk(); 
    if (paramBoolean) {
      hxk1.c("S");
      hxk1.a(paramhyq.b());
      hxk1.b(paramhyq.c());
      hxk1.d(paramhyq.d());
      return hxk1;
    } 
    hxk1.c("N");
    return hxk1;
  }
  
  private void a(hxy paramhxy) {
    if (a(3)) {
      if (c()) {
        paramhxy.a(9);
        return;
      } 
      if (b() || a()) {
        paramhxy.a(3);
        return;
      } 
      if (d() || e()) {
        paramhxy.a(12);
        return;
      } 
      paramhxy.a();
      return;
    } 
    a(new hyd(this, paramhxy), false);
  }
  
  private void a(hxy paramhxy, boolean paramBoolean) {
    if (a(9)) {
      if (c()) {
        paramhxy.a(9);
        return;
      } 
      if (d()) {
        paramhxy.a(12);
        return;
      } 
      if (e()) {
        paramhxy.a(13);
        return;
      } 
      paramhxy.a();
      return;
    } 
    if (this.d.k()) {
      this.f.a(new hyk(this, paramhxy, paramBoolean));
      return;
    } 
    this.d.j();
    if (paramBoolean) {
      d(paramhxy);
      return;
    } 
    paramhxy.a();
  }
  
  private hxy b(@hyr int paramInt, hxy paramhxy) {
    return new hyc(this, paramInt, paramhxy);
  }
  
  private void b(hxy paramhxy) {
    if (a(10)) {
      if (a()) {
        paramhxy.a(10);
        return;
      } 
      paramhxy.a();
      return;
    } 
    (new hxx(new hyi(this, paramhxy))).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
  }
  
  private void c(hxy paramhxy) {
    if (a(11)) {
      if (b()) {
        paramhxy.a(11);
        return;
      } 
      paramhxy.a();
      return;
    } 
    this.e.a(new hyj(this, paramhxy));
  }
  
  private void d(hxy paramhxy) {
    if (a(12)) {
      if (d()) {
        paramhxy.a(12);
        return;
      } 
      if (e()) {
        paramhxy.a(13);
        return;
      } 
      paramhxy.a();
      return;
    } 
    this.g.a(new hyl(this, paramhxy));
  }
  
  private void e(hxy paramhxy) {
    if (a(7)) {
      if (f()) {
        paramhxy.a(7);
        return;
      } 
      paramhxy.a();
      return;
    } 
    (new hxz(new hym(this, paramhxy))).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
  }
  
  private void f(hxy paramhxy) {
    if (a(8)) {
      if (g()) {
        paramhxy.a(8);
        return;
      } 
      paramhxy.a();
      return;
    } 
    (new hyo(new hyn(this, paramhxy))).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
  }
  
  public static void i() {
    b = null;
  }
  
  public static hya j() {
    if (b == null)
      b = new hyb(); 
    return b;
  }
  
  public void a(@hyr int paramInt, @NonNull hxy paramhxy) {
    paramhxy = b(paramInt, paramhxy);
    switch (paramInt) {
      default:
        throw new IllegalArgumentException("Tipo de elegibilidade inválida");
      case 3:
        a(paramhxy);
        return;
      case 10:
        b(paramhxy);
        return;
      case 11:
        c(paramhxy);
        return;
      case 9:
      case 12:
      case 13:
        a(paramhxy, true);
        return;
      case 7:
        e(paramhxy);
        return;
      case 8:
        break;
    } 
    f(paramhxy);
  }
  
  public void a(Context paramContext, @hyr int paramInt) {
    EmpChatActivity.a(paramContext, paramInt);
  }
  
  public boolean a() {
    return !TextUtils.isEmpty(this.d.a());
  }
  
  public boolean a(@hyr int paramInt) {
    return (this.h.containsKey(Integer.valueOf(paramInt)) && ((Boolean)this.h.get(Integer.valueOf(paramInt))).booleanValue());
  }
  
  public void b(Context paramContext, @hyr int paramInt) {
    ServicoIndisponivelActivity.a(paramContext, paramInt);
  }
  
  public boolean b() {
    return (this.d.h() != null && this.d.h().isEligivel());
  }
  
  public boolean c() {
    return this.d.k();
  }
  
  public boolean d() {
    return this.d.l();
  }
  
  public boolean e() {
    return this.d.m();
  }
  
  public boolean f() {
    return (this.d.e() != null && this.d.e().c().equalsIgnoreCase("S"));
  }
  
  public boolean g() {
    return (this.d.f() != null && this.d.f().c().equalsIgnoreCase("S"));
  }
  
  public void h() {
    this.h.clear();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hyb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */