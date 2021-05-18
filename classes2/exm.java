import java.util.List;

final class exm {
  static ets a(List<exn> paramList) {
    int i = paramList.size() * 2 - 1;
    if (((exn)paramList.get(paramList.size() - 1)).c() == null)
      i--; 
    ets ets = new ets(i * 12);
    int k = ((exn)paramList.get(0)).c().a();
    int j = 11;
    for (i = 0; j >= 0; i++) {
      if ((1 << j & k) != 0)
        ets.b(i); 
      j--;
    } 
    k = 1;
    while (k < paramList.size()) {
      exn exn = paramList.get(k);
      int m = exn.b().a();
      j = 11;
      while (j >= 0) {
        if ((1 << j & m) != 0)
          ets.b(i); 
        j--;
        i++;
      } 
      j = i;
      if (exn.c() != null) {
        int n = exn.c().a();
        m = 11;
        while (true) {
          j = i;
          if (m >= 0) {
            if ((1 << m & n) != 0)
              ets.b(i); 
            i++;
            m--;
            continue;
          } 
          break;
        } 
      } 
      k++;
      i = j;
    } 
    return ets;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */