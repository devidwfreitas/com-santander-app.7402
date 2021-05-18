class lq implements ih {
  lq(lo paramlo, lt paramlt) {}
  
  public void onFailure(is paramis) {
    this.a.a(new aby(paramis.a().intValue(), paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    try {
      lk lk = (new eju()).j().<lk>a(paramis.c().toString(), lk.class);
      lk.g();
      this.a.a((abv)lk);
      return;
    } catch (Exception exception) {
      this.a.a(new aby(paramis.a().intValue(), lo.b(this.b).getResources().getString(lg.error_generic)));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */