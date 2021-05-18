class fx {
  private fd<?> a;
  
  public fx(fd<?> paramfd) {
    this.a = paramfd;
  }
  
  public void a() {
    this.a = null;
  }
  
  protected void finalize() {
    try {
      fd<?> fd1 = this.a;
      if (fd1 != null) {
        fv fv = fd.a();
        if (fv != null)
          fv.a(fd1, new fy(fd1.g())); 
      } 
      return;
    } finally {
      super.finalize();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */