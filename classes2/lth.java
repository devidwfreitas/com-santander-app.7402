import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class lth extends RecyclerView.Adapter<ltk> {
  private List<kuy> a;
  
  private ltl b;
  
  private boolean c = true;
  
  private AppCompatActivity d;
  
  public lth(List<kuy> paramList, AppCompatActivity paramAppCompatActivity) {
    this.a = paramList;
    this.d = paramAppCompatActivity;
  }
  
  private Drawable b() {
    if (this.d != null) {
      TypedArray typedArray = this.d.obtainStyledAttributes(new int[] { 2130772068 });
      Drawable drawable = typedArray.getDrawable(0);
      typedArray.recycle();
      return drawable;
    } 
    return null;
  }
  
  public ltk a(ViewGroup paramViewGroup, int paramInt) {
    return new ltk(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969448, paramViewGroup, false));
  }
  
  public ltl a() {
    return (this.b != null) ? this.b : null;
  }
  
  public void a(List<kuy> paramList) {
    this.a = paramList;
  }
  
  public void a(ltk paramltk, int paramInt) {
    kuy kuy = this.a.get(paramInt);
    ltk.a(paramltk).setOnClickListener(null);
    ltk.b(paramltk).setOnClickListener(null);
    ltk.c(paramltk).setText(kuy.e());
    ltk.d(paramltk).setImageResource(kuy.b());
    ltk.a(paramltk).setClickable(true);
    if (this.c) {
      ltk.a(paramltk).setClickable(true);
      ltk.a(paramltk).setForeground(b());
      ltk.a(paramltk).setOnClickListener(new lti(this, kuy));
      ltk.b(paramltk).setOnClickListener(new ltj(this, kuy));
      return;
    } 
    ltk.a(paramltk).setClickable(false);
    ltk.a(paramltk).setForeground(null);
  }
  
  public void a(ltl paramltl) {
    this.b = paramltl;
  }
  
  public void a(boolean paramBoolean) {
    this.c = paramBoolean;
    notifyDataSetChanged();
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lth.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */