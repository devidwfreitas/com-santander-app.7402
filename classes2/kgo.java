class kgo implements gkv<kgk> {
  kgo(kgn paramkgn) {}
  
  public void a(kgk paramkgk) {
    if (paramkgk == null) {
      kgn.a(this.a).a("Ocorreu um erro ao carregar as informações");
      return;
    } 
    if (!paramkgk.b().equalsIgnoreCase("")) {
      String[] arrayOfString = paramkgk.b().split("-");
      if (arrayOfString.length >= 2) {
        kgn.a(this.a).a(arrayOfString[1]);
        return;
      } 
      kgn.a(this.a).a(paramkgk.getMensagemErro());
      return;
    } 
    kgn.a(this.a).a(paramkgk.a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kgo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */