import android.util.Log;
import java.util.List;

class uf implements tj {
  uf(ue paramue) {}
  
  public void a(abv paramabv) {
    tq tq = (tq)paramabv;
    if (tq.c() != null && tq.c().booleanValue()) {
      ue.a(this.a, new te(ue.a(this.a).getContext()));
      aca.a().a(tq.b().c());
      ou ou = new ou();
      ou.g(tq.b().d().a());
      ou.a(tq.b().d().b());
      aca.a().a(ou);
      aca aca = aca.a();
      if (tq.a() != null) {
        List list = tq.a().a();
      } else {
        ou = null;
      } 
      aca.a((List)ou);
      if (tq.b().a().booleanValue() && !te.a) {
        String str = tq.b().b().d().replace("{0}", "");
        ue.b(this.a).setText(str);
        ue.c(this.a).setText(str + System.getProperty("line.separator") + tq.b().b().b());
        ue.d(this.a).setVisibility(0);
        ue.e(this.a).setOnClickListener(new ug(this));
        ue.c(this.a).setOnClickListener(new uh(this));
      } 
      return;
    } 
    Log.d("InvestimentoV2", "Modulo Inativo: " + tq);
    ue.f(this.a);
  }
  
  public void a(aby paramaby) {
    Log.d("InvestimentoV2", "user info onFailure: " + paramaby);
    Log.d("HTTPRequester", "RESPONSE: " + paramaby);
    ue.f(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar\\uf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */