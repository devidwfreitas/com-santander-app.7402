class mqu implements ih {
  mqu(mqn parammqn, gkw paramgkw) {}
  
  public void onFailure(is paramis) {
    if (mqn.a(this.b).isShowing())
      mqn.a(this.b).dismiss(); 
    this.a.a(paramis);
  }
  
  public void onSuccess(is paramis) {
    if (mqn.a(this.b).isShowing())
      mqn.a(this.b).dismiss(); 
    this.a.a(paramis);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mqu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */