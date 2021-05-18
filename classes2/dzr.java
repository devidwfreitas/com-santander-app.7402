public final class dzr {
  public static byte a(Boolean paramBoolean) {
    return (paramBoolean != null) ? (paramBoolean.booleanValue() ? 1 : 0) : -1;
  }
  
  public static Boolean a(byte paramByte) {
    switch (paramByte) {
      default:
        return null;
      case 1:
        return Boolean.TRUE;
      case 0:
        break;
    } 
    return Boolean.FALSE;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dzr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */