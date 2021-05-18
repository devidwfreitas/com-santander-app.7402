import android.support.annotation.LayoutRes;
import android.view.LayoutInflater;
import android.view.ViewGroup;

abstract class amv<T> extends amu {
  public amv(ViewGroup paramViewGroup, @LayoutRes int paramInt) {
    super(LayoutInflater.from(paramViewGroup.getContext()).inflate(paramInt, paramViewGroup, false));
  }
  
  public abstract void a(T paramT);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */