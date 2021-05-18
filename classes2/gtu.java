import android.content.Context;
import android.location.Location;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;

public class gtu extends RecyclerView.Adapter<gtv> {
  private Context a;
  
  private List<jlq> b;
  
  private jme c;
  
  private float d;
  
  private Location e;
  
  public gtu(Context paramContext, List<jlq> paramList) {
    this.a = paramContext;
    this.b = paramList;
    this.c = (jme)paramContext;
  }
  
  private float a(int paramInt) {
    Location location = new Location("agencia");
    location.setLatitude(Double.valueOf(((jlq)this.b.get(paramInt)).l().a()).doubleValue());
    location.setLongitude(Double.valueOf(((jlq)this.b.get(paramInt)).l().b()).doubleValue());
    return this.e.distanceTo(location);
  }
  
  public gtv a(ViewGroup paramViewGroup, int paramInt) {
    return new gtv(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969488, paramViewGroup, false));
  }
  
  public void a(Location paramLocation) {
    this.e = paramLocation;
  }
  
  public void a(gtv paramgtv, int paramInt) {
    this.d = a(paramInt);
    LatLng latLng = new LatLng(Double.valueOf(((jlq)this.b.get(paramInt)).l().a()).doubleValue(), Double.valueOf(((jlq)this.b.get(paramInt)).l().b()).doubleValue());
    gtv.a(paramgtv).setText(((jlq)this.b.get(paramInt)).c());
    String str = ((jlq)this.b.get(paramInt)).e() + ", " + ((jlq)this.b.get(paramInt)).f();
    gtv.b(paramgtv).setText(str);
    TextView textView = gtv.c(paramgtv);
    if (this.d > 1000.0F) {
      str = String.format("%.2f", new Object[] { Float.valueOf(this.d / 1000.0F) }) + " km";
    } else {
      str = String.valueOf((int)this.d + " m");
    } 
    textView.setText(str);
    gtv.d(paramgtv).setText(((jlq)this.b.get(paramInt)).d());
    gtv.d(paramgtv).setOnClickListener(this.c.a(((jlq)this.b.get(paramInt)).d()));
    gtv.e(paramgtv).setOnClickListener(this.c.a(latLng));
  }
  
  public void a(List<jlq> paramList) {
    this.b = paramList;
    notifyDataSetChanged();
  }
  
  public int getItemCount() {
    return this.b.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gtu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */