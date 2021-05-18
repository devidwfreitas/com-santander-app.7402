import android.content.Context;
import java.util.List;

class lpa implements kxl<krg> {
  lpa(loz paramloz) {}
  
  public void a(krg paramkrg) {
    if (paramkrg.b().a().a().size() > 0) {
      ksq.INSTANCE.setDetailsResponse(paramkrg);
      loz.a(this.a).c().a(paramkrg);
      List list = paramkrg.b().a().a();
      loz.b(this.a).setContracts(list);
      loz.b(this.a).setCreditCards(paramkrg.a());
      if (loz.a(this.a).c().a() != null)
        loz.b(this.a).setAccountPos(loz.a(this.a).c().a().intValue()); 
      loz.b(this.a).setListener(new lpb(this));
      if (loz.a(this.a).c().q() != null) {
        if (paramkrg.a().contains(loz.a(this.a).c().q())) {
          loz.b(this.a).setCreditCardSelected(loz.a(this.a).c().q());
        } else {
          loz.a(this.a).c().a((ksd)null);
          loz.b(this.a).setCreditCardSelected(null);
        } 
      } else {
        loz.b(this.a).setCreditCardSelected(null);
      } 
      if (loz.a(this.a).c().p() != null) {
        if (list.contains(loz.a(this.a).c().p())) {
          loz.b(this.a).setContractsGetDetails(loz.a(this.a).c().p());
        } else {
          loz.a(this.a).c().a((kql)null);
          loz.b(this.a).setContractsGetDetails(null);
        } 
      } else {
        loz.b(this.a).setContractsGetDetails(null);
      } 
      loz.b(this.a).g();
    } else {
      mhj.c((Context)loz.a(this.a), this.a.getResources().getString(2131296867));
    } 
    loz.a(this.a).a(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */