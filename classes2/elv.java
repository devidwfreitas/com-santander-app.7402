final class elv<K, V> {
  private emc<K, V> a;
  
  private int b;
  
  private int c;
  
  private int d;
  
  emc<K, V> a() {
    emc<K, V> emc1 = this.a;
    if (emc1.a != null)
      throw new IllegalStateException(); 
    return emc1;
  }
  
  void a(int paramInt) {
    this.b = Integer.highestOneBit(paramInt) * 2 - 1 - paramInt;
    this.d = 0;
    this.c = 0;
    this.a = null;
  }
  
  void a(emc<K, V> paramemc) {
    paramemc.c = null;
    paramemc.a = null;
    paramemc.b = null;
    paramemc.i = 1;
    if (this.b > 0 && (this.d & 0x1) == 0) {
      this.d++;
      this.b--;
      this.c++;
    } 
    paramemc.a = this.a;
    this.a = paramemc;
    this.d++;
    if (this.b > 0 && (this.d & 0x1) == 0) {
      this.d++;
      this.b--;
      this.c++;
    } 
    for (int i = 4; (this.d & i - 1) == i - 1; i *= 2) {
      if (this.c == 0) {
        paramemc = this.a;
        emc<K, V> emc1 = paramemc.a;
        emc<K, V> emc2 = emc1.a;
        emc1.a = emc2.a;
        this.a = emc1;
        emc1.b = emc2;
        emc1.c = paramemc;
        paramemc.i++;
        emc2.a = emc1;
        paramemc.a = emc1;
      } else if (this.c == 1) {
        paramemc = this.a;
        emc<K, V> emc1 = paramemc.a;
        this.a = emc1;
        emc1.c = paramemc;
        paramemc.i++;
        paramemc.a = emc1;
        this.c = 0;
      } else if (this.c == 2) {
        this.c = 0;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\elv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */