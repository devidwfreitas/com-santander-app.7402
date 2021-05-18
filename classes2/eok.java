import java.util.BitSet;

final class eok extends ekn<BitSet> {
  public BitSet a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    BitSet bitSet = new BitSet();
    paramepo.a();
    epr epr = paramepo.f();
    int i = 0;
    while (epr != epr.END_ARRAY) {
      boolean bool;
      String str;
      epr epr1;
      switch (epe.a[epr.ordinal()]) {
        case 1:
          if (paramepo.m() != 0) {
            bool = true;
          } else {
            bool = false;
          } 
          if (bool)
            bitSet.set(i); 
          i++;
          epr = paramepo.f();
        case 2:
          bool = paramepo.i();
          if (bool)
            bitSet.set(i); 
          i++;
          epr = paramepo.f();
        case 3:
          str = paramepo.h();
          try {
            int j = Integer.parseInt(str);
            if (j != 0) {
              bool = true;
            } else {
              bool = false;
            } 
            if (bool)
              bitSet.set(i); 
            i++;
            epr1 = paramepo.f();
          } catch (NumberFormatException numberFormatException) {
            throw new ekj("Error: Expecting: bitset number value (1, 0), Found: " + epr1);
          } 
          break;
      } 
    } 
    numberFormatException.b();
    return bitSet;
  }
  
  public void a(eps parameps, BitSet paramBitSet) {
    if (paramBitSet == null) {
      parameps.f();
      return;
    } 
    parameps.b();
    for (int i = 0; i < paramBitSet.length(); i++) {
      boolean bool;
      if (paramBitSet.get(i)) {
        bool = true;
      } else {
        bool = false;
      } 
      parameps.a(bool);
    } 
    parameps.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eok.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */