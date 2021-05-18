import android.graphics.Bitmap;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class lig extends RecyclerView.Adapter<lii> {
  private List<knz> a;
  
  private lij b;
  
  private RecyclerView c;
  
  public lig(List<knz> paramList, RecyclerView paramRecyclerView) {
    this.a = paramList;
    this.c = paramRecyclerView;
  }
  
  public lii a(ViewGroup paramViewGroup, int paramInt) {
    return new lii(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968928, paramViewGroup, false));
  }
  
  public lij a() {
    return (this.b != null) ? this.b : null;
  }
  
  public void a(lii paramlii, int paramInt) {
    knz knz = this.a.get(paramInt);
    if (knz.b()) {
      paramlii.a.setText("");
      paramlii.a.setOnClickListener(null);
      paramlii.a.setClickable(false);
      paramlii.a.setImage(null);
      return;
    } 
    Bitmap bitmap = knz.a(this.c.getContext().getResources());
    paramlii.a.setImage(bitmap);
    bitmap.recycle();
    paramlii.a.setText(knz.d());
    paramlii.a.setClickable(true);
    paramlii.a.setOnClickListener(new lih(this, knz));
  }
  
  public void a(lij paramlij) {
    this.b = paramlij;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */