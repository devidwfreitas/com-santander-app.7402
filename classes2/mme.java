class mme implements gkw {
  mme(mlw parammlw) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject != null) {
      if (paramObject.getConfirmacao() != null && paramObject.getConfirmacao().equalsIgnoreCase("erro")) {
        mlw.a(this.a).b(paramObject.getMensagemErro());
        return;
      } 
      if (paramObject.a() != null && paramObject.a().equalsIgnoreCase("S")) {
        mlw.a(this.a).b((mls)paramObject);
        return;
      } 
      mlw.a(this.a).b(paramObject.getMensagemErro());
      return;
    } 
    mlw.a(this.a).a("Sistema indisponível no momento. Por favor, tente mais tarde.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mme.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */