import android.app.Activity;
import java.util.ArrayList;

public class jil implements jeo, jik {
  private Activity a;
  
  private jgd b;
  
  private jen c;
  
  private jdx d;
  
  public jil(Activity paramActivity, jgd paramjgd) {
    this.a = paramActivity;
    this.b = paramjgd;
    this.c = new jep(paramActivity, this);
  }
  
  public void a() {
    this.b.a(this.a.getResources().getString(2131298054));
  }
  
  public void a(gvb paramgvb) {
    if (this.b != null) {
      if (this.d.k())
        this.c.a(this.d); 
      paramgvb.u(true);
      frq.d("Investimentos_Fundos_Aplicar_Data", this.d.m());
      frq.d("Investimentos_Fundos_Aplicar_Valor", this.d.l());
      this.b.a(paramgvb);
    } 
  }
  
  public void a(String paramString) {
    this.b.b(paramString);
  }
  
  public void a(jdi paramjdi) {
    this.b.a();
  }
  
  public void a(jdx paramjdx) {
    ArrayList<jdy> arrayList = new ArrayList();
    arrayList.add(new jdy("Fundo", paramjdx.M()));
    switch (jim.a[paramjdx.t().ordinal()]) {
      default:
        this.b.a(arrayList);
        this.b.b();
        return;
      case 1:
        arrayList.add(new jdy("Conta Fundo", "Nova"));
        arrayList.add(new jdy("Valor", "R$ " + paramjdx.l()));
        arrayList.add(new jdy("Data da Aplicação", paramjdx.m()));
        arrayList.add(new jdy("Conversão em Cotas", paramjdx.ac()));
      case 2:
        arrayList.add(new jdy("Conta Fundo", paramjdx.c()));
        arrayList.add(new jdy("Valor", "R$ " + paramjdx.l()));
        arrayList.add(new jdy("Data da Aplicação", paramjdx.m()));
        arrayList.add(new jdy("Conversão em Cotas", paramjdx.ac()));
      case 3:
        break;
    } 
    arrayList.add(new jdy("Conta Fundo", paramjdx.c()));
    arrayList.add(new jdy("Transação", paramjdx.f()));
    arrayList.add(new jdy("Valor Resgatado", "R$ " + paramjdx.l()));
    arrayList.add(new jdy("Data do Resgate", paramjdx.m()));
    arrayList.add(new jdy("Crédito em Conta", paramjdx.ab()));
    arrayList.add(new jdy("Conversão em Cotas", paramjdx.aa()));
  }
  
  public void a(jdx paramjdx, boolean paramBoolean) {
    this.d = paramjdx;
    if (paramBoolean) {
      this.c.b(paramjdx, paramBoolean);
      return;
    } 
    this.c.a(paramjdx, paramBoolean);
  }
  
  public void a(jej paramjej) {}
  
  public void b() {
    this.c.a(this.d);
  }
  
  public void b(gvb paramgvb) {
    paramgvb.u(true);
    if (this.b != null)
      this.b.a(paramgvb); 
  }
  
  public void b(String paramString) {
    this.c.a(paramString);
  }
  
  public void b(jdi paramjdi) {
    this.b.a(paramjdi.getMensagemErro());
  }
  
  public void b(jdx paramjdx, boolean paramBoolean) {
    this.d = paramjdx;
    if (paramBoolean) {
      this.c.d(paramjdx, paramBoolean);
      return;
    } 
    this.c.c(paramjdx, paramBoolean);
  }
  
  public void b(jej paramjej) {}
  
  public void c(gvb paramgvb) {
    paramgvb.v(true);
    frq.d("Investimentos_Fundos_Resgate_Data", this.d.m());
    if (this.d.f().equals(Integer.valueOf(2131297995))) {
      frq.d("Investimentos_Fundos_Resgate_Tipo", "Valor Total");
      frq.d("Investimentos_Fundos_Resgate_Valor", this.d.e());
    } else {
      frq.d("Investimentos_Fundos_Resgate_Tipo", "Valor Parcial");
      frq.d("Investimentos_Fundos_Resgate_Valor", this.d.l());
    } 
    if (this.b != null)
      this.b.a(paramgvb); 
  }
  
  public void c(jdi paramjdi) {
    this.b.a();
  }
  
  public void d(gvb paramgvb) {
    paramgvb.v(true);
    if (this.b != null)
      this.b.a(paramgvb); 
  }
  
  public void d(jdi paramjdi) {
    this.b.a(paramjdi.getMensagemErro());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */