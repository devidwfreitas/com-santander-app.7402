class jtl implements gkw {
  jtl(jtk paramjtk) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject.c() == null) {
      jth.b(this.a.a).setMensagemErro(paramObject.b());
      jth.b(this.a.a).setMsgErro(paramObject.b());
      jth.c(this.a.a);
      return;
    } 
    jsz jsz = mys.a().<jsz>a(paramObject.c().toString(), jsz.class);
    if (paramObject.a().intValue() != 200) {
      jth.b(this.a.a).setCodErro(jsz.getCode());
      jth.b(this.a.a).setMensagemErro(jsz.getMessage());
      jth.b(this.a.a).setMsgErro(jsz.getMessage());
      jth.c(this.a.a);
      return;
    } 
    if (jsz.getFields() == null && jsz.getOsgData() != null) {
      jth.b(this.a.a).a(jsz.getOsgData());
      jth.d(this.a.a);
      return;
    } 
    if (jsz.getFields() != null && jsz.getOsgData() == null) {
      jth.b(this.a.a).a(jsz.getFields());
      paramObject = new jsu();
      paramObject.a(jth.b(this.a.a).m());
      paramObject.setAutenticacao(jsz.g());
      paramObject.setDataHoraTransacao(jsz.h());
      mzp mzp1 = mzp.RELOAD_CARTOES;
      mzp mzp2 = mzp.RELOAD_CONTA;
      mzn mzn = new mzn();
      paramObject = new jtm(this, (jsu)paramObject);
      mzn.a(new mzp[] { mzp1, mzp2 }, (foh)paramObject);
      return;
    } 
    jth.c(this.a.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jtl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */