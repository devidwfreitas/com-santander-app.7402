import br.com.santander.uisdk.dropdown.SantanderDropDownView;

public abstract class ana<Conta extends and, Cartao extends amx> implements amt<anb> {
  public void a(Cartao paramCartao) {}
  
  public void a(Conta paramConta) {}
  
  public void a(SantanderDropDownView paramSantanderDropDownView, anb paramanb) {
    if (paramanb instanceof and) {
      a((Conta)paramanb);
      return;
    } 
    if (paramanb instanceof amx) {
      a((Cartao)paramanb);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ana.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */