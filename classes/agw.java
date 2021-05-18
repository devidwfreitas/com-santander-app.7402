import android.app.Activity;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class agw extends akb {
  private Activity a;
  
  private RelativeLayout b;
  
  private RelativeLayout c;
  
  public agw(Activity paramActivity) {
    super(paramActivity);
    this.a = paramActivity;
    this.b = (RelativeLayout)this.a.findViewById(agg.financiamento_imovel);
    this.c = (RelativeLayout)this.a.findViewById(agg.financiamento_auto);
    ((TextView)this.a.findViewById(agg.header_titulo)).setText(agl.financiamentos);
    this.b.setOnClickListener(new agx(this));
    this.c.setOnClickListener(new agy(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\agw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */