import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public class hrq implements hrp {
  @Nullable
  private hqo a;
  
  private hpd b;
  
  public hrq(@NonNull hqo paramhqo) {
    this.a = paramhqo;
    this.b = new hpg();
  }
  
  private void e() {
    if (this.a == null)
      return; 
    this.a.a("Pagamento de até R$ 140 mil em caso de morte ou invalidez, para quitar a dívida em aberto", true, false);
    this.a.a("Se seu empréstimo for quitado antes, garantimos até R$ 140 mil para sua família, em caso de morte ou invalidez", true, false);
    this.a.a("Sorteios mensais de R$ 20 mil durante 12 meses", true, false);
  }
  
  private void f() {
    if (this.a == null)
      return; 
    this.a.a("Pagamento de até R$ 100 mil em caso de morte ou invalidez, para quitar a dívida em aberto", true, false);
    this.a.a("Se seu empréstimo for quitado antes, garantimos até R$ 100 mil para sua família, em caso de morte ou invalidez", true, false);
  }
  
  private void g() {
    if (this.a == null)
      return; 
    this.a.a("Pagamento de até 3 parcelas do seu empréstimo limitadas a R$ 3 mil, em caso de desemprego involuntário", true, false);
    this.a.a("Pagamento de até R$ 100 mil em caso de morte ou invalidez, para quitar a dívida em aberto", true, false);
    this.a.a("Se seu empréstimo for quitado antes, garantimos até R$ 100 mil para sua família, em caso de morte ou invalidez", true, false);
  }
  
  private void h() {
    if (this.a == null)
      return; 
    if (this.b.b().isRefinanciamento()) {
      this.a.f();
      return;
    } 
    this.a.e();
  }
  
  private void i() {
    if (this.b.b().getType() == 11) {
      if (this.b.b().isRefinanciamento()) {
        frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Popup_Acao", "Refinanciamento");
        return;
      } 
      frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Popup_Acao", "Consignado");
      return;
    } 
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Popup_Acao", "CreditoPessoal");
  }
  
  public void a() {
    if (this.a == null)
      return; 
    i();
    this.a.b();
    this.a.c();
    this.b.a(new hrr(this));
  }
  
  public void b() {
    this.a = null;
  }
  
  public void c() {
    if (this.a == null)
      return; 
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Popup_Acao", "Manter");
    if (this.b.a()) {
      h();
      return;
    } 
    this.a.c();
    this.b.a(true, new hrs(this));
  }
  
  public void d() {
    if (this.a == null)
      return; 
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Popup_Acao", "Excluir");
    if (!this.b.a()) {
      h();
      return;
    } 
    this.a.c();
    this.b.a(false, new hrt(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hrq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */