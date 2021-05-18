import android.content.Context;
import android.content.Intent;
import com.santander.app.PoupancaAplicacaoConfirmacaoActivity;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.dpp.DPPPreenchimentoActivity;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

public class fkl implements foh {
  public fkl(PoupancaAplicacaoConfirmacaoActivity paramPoupancaAplicacaoConfirmacaoActivity, fsy paramfsy) {}
  
  public void a(Object<Object, Object> paramObject) {
    if (PoupancaAplicacaoConfirmacaoActivity.b(this.b) != null && PoupancaAplicacaoConfirmacaoActivity.b(this.b).isShowing()) {
      PoupancaAplicacaoConfirmacaoActivity.b(this.b).cancel();
      PoupancaAplicacaoConfirmacaoActivity.a(this.b, null);
    } 
    this.a.d(PoupancaAplicacaoConfirmacaoActivity.d(this.b).d());
    this.a.a(PoupancaAplicacaoConfirmacaoActivity.e(this.b));
    PoupancaAplicacaoConfirmacaoActivity.a(this.b).a(this.a);
    Date date = new Date();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
    simpleDateFormat.format(date);
    gvb gvb = new gvb();
    ArrayList<gky> arrayList = new ArrayList();
    if (PoupancaAplicacaoConfirmacaoActivity.i(this.b).n()) {
      gvb.d(PoupancaAplicacaoConfirmacaoActivity.a(this.b).getString(2131298396));
    } else {
      gvb.d(PoupancaAplicacaoConfirmacaoActivity.a(this.b).getString(2131298398));
    } 
    arrayList.add(new gky("Transação:", "Aplicação"));
    arrayList.add(new gky("Titular:", PoupancaAplicacaoConfirmacaoActivity.i(this.b).j()));
    arrayList.add(new gky("CPF:", nai.c(PoupancaAplicacaoConfirmacaoActivity.i(this.b).e())));
    if (PoupancaAplicacaoConfirmacaoActivity.d(this.b).o() == null || PoupancaAplicacaoConfirmacaoActivity.d(this.b).o().equals("")) {
      paramObject = (Object<Object, Object>)PoupancaAplicacaoConfirmacaoActivity.d(this.b).c();
    } else {
      paramObject = (Object<Object, Object>)naq.c(PoupancaAplicacaoConfirmacaoActivity.i(this.b).o(), PoupancaAplicacaoConfirmacaoActivity.i(this.b).c());
    } 
    arrayList.add(new gky("Conta Poupança:", (String)paramObject));
    arrayList.add(new gky("Valor:", naj.f(PoupancaAplicacaoConfirmacaoActivity.i(this.b).k())));
    arrayList.add(new gky("Data Contábil:", nak.l(nak.r(PoupancaAplicacaoConfirmacaoActivity.a(this.b).c()))));
    gvb.b(arrayList);
    gvb.c(PoupancaAplicacaoConfirmacaoActivity.a(this.b).getString(2131296460));
    gvb.f(nak.l(nak.q(PoupancaAplicacaoConfirmacaoActivity.i(this.b).g())) + " - " + simpleDateFormat.format(date));
    gvb.e(PoupancaAplicacaoConfirmacaoActivity.i(this.b).b());
    gvb.f(true);
    gvb.k("Depósito Programado em Poupança");
    gvb.a(DPPPreenchimentoActivity.class);
    paramObject = (Object<Object, Object>)new HashMap<Object, Object>();
    paramObject.put("opcao", Integer.valueOf(0));
    gvb.a((HashMap)paramObject);
    gvb.i("telaApliPoupancaOK.end");
    gvb.j("apliPoupancaTitShare");
    gvb.l("InvestPoup.botaoDPP");
    gvb.l(true);
    Intent intent = new Intent((Context)PoupancaAplicacaoConfirmacaoActivity.a(this.b), ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", gvb);
    this.b.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */