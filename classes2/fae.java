public enum fae {
  ALPHANUMERIC,
  BYTE,
  ECI,
  FNC1_FIRST_POSITION,
  FNC1_SECOND_POSITION,
  HANZI,
  KANJI,
  NUMERIC,
  STRUCTURED_APPEND,
  TERMINATOR(new int[] { 0, 0, 0 }, 0);
  
  private final int bits;
  
  private final int[] characterCountBitsForVersions;
  
  static {
    NUMERIC = new fae("NUMERIC", 1, new int[] { 10, 12, 14 }, 1);
    ALPHANUMERIC = new fae("ALPHANUMERIC", 2, new int[] { 9, 11, 13 }, 2);
    STRUCTURED_APPEND = new fae("STRUCTURED_APPEND", 3, new int[] { 0, 0, 0 }, 3);
    BYTE = new fae("BYTE", 4, new int[] { 8, 16, 16 }, 4);
    ECI = new fae("ECI", 5, new int[] { 0, 0, 0 }, 7);
    KANJI = new fae("KANJI", 6, new int[] { 8, 10, 12 }, 8);
    FNC1_FIRST_POSITION = new fae("FNC1_FIRST_POSITION", 7, new int[] { 0, 0, 0 }, 5);
    FNC1_SECOND_POSITION = new fae("FNC1_SECOND_POSITION", 8, new int[] { 0, 0, 0 }, 9);
    HANZI = new fae("HANZI", 9, new int[] { 8, 10, 12 }, 13);
    $VALUES = new fae[] { TERMINATOR, NUMERIC, ALPHANUMERIC, STRUCTURED_APPEND, BYTE, ECI, KANJI, FNC1_FIRST_POSITION, FNC1_SECOND_POSITION, HANZI };
  }
  
  fae(int[] paramArrayOfint, int paramInt1) {
    this.characterCountBitsForVersions = paramArrayOfint;
    this.bits = paramInt1;
  }
  
  public static fae forBits(int paramInt) {
    switch (paramInt) {
      default:
        throw new IllegalArgumentException();
      case 0:
        return TERMINATOR;
      case 1:
        return NUMERIC;
      case 2:
        return ALPHANUMERIC;
      case 3:
        return STRUCTURED_APPEND;
      case 4:
        return BYTE;
      case 5:
        return FNC1_FIRST_POSITION;
      case 7:
        return ECI;
      case 8:
        return KANJI;
      case 9:
        return FNC1_SECOND_POSITION;
      case 13:
        break;
    } 
    return HANZI;
  }
  
  public int getBits() {
    return this.bits;
  }
  
  public int getCharacterCountBits(fag paramfag) {
    int i = paramfag.a();
    if (i <= 9) {
      i = 0;
      return this.characterCountBitsForVersions[i];
    } 
    if (i <= 26) {
      i = 1;
      return this.characterCountBitsForVersions[i];
    } 
    i = 2;
    return this.characterCountBitsForVersions[i];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */