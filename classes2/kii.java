import java.util.Vector;

class kii implements gkw<kht> {
  kii(kig paramkig) {}
  
  public void a(kht paramkht) {
    if (paramkht == null) {
      kig.a(this.a).a("Ocorreu um erro ao carregar as informações");
    } else if (paramkht == null || paramkht.a() == null || paramkht.a().isEmpty()) {
      if (paramkht.getMensagemErro() != null || "".equals(paramkht.getMensagemErro())) {
        kig.a(this.a).a(paramkht.getMensagemErro());
      } else {
        kig.a(this.a).a("Erro ao buscar operadoras. Tente novamente mais tarde");
      } 
    } else {
      kig.a(this.a, new khx());
      kig.a(this.a, new Vector());
      for (khw khw : paramkht.a()) {
        fvf fvf = new fvf();
        fvf.a(khw.a());
        fvf.b(khw.b());
        fvf.c(khw.c());
        fvf.d(khw.d());
        fvf.e(khw.e());
        fvf.f(khw.f());
        kig.b(this.a).add(fvf);
      } 
      kig.c(this.a).a(kig.b(this.a));
      miq.C().f().a(kig.c(this.a));
      kig.d(this.a);
    } 
    kig.a(this.a).b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kii.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */