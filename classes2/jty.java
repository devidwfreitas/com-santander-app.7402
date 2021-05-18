class jty implements gkw {
  jty(jtv paramjtv, jsr paramjsr) {}
  
  public void a(Object paramObject) {
    is is = (is)paramObject;
    if (is.c() == null) {
      jsr jsr2 = this.a;
      if (is.b() != null) {
        paramObject = is.b();
      } else {
        paramObject = "";
      } 
      jsr2.setMensagemErro((String)paramObject);
      jsr2 = this.a;
      if (is.b() != null) {
        paramObject = is.b();
      } else {
        paramObject = "";
      } 
      jsr2.setMsgErro((String)paramObject);
      jtv.c(this.b).b(this.a);
      return;
    } 
    paramObject = mys.a().<jsz>a(is.c().toString(), jsz.class);
    if (is.a().intValue() != 200) {
      hav.a(jtv.d(this.b), new gkt(paramObject.getAction(), paramObject.getCode(), paramObject.getMessage()));
      return;
    } 
    this.a.a(paramObject.getFields());
    this.a.a(paramObject.getOsgData());
    this.a.j(String.valueOf(paramObject.i()));
    jsr jsr1 = this.a;
    if (paramObject.j() != null) {
      paramObject = paramObject.j();
    } else {
      paramObject = this.a.q();
    } 
    jsr1.p((String)paramObject);
    jtv.c(this.b).a(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jty.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */