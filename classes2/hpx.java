class hpx implements hqj {
  hpx(hpp paramhpp, hxq paramhxq) {}
  
  public void a() {
    if (hpp.c(this.b) != null) {
      hpp.a(this.b, hpp.c(this.b).getValorLimiteMax());
      hpp.b(this.b, hpp.c(this.b).getValorLimiteMin());
    } 
  }
  
  public void b() {
    if (this.a != null) {
      hpp.a(this.b, this.a.getValorLimiteMax());
      hpp.b(this.b, this.a.getValorLimiteMin());
    } 
  }
  
  public void c() {
    a();
    if (this.a != null && !this.a.isMorno()) {
      if (this.a.getValorLimiteMax() > hpp.l(this.b))
        hpp.a(this.b, this.a.getValorLimiteMax()); 
      if (hpp.m(this.b) == 0.0F || this.a.getValorLimiteMin() < hpp.m(this.b))
        hpp.b(this.b, this.b.h().getValorLimiteMin()); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */