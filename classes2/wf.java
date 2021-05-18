import android.content.Context;
import android.graphics.Color;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class wf extends RecyclerView.Adapter<wg> {
  private Context a;
  
  private List<vx> b;
  
  public wf(Context paramContext) {
    this.a = paramContext;
    this.b = new ArrayList<vx>();
  }
  
  private vx a(int paramInt) {
    return (paramInt < this.b.size()) ? this.b.get(paramInt) : null;
  }
  
  public wg a(ViewGroup paramViewGroup, int paramInt) {
    return new wg(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.recyclerview_recomendacao_investimentos_row, paramViewGroup, false));
  }
  
  public void a(List<vx> paramList) {
    this.b = paramList;
    notifyDataSetChanged();
  }
  
  public void a(wg paramwg, int paramInt) {
    vx vx = a(paramInt);
    if (vx != null) {
      try {
        paramwg.b().setText(vx.a().e());
        paramwg.c().setText(vx.a().h().b());
        paramwg.d().setText(vx.b());
        paramwg.e().setText(vx.a().g());
        paramwg.f().setText(aat.a(vx.c()));
        String str = vx.a().f();
        paramInt = -1;
        switch (str.hashCode()) {
          case 50:
            if (str.equals("2"))
              paramInt = 0; 
            break;
          case 51:
            if (str.equals("3"))
              paramInt = 1; 
            break;
          case 52:
            if (str.equals("4"))
              paramInt = 2; 
            break;
        } 
      } catch (Exception exception) {
        Log.d(getClass().getSimpleName(), "onBindViewHolder: " + exception.toString());
        return;
      } 
      switch (paramInt) {
        case 0:
          exception.g().setImageDrawable(ContextCompat.getDrawable(this.a, kz.ic_risco_baixo));
          exception.a().setBackgroundColor(Color.parseColor(vx.a().h().c()));
          return;
        case 1:
          exception.g().setImageDrawable(ContextCompat.getDrawable(this.a, kz.ic_risco_medio));
          exception.a().setBackgroundColor(Color.parseColor(vx.a().h().c()));
          return;
        case 2:
          exception.g().setImageDrawable(ContextCompat.getDrawable(this.a, kz.ic_risco_alto));
          exception.a().setBackgroundColor(Color.parseColor(vx.a().h().c()));
          return;
      } 
      exception.g().setImageDrawable(ContextCompat.getDrawable(this.a, kz.ic_risco_variavel));
    } else {
      return;
    } 
    exception.a().setBackgroundColor(Color.parseColor(vx.a().h().c()));
  }
  
  public int getItemCount() {
    return this.b.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\wf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */