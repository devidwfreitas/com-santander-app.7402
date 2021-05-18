public abstract class exz {
  private final ets a;
  
  private final eyj b;
  
  exz(ets paramets) {
    this.a = paramets;
    this.b = new eyj(paramets);
  }
  
  public static exz a(ets paramets) {
    if (paramets.a(1))
      return new exw(paramets); 
    if (!paramets.a(2))
      return new eya(paramets); 
    switch (eyj.a(paramets, 1, 4)) {
      default:
        switch (eyj.a(paramets, 1, 5)) {
          default:
            switch (eyj.a(paramets, 1, 7)) {
              default:
                throw new IllegalStateException("unknown decoder: " + paramets);
              case 56:
                return new exu(paramets, "310", "11");
              case 57:
                return new exu(paramets, "320", "11");
              case 58:
                return new exu(paramets, "310", "13");
              case 59:
                return new exu(paramets, "320", "13");
              case 60:
                return new exu(paramets, "310", "15");
              case 61:
                return new exu(paramets, "320", "15");
              case 62:
                return new exu(paramets, "310", "17");
              case 63:
                break;
            } 
            return new exu(paramets, "320", "17");
          case 12:
            return new exs(paramets);
          case 13:
            break;
        } 
        return new ext(paramets);
      case 4:
        return new exq(paramets);
      case 5:
        break;
    } 
    return new exr(paramets);
  }
  
  public abstract String a();
  
  protected final ets b() {
    return this.a;
  }
  
  protected final eyj c() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */