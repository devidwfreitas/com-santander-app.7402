class mmz implements gkw {
  mmz(mmv parammmv, mlo parammlo) {}
  
  public void a(Object paramObject) {
    mlp mlp = new mlp();
    paramObject = paramObject;
    if (paramObject.c() == null) {
      if (paramObject.b() != null) {
        paramObject = paramObject.b();
      } else {
        paramObject = "";
      } 
      mlp.setMensagemErro((String)paramObject);
      mmv.a(this.b).b(mlp);
      return;
    } 
    mlm mlm = mys.a().<mlm>a(paramObject.c().toString(), mlm.class);
    if (paramObject.a().intValue() != 200) {
      hav.a(mmv.b(this.b), new gkt(mlm.getAction(), mlm.getCode(), mlm.getMessage()));
      return;
    } 
    mlp.a(this.a.l());
    mlp.b("");
    mlp.c(mlm.a());
    mlp.d(this.a.m());
    mlp.e(this.a.n());
    mlp.f(this.a.g());
    mlp.a(mlm.getOsgData());
    mmv.a(this.b).a(mlp);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mmz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */