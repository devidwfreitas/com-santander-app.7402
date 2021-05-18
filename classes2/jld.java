class jld implements ih {
  jld(jlb paramjlb, jdf paramjdf, irs paramirs) {}
  
  public void onFailure(is paramis) {
    this.b.a();
  }
  
  public void onSuccess(is paramis) {
    tm tm = (new eju()).j().<tm>a(paramis.c().toString(), tm.class);
    if (tm != null) {
      tm.g();
      sw sw = tm.a();
      this.a.a(sw.b());
    } else {
      this.a.a(Double.valueOf(0.0D));
    } 
    this.b.a(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jld.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */