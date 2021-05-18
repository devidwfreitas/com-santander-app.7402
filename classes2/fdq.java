import java.util.Collection;
import java.util.EnumMap;
import java.util.Map;

public class fdq implements fdj {
  private Collection<epu> a;
  
  private Map<epy, ?> b;
  
  private String c;
  
  public fdq() {}
  
  public fdq(Collection<epu> paramCollection, Map<epy, ?> paramMap, String paramString) {
    this.a = paramCollection;
    this.b = paramMap;
    this.c = paramString;
  }
  
  public fdi a(Map<epy, ?> paramMap) {
    EnumMap<epy, Object> enumMap = new EnumMap<epy, Object>(epy.class);
    enumMap.putAll(paramMap);
    if (this.b != null)
      enumMap.putAll(this.b); 
    if (this.a != null)
      enumMap.put(epy.POSSIBLE_FORMATS, this.a); 
    if (this.c != null)
      enumMap.put(epy.CHARACTER_SET, this.c); 
    eqe eqe = new eqe();
    eqe.a(enumMap);
    return new fdi(eqe);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */