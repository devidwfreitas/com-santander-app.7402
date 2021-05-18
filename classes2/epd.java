class epd extends ekn<T1> {
  epd(epc paramepc, Class paramClass) {}
  
  public void a(eps parameps, T1 paramT1) {
    this.b.b.a(parameps, paramT1);
  }
  
  public T1 b(epo paramepo) {
    paramepo = this.b.b.b(paramepo);
    if (paramepo != null && !this.a.isInstance(paramepo))
      throw new ekj("Expected a " + this.a.getName() + " but was " + paramepo.getClass().getName()); 
    return (T1)paramepo;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */