public abstract class jx {
  protected static char[] a = new char[64];
  
  protected static byte[] b = new byte[128];
  
  static {
    i = 0;
    while (true) {
      j = bool;
      if (i < b.length) {
        b[i] = -1;
        i++;
        continue;
      } 
      break;
    } 
    while (j < 64) {
      b[a[j]] = (byte)j;
      j++;
    } 
  }
  
  static {
    boolean bool = false;
  }
  
  static {
    char c = 'A';
    int i;
    for (i = 0; c <= 'Z'; i++) {
      a[i] = c;
      c = (char)(c + 1);
    } 
    c = 'a';
    while (c <= 'z') {
      a[i] = c;
      c = (char)(c + 1);
      i++;
    } 
    c = '0';
    while (c <= '9') {
      a[i] = c;
      c = (char)(c + 1);
      i++;
    } 
    char[] arrayOfChar = a;
    int j = i + 1;
    arrayOfChar[i] = '+';
    a[j] = '/';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */