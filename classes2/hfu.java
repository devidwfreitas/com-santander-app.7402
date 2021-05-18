import android.text.Spanned;

public class hfu extends hfn {
  public hfu(hfy paramhfy) {
    super(paramhfy);
  }
  
  public int a() {
    return 2;
  }
  
  public String b() {
    return "Custo Efetivo Total";
  }
  
  public String g() {
    return "empre-reneg-ler3";
  }
  
  public String h() {
    return "Custo Efetivo Total (CET).";
  }
  
  public bfj i() {
    bfj bfj = new bfj();
    bfj.a("CET a.a: ");
    bfj.a(this.a.J(), f());
    bfj.a("\n\n");
    bfj.a("Valor Financiado: ");
    bfj.a(this.a.A(), f());
    bfj.a("\n\n");
    bfj.a("Valor Liberado: ");
    bfj.a(this.a.k(), f());
    bfj.a("\n\n");
    bfj.a("Valor do IOF: ");
    bfj.a(this.a.G(), f());
    bfj.a("\n\n");
    bfj.a("Percentual do IOF: ");
    bfj.a(this.a.H(), f());
    bfj.a("\n\n");
    return bfj;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hfu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */