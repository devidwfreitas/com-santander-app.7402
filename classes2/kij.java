class kij implements gkv<kic> {
  kij(kig paramkig) {}
  
  public void a(kic paramkic) {
    String[] arrayOfString;
    if (paramkic == null) {
      kig.a(this.a).a("Ocorreu um erro ao carregar as informações");
      return;
    } 
    if (!paramkic.g().equalsIgnoreCase("")) {
      arrayOfString = paramkic.g().split("\\|");
      kig.a(this.a).a(arrayOfString[1]);
      return;
    } 
    kig.a(this.a).a((kic)arrayOfString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kij.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */