import java.util.HashMap;
import java.util.Map;

public enum etv {
  ASCII,
  Big5,
  Cp1250,
  Cp1251,
  Cp1252,
  Cp1256,
  Cp437(new int[] { 0, 2 }, new String[0]),
  EUC_KR(new int[] { 0, 2 }, new String[0]),
  GB18030(new int[] { 0, 2 }, new String[0]),
  ISO8859_1(new int[] { 1, 3 }, new String[] { "ISO-8859-1" }),
  ISO8859_10(new int[] { 1, 3 }, new String[] { "ISO-8859-1" }),
  ISO8859_11(new int[] { 1, 3 }, new String[] { "ISO-8859-1" }),
  ISO8859_13(new int[] { 1, 3 }, new String[] { "ISO-8859-1" }),
  ISO8859_14(new int[] { 1, 3 }, new String[] { "ISO-8859-1" }),
  ISO8859_15(new int[] { 1, 3 }, new String[] { "ISO-8859-1" }),
  ISO8859_16(new int[] { 1, 3 }, new String[] { "ISO-8859-1" }),
  ISO8859_2(4, new String[] { "ISO-8859-2" }),
  ISO8859_3(5, new String[] { "ISO-8859-3" }),
  ISO8859_4(6, new String[] { "ISO-8859-4" }),
  ISO8859_5(7, new String[] { "ISO-8859-5" }),
  ISO8859_6(8, new String[] { "ISO-8859-6" }),
  ISO8859_7(9, new String[] { "ISO-8859-7" }),
  ISO8859_8(10, new String[] { "ISO-8859-8" }),
  ISO8859_9(11, new String[] { "ISO-8859-9" }),
  SJIS(11, new String[] { "ISO-8859-9" }),
  UTF8(11, new String[] { "ISO-8859-9" }),
  UnicodeBigUnmarked(11, new String[] { "ISO-8859-9" });
  
  private static final Map<String, etv> NAME_TO_ECI;
  
  private static final Map<Integer, etv> VALUE_TO_ECI;
  
  private final String[] otherEncodingNames;
  
  private final int[] values;
  
  static {
    ISO8859_10 = new etv("ISO8859_10", 10, 12, new String[] { "ISO-8859-10" });
    ISO8859_11 = new etv("ISO8859_11", 11, 13, new String[] { "ISO-8859-11" });
    ISO8859_13 = new etv("ISO8859_13", 12, 15, new String[] { "ISO-8859-13" });
    ISO8859_14 = new etv("ISO8859_14", 13, 16, new String[] { "ISO-8859-14" });
    ISO8859_15 = new etv("ISO8859_15", 14, 17, new String[] { "ISO-8859-15" });
    ISO8859_16 = new etv("ISO8859_16", 15, 18, new String[] { "ISO-8859-16" });
    SJIS = new etv("SJIS", 16, 20, new String[] { "Shift_JIS" });
    Cp1250 = new etv("Cp1250", 17, 21, new String[] { "windows-1250" });
    Cp1251 = new etv("Cp1251", 18, 22, new String[] { "windows-1251" });
    Cp1252 = new etv("Cp1252", 19, 23, new String[] { "windows-1252" });
    Cp1256 = new etv("Cp1256", 20, 24, new String[] { "windows-1256" });
    UnicodeBigUnmarked = new etv("UnicodeBigUnmarked", 21, 25, new String[] { "UTF-16BE", "UnicodeBig" });
    UTF8 = new etv("UTF8", 22, 26, new String[] { "UTF-8" });
    ASCII = new etv("ASCII", 23, new int[] { 27, 170 }, new String[] { "US-ASCII" });
    Big5 = new etv("Big5", 24, 28);
    GB18030 = new etv("GB18030", 25, 29, new String[] { "GB2312", "EUC_CN", "GBK" });
    EUC_KR = new etv("EUC_KR", 26, 30, new String[] { "EUC-KR" });
    $VALUES = new etv[] { 
        Cp437, ISO8859_1, ISO8859_2, ISO8859_3, ISO8859_4, ISO8859_5, ISO8859_6, ISO8859_7, ISO8859_8, ISO8859_9, 
        ISO8859_10, ISO8859_11, ISO8859_13, ISO8859_14, ISO8859_15, ISO8859_16, SJIS, Cp1250, Cp1251, Cp1252, 
        Cp1256, UnicodeBigUnmarked, UTF8, ASCII, Big5, GB18030, EUC_KR };
    VALUE_TO_ECI = new HashMap<Integer, etv>();
    NAME_TO_ECI = new HashMap<String, etv>();
    for (etv etv1 : values()) {
      for (int i : etv1.values)
        VALUE_TO_ECI.put(Integer.valueOf(i), etv1); 
      NAME_TO_ECI.put(etv1.name(), etv1);
      for (String str : etv1.otherEncodingNames)
        NAME_TO_ECI.put(str, etv1); 
    } 
  }
  
  etv(int paramInt1, String... paramVarArgs) {
    this.values = new int[] { paramInt1 };
    this.otherEncodingNames = paramVarArgs;
  }
  
  etv(int[] paramArrayOfint, String... paramVarArgs) {
    this.values = paramArrayOfint;
    this.otherEncodingNames = paramVarArgs;
  }
  
  public static etv getCharacterSetECIByName(String paramString) {
    return NAME_TO_ECI.get(paramString);
  }
  
  public static etv getCharacterSetECIByValue(int paramInt) {
    if (paramInt < 0 || paramInt >= 900)
      throw eqb.a(); 
    return VALUE_TO_ECI.get(Integer.valueOf(paramInt));
  }
  
  public int getValue() {
    return this.values[0];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */