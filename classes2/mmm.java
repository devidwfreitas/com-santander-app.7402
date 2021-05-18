class mmm implements gkw {
  mmm(mml parammml) {}
  
  public void a(Object paramObject) {
    mmn mmn;
    mlp mlp = new mlp();
    paramObject = paramObject;
    if (paramObject.c() == null) {
      mlp.setMensagemErro(paramObject.b());
      mlp.setMsgErro(paramObject.b());
      mmi.c(this.a.b).b(mmi.a(this.a.b, mlp));
      return;
    } 
    mlm mlm = mys.a().<mlm>a(paramObject.c().toString(), mlm.class);
    if (paramObject.a().intValue() != 200) {
      mlp.setCodErro(mlm.getCode());
      mlp.setMensagemErro(mlm.getMessage());
      mlp.setMsgErro(mlm.getMessage());
      mmi.c(this.a.b).b(mmi.a(this.a.b, mlp));
      return;
    } 
    if (mlm.getFields() == null && mlm.getOsgData() != null) {
      this.a.a.a(mlm.getOsgData());
      mmi.a(this.a.b, this.a.a.q());
      return;
    } 
    if (mlm.getFields() != null && mlm.getOsgData() == null) {
      this.a.a.a(mlm.getFields());
      mlp.a(this.a.a.r());
      mlp.setAutenticacao(mlm.g());
      mlp.setDataHoraTransacao(mlm.h());
      mmi.b(this.a.b);
      mqc.a = null;
      paramObject = mzp.RELOAD_CARTOES;
      mzp mzp = mzp.RELOAD_CONTA;
      mzn mzn = new mzn();
      mmn = new mmn(this, mlp);
      mzn.a(new mzp[] { (mzp)paramObject, mzp }, mmn);
      return;
    } 
    mmi.c(this.a.b).b(mmi.a(this.a.b, (mlp)mmn));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mmm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */