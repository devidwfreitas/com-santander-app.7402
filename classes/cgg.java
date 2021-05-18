import com.github.mikephil.charting.data.Entry;
import java.util.List;

public abstract class cgg<T extends cil<? extends Entry>> extends cgo<T> {
  public cgg() {}
  
  public cgg(List<T> paramList) {
    super(paramList);
  }
  
  public cgg(T... paramVarArgs) {
    super(paramVarArgs);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */