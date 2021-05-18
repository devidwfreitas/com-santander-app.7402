class hpw implements hqj {
  hpw(hpp paramhpp, hxq paramhxq) {}
  
  public void a() {
    if (hpp.h(this.b) != null) {
      hpp.a(this.b, hpp.h(this.b).getParcelaMax());
      hpp.b(this.b, hpp.h(this.b).getParcelaMin());
    } 
  }
  
  public void b() {
    if (this.a != null) {
      hpp.a(this.b, this.a.getParcelaMax());
      hpp.b(this.b, this.a.getParcelaMin());
    } 
  }
  
  public void c() {
    int i = hpp.d(this.b).a(hpp.i(this.b));
    if (i == 3) {
      a();
      if (!this.a.isMorno()) {
        if (this.a.getParcelaMax() > hpp.j(this.b))
          hpp.a(this.b, this.a.getParcelaMax()); 
        if (hpp.k(this.b) == 0 || this.a.getParcelaMin() < hpp.k(this.b))
          hpp.b(this.b, this.a.getParcelaMin()); 
      } 
      return;
    } 
    if (i == 11) {
      b();
      return;
    } 
    if (i == 10) {
      a();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */