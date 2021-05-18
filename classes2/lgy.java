import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;

public class lgy implements kxl<ktp> {
  public lgy(MyInsurancesV2Activity paramMyInsurancesV2Activity, int paramInt, kud paramkud) {}
  
  public void a(ktp paramktp) {
    if (!this.c.isFinishing() && MyInsurancesV2Activity.i(this.c) == this.a) {
      MyInsurancesV2Activity.h(this.c).setState(aor.CONTENT);
      if (paramktp != null) {
        if (MyInsurancesV2Activity.n(this.c) && !this.c.a(this.b))
          MyInsurancesV2Activity.o(this.c); 
        MyInsurancesV2Activity.a(this.c, paramktp);
        MyInsurancesV2Activity.j(this.c).setText(mhj.a(String.valueOf(MyInsurancesV2Activity.d(this.c).x())));
        if (MyInsurancesV2Activity.p(this.c).getVisibility() == 0)
          MyInsurancesV2Activity.q(this.c).setText(this.c.a()); 
        if (this.b.d() != null) {
          if (mgt.f(mhj.m(this.b.d().p()).replaceAll(" ", "").toLowerCase())) {
            MyInsurancesV2Activity.b(this.c, this.b.b().a());
            return;
          } 
          MyInsurancesV2Activity.a(this.c, false);
          return;
        } 
        MyInsurancesV2Activity.a(this.c, false);
        return;
      } 
      MyInsurancesV2Activity.r(this.c).setState(aor.ERROR);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lgy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */