import android.text.Spanned;

public class hfw extends hfn {
  public hfw(hfy paramhfy) {
    super(paramhfy);
  }
  
  private Object[] k() {
    return new Object[] { c(), a(16), e() };
  }
  
  public int a() {
    return 1;
  }
  
  public String g() {
    return "empre-reneg-ler2";
  }
  
  public String h() {
    return "Contrato de Renegociação.";
  }
  
  public bfj i() {
    Spanned spanned = a(this.a.M());
    bfj bfj = new bfj();
    bfj.a("CONTRATOS RENEGOCIADOS", k());
    bfj.a("\n\n");
    bfj.a("Números de contratos renegociados: ");
    bfj.a(String.valueOf(this.a.C()), f());
    bfj.a("\n\n");
    bfj.a("VALORES E JUROS", k());
    bfj.a("\n\n");
    bfj.a("Valor Renegociado: ");
    bfj.a(this.a.j(), f());
    bfj.a("\n\n");
    bfj.a("Quantidade de Parcelas: ");
    bfj.a(String.valueOf(this.a.q()), f());
    bfj.a("\n\n");
    bfj.a("Valor do Desconto: ");
    bfj.a(this.a.D(), f());
    bfj.a("\n\n");
    bfj.a("Valor das Parcelas: ");
    bfj.a(this.a.m(), f());
    bfj.a("\n\n");
    bfj.a("Dia de débito: ");
    bfj.a(String.valueOf(this.a.E()), f());
    bfj.a("\n\n");
    bfj.a("Vencimento 1ª parcela: ");
    bfj.a(this.a.F(), f());
    bfj.a("\n\n");
    bfj.a("Valor do IOF: ");
    bfj.a(this.a.G(), f());
    bfj.a("\n\n");
    bfj.a("Forma de pagamento: ");
    bfj.a(this.a.f(), f());
    bfj.a("\n\n");
    bfj.a("Taxa de juros mensal: ");
    bfj.a(this.a.I(), f());
    bfj.a("\n\n");
    bfj.a("CET: ");
    bfj.a(this.a.J(), f());
    bfj.a("\n\n");
    bfj.a("PAGAMENTOS E PARCELAS", k());
    bfj.a("\n\n");
    bfj.a("Números de Parcelas: ");
    bfj.a(String.valueOf(this.a.q()), f());
    bfj.a("\n\n");
    bfj.a("Vencimento 1ª parcela: ");
    bfj.a(this.a.F(), f());
    bfj.a("\n\n");
    bfj.a("Vencimento das Demais Parcelas: ");
    bfj.a(String.valueOf(this.a.E()), f());
    bfj.a("\n\n");
    bfj.a("Forma de pagamento: ");
    bfj.a(this.a.f(), f());
    bfj.a("\n\n");
    if (this.a.e() == 2) {
      bfj.a("Endereço de Cobrança: ");
      bfj.a(this.a.K(), f());
      bfj.a("\n\n");
      bfj.a((CharSequence)spanned);
      return bfj;
    } 
    bfj.a("Conta corrente: ");
    bfj.a(this.a.N(), f());
    bfj.a("\n\n");
    bfj.a((CharSequence)spanned);
    return bfj;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hfw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */