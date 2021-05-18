import android.graphics.Color;
import com.github.mikephil.charting.data.Entry;
import java.util.List;

public abstract class cgh<T extends Entry> extends cgq<T> implements cil<T> {
  protected int a = Color.rgb(255, 187, 115);
  
  public cgh(List<T> paramList, String paramString) {
    super(paramList, paramString);
  }
  
  public void d(int paramInt) {
    this.a = paramInt;
  }
  
  public int j() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */