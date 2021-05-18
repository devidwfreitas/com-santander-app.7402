class kgp implements gkv<kgi> {
  kgp(kgn paramkgn) {}
  
  public void a(kgi paramkgi) {
    if (paramkgi == null) {
      kgn.a(this.a).a("Ocorreu um erro ao carregar as informações");
      return;
    } 
    if (paramkgi.getMensagemErro() != null) {
      kgn.a(this.a).a(paramkgi.getMensagemErro());
      return;
    } 
    if (!paramkgi.d().equalsIgnoreCase("OK")) {
      kgn.a(this.a).a(paramkgi.getMensagemErro());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kgp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */