import android.content.Intent;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

public final class ero {
  static final Set<epu> a;
  
  static final Set<epu> b;
  
  static final Set<epu> c;
  
  static final Set<epu> d;
  
  static final Set<epu> e;
  
  static final Set<epu> f;
  
  private static final Pattern g = Pattern.compile(",");
  
  private static final Set<epu> h;
  
  private static final Map<String, Set<epu>> i;
  
  static {
    c = EnumSet.of(epu.QR_CODE);
    d = EnumSet.of(epu.DATA_MATRIX);
    e = EnumSet.of(epu.AZTEC);
    f = EnumSet.of(epu.PDF_417);
    a = EnumSet.of(epu.UPC_A, new epu[] { epu.UPC_E, epu.EAN_13, epu.EAN_8, epu.RSS_14, epu.RSS_EXPANDED });
    b = EnumSet.of(epu.CODE_39, epu.CODE_93, epu.CODE_128, epu.ITF, epu.CODABAR);
    h = EnumSet.copyOf(a);
    h.addAll(b);
    i = new HashMap<String, Set<epu>>();
    i.put("ONE_D_MODE", h);
    i.put("PRODUCT_MODE", a);
    i.put("QR_CODE_MODE", c);
    i.put("DATA_MATRIX_MODE", d);
    i.put("AZTEC_MODE", e);
    i.put("PDF417_MODE", f);
  }
  
  public static Set<epu> a(Intent paramIntent) {
    List<String> list = null;
    String str = paramIntent.getStringExtra("SCAN_FORMATS");
    if (str != null)
      list = Arrays.asList(g.split(str)); 
    return a(list, paramIntent.getStringExtra("SCAN_MODE"));
  }
  
  private static Set<epu> a(Iterable<String> paramIterable, String paramString) {
    if (paramIterable != null) {
      EnumSet<epu> enumSet = EnumSet.noneOf(epu.class);
      try {
        Iterator<String> iterator = paramIterable.iterator();
        while (iterator.hasNext())
          enumSet.add(epu.valueOf(iterator.next())); 
      } catch (IllegalArgumentException illegalArgumentException) {
        if (paramString != null)
          return i.get(paramString); 
      } 
      return enumSet;
    } 
    if (paramString != null)
      return i.get(paramString); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ero.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */