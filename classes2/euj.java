public final class euj {
  private final euh a;
  
  public euj(euh parameuh) {
    this.a = parameuh;
  }
  
  private int[] a(eui parameui) {
    int j = 0;
    int i = 1;
    int k = parameui.b();
    if (k == 1)
      return new int[] { parameui.a(1) }; 
    int[] arrayOfInt = new int[k];
    while (i < this.a.c() && j < k) {
      int m = j;
      if (parameui.b(i) == 0) {
        arrayOfInt[j] = this.a.c(i);
        m = j + 1;
      } 
      i++;
      j = m;
    } 
    if (j != k)
      throw new eul("Error locator degree does not match number of roots"); 
    return arrayOfInt;
  }
  
  private int[] a(eui parameui, int[] paramArrayOfint) {
    int j = paramArrayOfint.length;
    int[] arrayOfInt = new int[j];
    int i;
    for (i = 0; i < j; i++) {
      int n = this.a.c(paramArrayOfint[i]);
      int k = 1;
      for (int m = 0; m < j; m++) {
        if (i != m) {
          int i1 = this.a.c(paramArrayOfint[m], n);
          if ((i1 & 0x1) == 0) {
            i1 |= 0x1;
          } else {
            i1 &= 0xFFFFFFFE;
          } 
          k = this.a.c(k, i1);
        } 
      } 
      arrayOfInt[i] = this.a.c(parameui.b(n), this.a.c(k));
      if (this.a.d() != 0)
        arrayOfInt[i] = this.a.c(arrayOfInt[i], n); 
    } 
    return arrayOfInt;
  }
  
  private eui[] a(eui parameui1, eui parameui2, int paramInt) {
    if (parameui1.b() >= parameui2.b()) {
      eui eui3 = parameui1;
      parameui1 = parameui2;
      parameui2 = eui3;
    } 
    eui eui2 = this.a.a();
    eui eui1 = this.a.b();
    while (parameui1.b() >= paramInt / 2) {
      if (parameui1.c())
        throw new eul("r_{i-1} was zero"); 
      eui eui3 = this.a.a();
      int i = parameui1.a(parameui1.b());
      i = this.a.c(i);
      while (parameui2.b() >= parameui1.b() && !parameui2.c()) {
        int j = parameui2.b() - parameui1.b();
        int k = this.a.c(parameui2.a(parameui2.b()), i);
        eui3 = eui3.a(this.a.a(j, k));
        parameui2 = parameui2.a(parameui1.a(j, k));
      } 
      eui2 = eui3.b(eui1).a(eui2);
      if (parameui2.b() >= parameui1.b())
        throw new IllegalStateException("Division algorithm failed to reduce polynomial?"); 
      eui3 = parameui1;
      parameui1 = parameui2;
      parameui2 = eui2;
      eui2 = eui1;
      eui1 = parameui2;
      parameui2 = eui3;
    } 
    paramInt = eui1.a(0);
    if (paramInt == 0)
      throw new eul("sigmaTilde(0) was zero"); 
    paramInt = this.a.c(paramInt);
    return new eui[] { eui1.c(paramInt), parameui1.c(paramInt) };
  }
  
  public void a(int[] paramArrayOfint, int paramInt) {
    boolean bool2 = false;
    eui eui = new eui(this.a, paramArrayOfint);
    int[] arrayOfInt = new int[paramInt];
    int i = 0;
    boolean bool1 = true;
    while (i < paramInt) {
      int j = eui.b(this.a.a(this.a.d() + i));
      arrayOfInt[arrayOfInt.length - 1 - i] = j;
      if (j != 0)
        bool1 = false; 
      i++;
    } 
    if (!bool1) {
      eui = new eui(this.a, arrayOfInt);
      eui[] arrayOfEui = a(this.a.a(paramInt, 1), eui, paramInt);
      eui = arrayOfEui[0];
      eui eui1 = arrayOfEui[1];
      int[] arrayOfInt1 = a(eui);
      int[] arrayOfInt2 = a(eui1, arrayOfInt1);
      paramInt = bool2;
      while (true) {
        if (paramInt < arrayOfInt1.length) {
          i = paramArrayOfint.length - 1 - this.a.b(arrayOfInt1[paramInt]);
          if (i < 0)
            throw new eul("Bad error location"); 
          paramArrayOfint[i] = euh.b(paramArrayOfint[i], arrayOfInt2[paramInt]);
          paramInt++;
          continue;
        } 
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\euj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */