import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.emprestimo.creditopessoal.domain.CPError;
import java.security.InvalidParameterException;
import java.text.NumberFormat;
import java.util.Calendar;
import java.util.List;

public class hrv implements hru {
  private static final int a = 1;
  
  private static final int b = 2;
  
  private hqy c;
  
  private hpl d;
  
  private NumberFormat e;
  
  private Conta f;
  
  private float g;
  
  private String h;
  
  private String i;
  
  private String j;
  
  private int k;
  
  private List<String> l;
  
  private List<String> m;
  
  private boolean n = true;
  
  public hrv(hqy paramhqy) {
    this.c = paramhqy;
    this.d = hpp.m();
    this.e = hyx.b();
    this.m = this.d.c();
    m();
  }
  
  private void a(CPError paramCPError) {
    this.c.G();
    if (paramCPError != null && paramCPError.canShowMessage()) {
      this.c.o();
      this.c.q();
      this.c.Z();
      this.c.u();
      this.c.a(this.e.format(0L));
      this.c.f(paramCPError.getMessage());
      return;
    } 
    this.c.E();
  }
  
  private void a(hxm paramhxm, hxq paramhxq) {
    this.c.a(true);
    this.d.a(new hrx(this, paramhxm, paramhxq));
    this.c.C();
  }
  
  private void a(hxq paramhxq) {
    if (this.d.k()) {
      if (this.n) {
        this.n = false;
        if (this.d.l()) {
          this.c.S();
          this.c.d();
          return;
        } 
        this.c.T();
        e();
        return;
      } 
      if (this.d.l()) {
        this.c.X();
        return;
      } 
      this.c.Y();
      return;
    } 
    this.c.L();
    this.c.R();
    this.c.r();
  }
  
  private void a(hxr paramhxr) {
    if (this.d.j()) {
      this.c.U();
    } else {
      String str = this.e.format(paramhxr.getValorLimiteMax());
      this.c.a(str);
      this.c.n();
    } 
    this.c.G();
  }
  
  private void b(CPError paramCPError) {
    this.c.G();
    n();
    if (paramCPError != null && paramCPError.canShowMessage()) {
      this.c.f(paramCPError.getMessage());
      return;
    } 
    this.c.E();
  }
  
  private void b(hxm paramhxm, hxq paramhxq) {
    this.c.G();
    u();
    a(paramhxm, paramhxq);
    this.c.t();
    d();
  }
  
  private void c(int paramInt) {
    this.f = this.d.a(paramInt);
  }
  
  private void c(CPError paramCPError) {
    this.c.G();
    if (this.k == 2)
      this.c.B(); 
    this.c.u();
    if (paramCPError != null && paramCPError.canShowMessage()) {
      this.c.f(paramCPError.getMessage());
      return;
    } 
    this.c.E();
  }
  
  private void e(String paramString) {
    this.c.F();
    this.g = hyx.a(paramString);
    this.d.a(1, this.g, hyx.e("0"), hyx.e(this.i), new hrz(this));
  }
  
  private void m() {
    byte b;
    try {
      Intent intent = ((Activity)this.c).getIntent();
      if (intent != null) {
        b = intent.getIntExtra("extra_type_emprestimo", 3);
      } else {
        b = 3;
      } 
    } catch (Exception exception) {
      b = 3;
    } 
    this.d.d(b);
  }
  
  private void n() {
    this.c.a(0);
    this.c.Z();
    this.c.u();
    if (this.k == 2) {
      this.c.B();
      this.c.w();
      this.c.y();
      return;
    } 
    this.c.q();
  }
  
  private void o() {
    if (this.c.W()) {
      this.d.b(11);
      return;
    } 
    this.d.b(10);
  }
  
  private void p() {
    (new hsf()).a(this.c.a(), this.d.g(), this.d.h(), this.g, Integer.parseInt(this.h), new hrw(this));
  }
  
  private void q() {
    List<String> list = this.d.a();
    String[] arrayOfString = list.<String>toArray(new String[list.size()]);
    this.c.a(arrayOfString);
    c(0);
  }
  
  private void r() {
    this.l = this.d.b();
    String[] arrayOfString = this.l.<String>toArray(new String[this.l.size()]);
    this.c.b(arrayOfString);
    if (this.h != null) {
      int j = this.l.indexOf(this.h);
      int i = j;
      if (j == -1) {
        this.h = this.l.get(0);
        i = 0;
      } 
      this.c.a(i);
    } 
  }
  
  private void s() {
    String[] arrayOfString = this.m.<String>toArray(new String[this.m.size()]);
    this.c.c(arrayOfString);
    t();
  }
  
  private void t() {
    int i = Calendar.getInstance().get(5);
    if (i == 31) {
      i = 29;
    } else if (i == 1) {
      i = 30;
    } else {
      i--;
    } 
    i = this.m.indexOf(String.valueOf(i));
    if (i < 0)
      i = this.m.size() - 1; 
    this.i = this.m.get(i);
    this.c.b(i);
  }
  
  private void u() {
    List<String> list = this.d.d();
    String[] arrayOfString = list.<String>toArray(new String[list.size()]);
    this.c.d(arrayOfString);
  }
  
  private void v() {
    this.c.F();
    this.d.a(this.f, new hry(this));
  }
  
  private void w() {
    r();
    this.c.a(0);
    this.c.p();
    this.c.v();
    this.c.x();
    this.c.G();
  }
  
  private void x() {
    frq.d("CreditoFinanciamento_Emprestimos_Simulacao_Acao", "Simular");
    frq.d("CreditoFinanciamento_Emprestimos_Simulacao_Valor", naj.P(String.valueOf(this.g)));
    frq.d("CreditoFinanciamento_Emprestimos_Simulacao_Consignado_MesPrimeiroVencimento", this.j);
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_QuantidadeParcelas", this.h);
    this.c.F();
    this.d.a(2, this.g, hyx.e(this.h), hyx.e(this.i), new hsa(this));
  }
  
  public void a() {
    c(0);
    q();
    s();
    this.c.q();
    this.c.Z();
    this.c.u();
    c();
    v();
  }
  
  public void a(int paramInt) {
    Conta conta = this.d.a(paramInt);
    if (this.f.equals(conta))
      return; 
    this.n = true;
    this.f = conta;
    v();
  }
  
  public void a(String paramString) {
    try {
      this.g = this.d.a(paramString);
      this.n = true;
      e(paramString);
      return;
    } catch (InvalidParameterException invalidParameterException) {
      n();
      return;
    } catch (hov hov) {
      n();
      String str = this.e.format(hov.b());
      this.c.d(str);
      return;
    } catch (how how) {
      n();
      String str = this.e.format(how.b());
      this.c.e(str);
      return;
    } 
  }
  
  public void b() {}
  
  public void b(int paramInt) {
    if (paramInt == 2) {
      hxr hxr = this.d.f();
      if (hxr == null) {
        this.c.h();
        return;
      } 
      String str = this.e.format(hxr.getValorLimiteMax());
      this.c.a(str);
      if (this.k == 2) {
        p();
        return;
      } 
      return;
    } 
    if (this.k == 2) {
      this.c.L();
      return;
    } 
    this.c.finish();
  }
  
  public void b(String paramString) {
    if (this.h == null || !this.h.equals(paramString)) {
      frq.d("CreditoFinanciamento_Emprestimos_Simulacao_QuantidadeParcelas_Acao", paramString);
      this.n = true;
      this.h = paramString;
      if (!TextUtils.isEmpty(paramString)) {
        this.c.t();
        if (this.k == 2) {
          x();
          return;
        } 
        return;
      } 
      if (this.k == 2)
        this.c.B(); 
      this.c.Z();
      this.c.u();
      return;
    } 
  }
  
  public void c() {
    if (this.k == 1)
      return; 
    this.k = 1;
    this.c.j();
  }
  
  public void c(String paramString) {
    if (this.i == null || !this.i.equals(paramString)) {
      frq.d("CreditoFinanciamento_Emprestimos_Simulacao_CP_DiaVencimento_Acao", paramString);
      this.i = paramString;
      if (!TextUtils.isEmpty(this.h) && this.k == 2) {
        x();
        return;
      } 
    } 
  }
  
  public void d() {
    if (this.k == 2)
      return; 
    this.k = 2;
    this.c.k();
  }
  
  public void d(String paramString) {
    if (this.j != null && this.j.equals(paramString))
      return; 
    frq.d("CreditoFinanciamento_Emprestimos_Simulacao_Consignado_MesPrimeiroVencimento_Acao", paramString);
    this.j = paramString;
  }
  
  public void e() {
    int i = this.d.h().getTypeSecure();
    this.c.b();
    if (i == 0) {
      this.c.c();
      this.c.Z();
      return;
    } 
    if (i == 1) {
      this.c.e();
      this.c.ab();
      return;
    } 
    if (i == 2) {
      this.c.f();
      this.c.ac();
      return;
    } 
  }
  
  public void f() {
    if (this.k == 1) {
      t();
      x();
      return;
    } 
    o();
    if (this.c.W()) {
      if (this.d.i().isRefinanciamento()) {
        frq.d("CreditoFinanciamento_Emprestimos_Simulacao_Valor", naj.P(String.valueOf(this.g)));
        frq.d("CreditoFinanciamento_Emprestimos_Simulacao_QuantidadeParcelas", this.h);
        frq.d("CreditoFinanciamento_Emprestimos_Simulacao_Produto", "Refinanciamento");
        this.c.A();
        return;
      } 
      frq.d("CreditoFinanciamento_Emprestimos_Simulacao_Valor", naj.P(String.valueOf(this.g)));
      frq.d("CreditoFinanciamento_Emprestimos_Simulacao_QuantidadeParcelas", this.h);
      frq.d("CreditoFinanciamento_Emprestimos_Simulacao_CP_DiaVencimento", this.i);
      frq.d("CreditoFinanciamento_Emprestimos_Simulacao_Produto", "Consignado");
      this.c.z();
      return;
    } 
    frq.d("CreditoFinanciamento_Emprestimos_Simulacao_Valor", naj.P(String.valueOf(this.g)));
    frq.d("CreditoFinanciamento_Emprestimos_Simulacao_QuantidadeParcelas", this.h);
    frq.d("CreditoFinanciamento_Emprestimos_Simulacao_CP_DiaVencimento", this.i);
    frq.d("CreditoFinanciamento_Emprestimos_Simulacao_Produto", "CreditoPessoal");
    this.c.z();
  }
  
  public boolean g() {
    if (this.k == 2) {
      c();
      return false;
    } 
    return true;
  }
  
  public void h() {
    this.c.L();
  }
  
  public void i() {
    if (this.c == null)
      return; 
    o();
    this.c.ad();
  }
  
  public void j() {
    if (this.c.W()) {
      if (this.d.i().isRefinanciamento()) {
        frq.d("CreditoFinanciamento_Emprestimos_Contratacao_Continuar_Acao", "Refinanciamento");
        return;
      } 
      frq.d("CreditoFinanciamento_Emprestimos_Contratacao_Continuar_Acao", "Consignado");
      return;
    } 
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_Continuar_Acao", "CreditoPessoal");
  }
  
  public void k() {
    if (this.c.W()) {
      if (this.d.i().isRefinanciamento()) {
        frq.d("CreditoFinanciamento_Emprestimos_Contratacao_ContinuarProtegido_Acao", "Refinanciamento");
        return;
      } 
      frq.d("CreditoFinanciamento_Emprestimos_Contratacao_ContinuarProtegido_Acao", "Consignado");
      return;
    } 
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_ContinuarProtegido_Acao", "CreditoPessoal");
  }
  
  public void l() {
    if (this.c.W()) {
      if (this.d.i().isRefinanciamento()) {
        frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Acao", "Refinanciamento");
        return;
      } 
      frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Acao", "Consignado");
      return;
    } 
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Acao", "CreditoPessoal");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hrv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */