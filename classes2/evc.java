final class evc implements evi {
  private static char a(char paramChar1, char paramChar2) {
    if (evl.a(paramChar1) && evl.a(paramChar2))
      return (char)((paramChar1 - 48) * 10 + paramChar2 - 48 + 130); 
    throw new IllegalArgumentException("not digits: " + paramChar1 + paramChar2);
  }
  
  public int a() {
    return 0;
  }
  
  public void a(evj paramevj) {
    if (evl.a(paramevj.a(), paramevj.a) >= 2) {
      paramevj.a(a(paramevj.a().charAt(paramevj.a), paramevj.a().charAt(paramevj.a + 1)));
      paramevj.a += 2;
      return;
    } 
    char c = paramevj.b();
    int i = evl.a(paramevj.a(), paramevj.a, a());
    if (i != a()) {
      switch (i) {
        default:
          throw new IllegalStateException("Illegal mode: " + i);
        case 5:
          paramevj.a('ç');
          paramevj.b(5);
          return;
        case 1:
          paramevj.a('æ');
          paramevj.b(1);
          return;
        case 3:
          paramevj.a('î');
          paramevj.b(3);
          return;
        case 2:
          paramevj.a('ï');
          paramevj.b(2);
          return;
        case 4:
          break;
      } 
      paramevj.a('ð');
      paramevj.b(4);
      return;
    } 
    if (evl.b(c)) {
      paramevj.a('ë');
      paramevj.a((char)(c - 128 + 1));
      paramevj.a++;
      return;
    } 
    paramevj.a((char)(c + 1));
    paramevj.a++;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */