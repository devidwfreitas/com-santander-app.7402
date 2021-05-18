class mmj implements gkw {
  mmj(mmi parammmi, mlo parammlo) {}
  
  public void a(Object paramObject) {
    mlp mlp = (mlp)paramObject;
    if (mlp != null && mlp.getConfirmacao().equalsIgnoreCase("ok")) {
      if (this.a.c() != null && this.a.c().k()) {
        mmi.a(this.b, new mqc(mmi.a(this.b)));
        this.a.c().e(this.a.c().e() + this.a.c().j());
        if (this.a.c().h().toString().contains("&")) {
          paramObject = this.a.c().h().toString().replace("&", "");
          this.a.c().h((String)paramObject);
        } 
        mmi.b(this.b).a(this.a.c());
        mmi.b(this.b);
        mqc.a = null;
      } 
      paramObject = mzp.RELOAD_CARTOES;
      mzp mzp = mzp.RELOAD_CONTA;
      mzn mzn = new mzn();
      mmk mmk = new mmk(this, mlp);
      mzn.a(new mzp[] { (mzp)paramObject, mzp }, mmk);
      return;
    } 
    mmi.c(this.b).b(mmi.a(this.b, (mlp)paramObject));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mmj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */