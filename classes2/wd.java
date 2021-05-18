class wd implements ih {
  wd(wc paramwc, vz paramvz) {}
  
  public void onFailure(is paramis) {
    this.a.a(new aby(paramis.a().intValue(), paramis.b()));
  }
  
  public void onSuccess(is paramis) {
    try {
      this.a.a((new eju()).j().<wa>a(paramis.c().toString(), wa.class));
      return;
    } catch (Exception exception) {
      this.a.a(new aby(paramis.a().intValue(), wc.a(this.b).getResources().getString(lg.error_generic)));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\wd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */