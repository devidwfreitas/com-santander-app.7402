import java.util.EnumSet;

public enum bqo {
  Enabled,
  None(0L),
  RequireConfirm(0L);
  
  public static final EnumSet<bqo> ALL;
  
  private final long mValue;
  
  static {
    Enabled = new bqo("Enabled", 1, 1L);
    RequireConfirm = new bqo("RequireConfirm", 2, 2L);
    $VALUES = new bqo[] { None, Enabled, RequireConfirm };
    ALL = EnumSet.allOf(bqo.class);
  }
  
  bqo(long paramLong) {
    this.mValue = paramLong;
  }
  
  public static EnumSet<bqo> parseOptions(long paramLong) {
    EnumSet<bqo> enumSet = EnumSet.noneOf(bqo.class);
    for (bqo bqo1 : ALL) {
      if ((bqo1.getValue() & paramLong) != 0L)
        enumSet.add(bqo1); 
    } 
    return enumSet;
  }
  
  public long getValue() {
    return this.mValue;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */