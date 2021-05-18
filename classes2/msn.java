class msn implements gkw<mlp> {
  msn(msl parammsl, msj parammsj) {}
  
  public void a(mlp parammlp) {
    try {
      if (parammlp.getConfirmacao().equalsIgnoreCase("OK")) {
        msl.a(this.b, msl.b(this.b, parammlp));
        this.a.a(msl.a(this.b));
        return;
      } 
      this.a.a(new Exception(parammlp.getMensagemErro()));
      return;
    } catch (Exception exception2) {
      Exception exception1;
      msj msj1 = this.a;
      if (parammlp == null) {
        exception1 = new Exception();
      } else {
        exception1 = new Exception(exception1.getMensagemErro());
      } 
      msj1.a(exception1);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\msn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */