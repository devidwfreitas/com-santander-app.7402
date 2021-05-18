class msm implements gkw<mlp> {
  msm(msl parammsl, msk parammsk) {}
  
  public void a(mlp parammlp) {
    Exception exception;
    msk msk1;
    try {
      msl.a(this.b, parammlp);
      if (parammlp.getConfirmacao().equalsIgnoreCase("OK")) {
        this.a.a();
        return;
      } 
      String str = parammlp.getMensagemErro();
      if (msl.a(this.b, str)) {
        this.a.a(str);
        return;
      } 
    } catch (Exception exception1) {
      msk1 = this.a;
      if (parammlp == null) {
        exception = new Exception();
      } else {
        exception = new Exception(exception.getMensagemErro());
      } 
      msk1.a(exception);
      return;
    } 
    if (msl.b(this.b, (String)msk1)) {
      this.a.b((String)msk1);
      return;
    } 
    this.a.a(new Exception(exception.getMensagemErro()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\msm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */