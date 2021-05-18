import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Date;

public class mvu implements mvt {
  @Nullable
  private mup a;
  
  private msc b;
  
  private gvb c;
  
  public mvu(@NonNull mup parammup) {
    this.a = parammup;
    this.b = mse.l();
  }
  
  private ArrayList<gky> a(mrk parammrk) {
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("Conta Origem: ", parammrk.a()));
    arrayList.add(new gky("Nome Origem: ", parammrk.b()));
    arrayList.add(new gky("Conta Destino: ", parammrk.c()));
    arrayList.add(new gky("Nome Destino: ", parammrk.d()));
    arrayList.add(new gky("Banco Destino: ", parammrk.e()));
    arrayList.add(new gky("Tipo Conta: ", parammrk.f()));
    if (!parammrk.n())
      arrayList.add(new gky("CPF/CNPJ:", parammrk.k())); 
    if (parammrk.n()) {
      arrayList.add(new gky("Tipo Transferência: ", "Transferência entre contas"));
      arrayList.add(new gky("Valor: ", parammrk.h()));
      return arrayList;
    } 
    arrayList.add(new gky("Tipo Transferência: ", parammrk.g()));
    arrayList.add(new gky("Valor: ", parammrk.h()));
    return arrayList;
  }
  
  private gvb c() {
    String str;
    if (this.a == null)
      return null; 
    gvb gvb1 = new gvb();
    mrk mrk = this.b.k();
    gvb1.b(a(mrk));
    gvb1.c("Transferência");
    gvb1.d(false);
    gvb1.f(mrk.i());
    gvb1.e(mrk.j());
    if (mrk.g().equalsIgnoreCase("tef")) {
      str = "Transferência entre contas";
    } else {
      str = mrk.g();
    } 
    if (mrk.l()) {
      gvb1.d(str + " " + ((mum)this.a).getString(2131299081));
      gvb1.g("Comprovante - " + gvb1.j());
      return gvb1;
    } 
    if (mrk.m()) {
      gvb1.d(str + " " + ((mum)this.a).getString(2131299082));
      gvb1.g("Comprovante - " + gvb1.j());
      return gvb1;
    } 
    gvb1.d(str + " " + ((mum)this.a).getString(2131299083));
    gvb1.g("Comprovante - " + gvb1.j());
    return gvb1;
  }
  
  private gvb d() {
    gvb gvb1 = new gvb();
    mrk mrk = this.b.k();
    gvb1.c("Transferência");
    gvb1.f(gpl.a(new Date(), "dd/MM/yyyy HH:mm:ss"));
    gvb1.e("");
    gvb1.i("");
    gvb1.e(true);
    gvb1.d(false);
    gvb1.b(mrk.o());
    return gvb1;
  }
  
  public void a() {
    this.a = null;
  }
  
  public void a(Bundle paramBundle) {
    if (this.a == null)
      return; 
    int i = paramBundle.getInt("EXTRA_TRANSFER_STEP");
    if (i == 3) {
      this.a.c(2131299163);
    } else if (i == 1) {
      this.a.c(2131299164);
    } 
    this.c = c();
  }
  
  public void b() {
    if (this.a != null && this.c != null) {
      this.a.a(this.c);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mvu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */