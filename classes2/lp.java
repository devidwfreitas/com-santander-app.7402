class lp implements ih {
  lp(lo paramlo) {}
  
  public void onFailure(is paramis) {
    lo.a(this.a).a(new aby(paramis.a().intValue(), paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    try {
      lk lk = (new eju()).j().<lk>a(paramis.c().toString(), lk.class);
      lk.g();
      lo.a(this.a).a((abv)lk);
      return;
    } catch (Exception exception) {
      lo.a(this.a).a(new aby(paramis.a().intValue(), lo.b(this.a).getResources().getString(lg.error_generic)));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */