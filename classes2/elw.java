class elw<K, V> {
  private emc<K, V> a;
  
  public emc<K, V> a() {
    emc<K, V> emc3 = this.a;
    if (emc3 == null)
      return null; 
    emc<K, V> emc2 = emc3.a;
    emc3.a = null;
    for (emc<K, V> emc1 = emc3.c; emc1 != null; emc1 = emc4) {
      emc1.a = emc2;
      emc<K, V> emc4 = emc1.b;
      emc2 = emc1;
    } 
    this.a = emc2;
    return emc3;
  }
  
  void a(emc<K, V> paramemc) {
    emc<K, V> emc1 = null;
    while (paramemc != null) {
      paramemc.a = emc1;
      emc<K, V> emc2 = paramemc.b;
      emc1 = paramemc;
      paramemc = emc2;
    } 
    this.a = emc1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\elw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */