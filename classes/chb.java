import com.github.mikephil.charting.data.Entry;
import java.util.Arrays;
import java.util.List;

public class chb extends cgo<cit> {
  private List<String> j;
  
  public chb() {}
  
  public chb(List<cit> paramList) {
    super(paramList);
  }
  
  public chb(cit... paramVarArgs) {
    super(paramVarArgs);
  }
  
  public Entry a(chv paramchv) {
    return (Entry)a(paramchv.f()).m((int)paramchv.a());
  }
  
  public List<String> a() {
    return this.j;
  }
  
  public void a(String... paramVarArgs) {
    this.j = Arrays.asList(paramVarArgs);
  }
  
  public void d(List<String> paramList) {
    this.j = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */