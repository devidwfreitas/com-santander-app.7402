import android.app.Activity;
import com.santander.app.contacorrente.domain.Conta;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class mpv implements mmp, mpu {
  private Activity a;
  
  private mnw b;
  
  private mmo c;
  
  public mpv(mnw parammnw) {
    this.a = (Activity)parammnw;
    this.b = parammnw;
    this.c = new mmq(this.a, this);
  }
  
  private gvb a(mlb parammlb, boolean paramBoolean) {
    gvb gvb = new gvb();
    if (paramBoolean) {
      gvb.f("");
      gvb.e("");
    } else {
      gvb.f((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
      gvb.e(parammlb.a());
    } 
    gvb.d(false);
    gvb.e(paramBoolean);
    gvb.c("Transferência programada");
    if (!paramBoolean) {
      gvb.d("Transferência programada excluída com sucesso");
      gvb.g("Transferência programada - Exclusão");
      a(gvb, paramBoolean);
      return gvb;
    } 
    gvb.d("Transferência programada");
    gvb.b("Erro ao excluir transferência programada");
    gvb.g("Transferência programada - Exclusão");
    a(gvb, paramBoolean);
    return gvb;
  }
  
  private void a(gvb paramgvb, boolean paramBoolean) {
    mkz mkz = this.b.c();
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("Conta de Origem: ", naq.c(mkz.b(), mkz.e())));
    arrayList.add(new gky("Nome: ", miq.C().f().j(), true));
    arrayList.add(new gky("Conta de Destino: ", naq.c(mkz.a(), mkz.d())));
    arrayList.add(new gky("Nome: ", mkz.h(), true));
    arrayList.add(new gky("Banco: ", mkz.c()));
    arrayList.add(new gky("Tipo de Conta: ", mkz.n()));
    arrayList.add(new gky("ISPB: ", mkz.j()));
    arrayList.add(new gky("Finalidade: ", mkz.i(), true));
    arrayList.add(new gky("Tipo de Transferência: ", mkz.o(), true));
    arrayList.add(new gky("Data de Início: ", mkz.g()));
    arrayList.add(new gky("Periodicidade: ", mkz.l()));
    arrayList.add(new gky("Nº de Vezes: ", mkz.m()));
    arrayList.add(new gky("Valor: ", NumberFormat.getCurrencyInstance().format(Double.parseDouble(mkz.p()))));
    paramgvb.b(arrayList);
  }
  
  public void a() {
    gvb gvb = a((mlb)null, false);
    this.b.a(gvb);
  }
  
  public void a(Conta paramConta, mlr parammlr) {
    this.c.a(paramConta, parammlr);
  }
  
  public void a(String paramString) {}
  
  public void a(mkz parammkz) {
    this.b.a(parammkz);
  }
  
  public void a(mlb parammlb) {
    gvb gvb = a(parammlb, false);
    this.b.a(gvb);
  }
  
  public void a(mlr parammlr) {
    this.c.a(parammlr);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mpv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */