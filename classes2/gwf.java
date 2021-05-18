class gwf implements ih {
  gwf(gwe paramgwe, gwd paramgwd) {}
  
  public void onFailure(is paramis) {
    gwe.a(this.b, paramis.b(), false);
    this.a.a((is)null);
  }
  
  public void onSuccess(is paramis) {
    gwe.a(this.b, paramis.c().toString(), false);
    ipk ipk = mys.a().<ipk>a(paramis.c().toString(), ipk.class);
    if (ipk != null && (ipk.a() == null || ipk.a().isEmpty())) {
      miq.C().f().q().a(ipk);
      this.a.a(ipk);
      return;
    } 
    this.a.b(ipk);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */