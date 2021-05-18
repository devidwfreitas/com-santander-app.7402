class mql implements ih {
  mql(mqc parammqc, gkw paramgkw) {}
  
  public void onFailure(is paramis) {
    if (mqc.a(this.b).isShowing())
      mqc.a(this.b).dismiss(); 
    this.a.a(paramis);
  }
  
  public void onSuccess(is paramis) {
    if (mqc.a(this.b).isShowing())
      mqc.a(this.b).dismiss(); 
    this.a.a(paramis);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mql.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */