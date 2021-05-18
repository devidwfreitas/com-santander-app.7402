class jue implements gkw {
  jue(juc paramjuc, String paramString) {}
  
  public void a(Object paramObject) {
    is is = (is)paramObject;
    if (is.c() == null) {
      jsr jsr = new jsr();
      if (is.b() != null) {
        paramObject = is.b();
      } else {
        paramObject = "";
      } 
      jsr.setMensagemErro((String)paramObject);
      if (is.b() != null) {
        paramObject = is.b();
      } else {
        paramObject = "";
      } 
      jsr.setMsgErro((String)paramObject);
      juc.a(this.b).b(jsr);
      return;
    } 
    paramObject = mys.a().<jsz>a(is.c().toString(), jsz.class);
    if (is.a().intValue() != 200) {
      hav.a(juc.b(this.b), new gkt(paramObject.getAction(), paramObject.getCode(), paramObject.getMessage()));
      return;
    } 
    paramObject = juc.a(this.b, (jsz)paramObject);
    paramObject.e(this.a);
    juc.a(this.b).a((jsr)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */