import java.util.Comparator;

class feu implements Comparator<fdu> {
  feu(fet paramfet, fdu paramfdu) {}
  
  public int a(fdu paramfdu1, fdu paramfdu2) {
    byte b2 = -1;
    int i = (fet.c(paramfdu1, this.a)).a - paramfdu1.a;
    int j = (fet.c(paramfdu2, this.a)).a - paramfdu2.a;
    if (i == 0 && j == 0)
      return paramfdu1.d(paramfdu2); 
    byte b1 = b2;
    if (i != 0) {
      if (j == 0)
        return 1; 
      if (i < 0 && j < 0)
        return paramfdu1.d(paramfdu2); 
      if (i > 0 && j > 0)
        return -paramfdu1.d(paramfdu2); 
      b1 = b2;
      if (i >= 0)
        return 1; 
    } 
    return b1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\feu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */