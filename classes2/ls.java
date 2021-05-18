class ls implements ih {
  ls(lo paramlo, lt paramlt) {}
  
  public void onFailure(is paramis) {
    paramis.b();
  }
  
  public void onSuccess(is paramis) {
    try {
      tq tq = (new eju()).j().<tq>a(paramis.c().toString(), tq.class);
      this.a.a((abv)tq);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ls.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */