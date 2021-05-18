import android.content.Context;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Calendar;

class qe implements View.OnClickListener {
  qe(pc parampc) {}
  
  public void onClick(View paramView) {
    if (pc.h(this.a).isShown())
      pc.j(this.a).d(pc.i(this.a).getText().toString()); 
    pc.k(this.a).b(new ArrayList());
    pc.k(this.a).b(pc.l(this.a));
    Log.e("CHECK", ((ace)pc.k(this.a).l().get(0)).h().toString());
    if (pc.m(this.a).isShown()) {
      Calendar calendar = Calendar.getInstance();
      if (pc.n(this.a).l() != null) {
        calendar.set(pc.o(this.a).k().get(1), pc.p(this.a).k().get(2), pc.q(this.a).k().get(5));
        calendar.add(5, pc.r(this.a).l().intValue());
      } else {
        calendar.set(pc.s(this.a).n().get(1), pc.t(this.a).n().get(2), pc.u(this.a).n().get(5));
        calendar.add(5, pc.v(this.a).o().intValue());
      } 
      String str = pc.a(this.a, Integer.valueOf(calendar.get(5))) + pc.a(this.a, Integer.valueOf(calendar.get(2) + 1)) + calendar.get(1);
      zy.b(this.a.e().getString(lg.tag_name_aplicar_comprovante_prazoVencimento, new Object[] { pc.w(this.a).u(), pc.x(this.a).f().j(), pc.y(this.a).f().k() }), str);
    } 
    zy.b(this.a.e().getString(lg.tag_name_aplicar_acao, new Object[] { pc.z(this.a).u(), pc.A(this.a).f().j(), pc.B(this.a).f().k() }), this.a.e().getString(lg.tag_valor_continuar));
    zs.a().e((Context)this.a.e(), pc.k(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\qe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */