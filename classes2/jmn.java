import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.Uri;
import android.support.v4.app.ActivityCompat;
import android.support.v7.widget.CardView;
import android.util.TypedValue;
import android.view.View;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.localizadoragencias.presentation.BuscaLocalizadorAgenciaActivity;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

public class jmn implements jmm {
  private static final String d = "android.location.PROVIDERS_CHANGED";
  
  private dvb e;
  
  private LatLng f;
  
  private Location g;
  
  private LocationManager h;
  
  private LocationListener i;
  
  private jlu j;
  
  private jme k;
  
  private Context l;
  
  private HashMap<String, Integer> m;
  
  private grs n;
  
  private List<jlq> o;
  
  private SantanderTextView p;
  
  private SantanderTextView q;
  
  private SantanderTextView r;
  
  private SantanderTextView s;
  
  private jlq t;
  
  private boolean u = false;
  
  private Dialog v;
  
  private String w;
  
  private BroadcastReceiver x;
  
  public jmn(Context paramContext, String paramString) {
    this.j = new jlw(paramContext, this);
    this.l = paramContext;
    this.w = paramString;
    this.m = new HashMap<String, Integer>();
    this.n = (grs)paramContext;
    this.k = (jme)paramContext;
    ((SupportMapFragment)this.n.getSupportFragmentManager().findFragmentById(2131758242)).a(this);
    this.h = (LocationManager)this.n.getSystemService("location");
    this.i = a();
    this.x = n();
  }
  
  private float b(jlq paramjlq) {
    Location location = new Location("agencia");
    location.setLatitude(Double.valueOf(paramjlq.l().a()).doubleValue());
    location.setLongitude(Double.valueOf(paramjlq.l().b()).doubleValue());
    return this.g.distanceTo(location);
  }
  
  private void i() {
    if (this.f == null) {
      new Criteria();
      Location location = this.h.getLastKnownLocation("location");
      if (location != null)
        this.f = new LatLng(location.getLatitude(), location.getLongitude()); 
    } 
    if (this.e != null && this.f != null) {
      CameraPosition cameraPosition = (new edo()).a(this.f).a(15.0F).a();
      this.e.d(true);
      this.e.m().c(false);
      this.e.b(dva.a(cameraPosition));
      if (ActivityCompat.checkSelfPermission((Context)this.n, "android.permission.ACCESS_FINE_LOCATION") == 0 || ActivityCompat.checkSelfPermission((Context)this.n, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
        this.h.removeUpdates(this.i);
        a(this.f.a, this.f.b);
        this.e.a(new jmo(this));
        this.n.findViewById(2131755898).setVisibility(8);
        return;
      } 
    } 
  }
  
  private void j() {
    if (ActivityCompat.checkSelfPermission((Context)this.n, "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission((Context)this.n, "android.permission.ACCESS_COARSE_LOCATION") != 0)
      return; 
    this.h.requestLocationUpdates("network", 0L, 0.0F, this.i);
  }
  
  private void k() {
    if (this.v.isShowing()) {
      this.v.dismiss();
      this.v = null;
    } 
  }
  
  private float l() {
    return b(this.t);
  }
  
  private void m() {
    if (this.o == null)
      return; 
    Collections.sort(this.o, new jmr(this));
  }
  
  private BroadcastReceiver n() {
    return new jms(this);
  }
  
  private boolean o() {
    return (this.h != null && this.h.isProviderEnabled("gps"));
  }
  
  public jmu a() {
    return jmu.a(this.j);
  }
  
  public void a(double paramDouble1, double paramDouble2) {
    this.j.a(String.valueOf(paramDouble1), String.valueOf(paramDouble2));
  }
  
  public void a(int paramInt) {
    switch (paramInt) {
      default:
        return;
      case 1:
      case 2:
        break;
    } 
    if (!this.u) {
      this.n.findViewById(2131755898).setVisibility(0);
      this.n.findViewById(2131755899).setVisibility(0);
      this.n.findViewById(2131755902).setVisibility(8);
      this.n.findViewById(2131755898).setVisibility(0);
      this.n.findViewById(2131755901).setVisibility(8);
      return;
    } 
    this.u = false;
    this.n.findViewById(2131755898).setVisibility(8);
    this.n.findViewById(2131755899).setVisibility(8);
    CardView cardView = (CardView)this.n.findViewById(2131755902);
    cardView.setVisibility(0);
    cardView.setTranslationY(999.0F);
    cardView.animate().setDuration(400L).translationY(0.0F);
    this.n.findViewById(2131755902).setVisibility(0);
    this.n.findViewById(2131755898).setVisibility(8);
    this.n.findViewById(2131755901).setVisibility(8);
  }
  
  public void a(Location paramLocation) {
    this.f = new LatLng(paramLocation.getLatitude(), paramLocation.getLongitude());
    this.g = paramLocation;
    this.k.a(paramLocation);
    i();
  }
  
  public void a(LatLng paramLatLng) {
    this.f = paramLatLng;
    i();
  }
  
  public void a(dvb paramdvb) {
    this.e = paramdvb;
    this.e.a(this);
    this.e.a(this);
    i();
  }
  
  public void a(String paramString) {}
  
  public void a(String paramString1, String paramString2) {
    grs grs1 = this.n;
    jmp jmp = new jmp(this, paramString1, paramString2);
    jmq jmq = new jmq(this);
    if (miq.C().s()) {
      paramString1 = this.n.getString(2131296571);
    } else {
      paramString1 = this.n.getString(2131296570);
    } 
    this.v = mxn.b((Activity)grs1, jmp, jmq, paramString1, "Continuar", "Cancelar");
    this.v.show();
  }
  
  public void a(jlp paramjlp) {
    edu edu = new edu();
    if (paramjlp != null && paramjlp.a() != null && paramjlp.a().size() > 0 && this.e != null) {
      this.e.e();
      this.m.clear();
      this.o = paramjlp.a();
      m();
      this.k.a(this.o);
      Bitmap bitmap = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(this.l.getResources(), 2130839000), (int)TypedValue.applyDimension(1, 28.0F, this.l.getResources().getDisplayMetrics()), (int)TypedValue.applyDimension(1, 40.0F, this.l.getResources().getDisplayMetrics()), true);
      for (jlq jlq1 : this.o) {
        double d1 = Double.parseDouble(jlq1.l().a());
        double d2 = Double.parseDouble(jlq1.l().b());
        edu.a(new LatLng(d1, d2));
        MarkerOptions markerOptions = (new MarkerOptions()).a(new LatLng(d1, d2)).a(edn.a(bitmap));
        edv edv = this.e.a(markerOptions);
        this.m.put(edv.b(), jlq1.a());
      } 
      this.e.a(dva.a(edu.a(), 100));
    } 
  }
  
  public void a(jlq paramjlq) {
    float f;
    if (this.n != null && paramjlq != null) {
      this.t = paramjlq;
      this.n.findViewById(2131755898).setVisibility(8);
      this.n.findViewById(2131755902).setVisibility(0);
      this.p = (SantanderTextView)this.n.findViewById(2131755905);
      String str = paramjlq.c();
      this.p.setText(str);
      this.q = (SantanderTextView)this.n.findViewById(2131755906);
      this.q.setText(paramjlq.e() + ", " + paramjlq.f());
      this.r = (SantanderTextView)this.n.findViewById(2131755908);
      this.r.setText(paramjlq.d());
      this.r.setOnClickListener(this);
      this.s = (SantanderTextView)this.n.findViewById(2131755907);
      f = l();
      if (f > 1000.0F) {
        this.s.setText(String.format("%.2f km", new Object[] { Float.valueOf(f / 1000.0F) }));
        return;
      } 
    } else {
      return;
    } 
    this.s.setText(String.format("%.2f m", new Object[] { Float.valueOf(f) }));
  }
  
  public boolean a(edv paramedv) {
    frq.d("Login_Acao", "SelecionarAgencia");
    if (paramedv != null && paramedv.b() != null && this.m.containsKey(paramedv.b())) {
      this.u = true;
      int i = ((Integer)this.m.get(paramedv.b())).intValue();
      for (jlq jlq1 : this.o) {
        if (jlq1.a().equals(Integer.valueOf(i))) {
          a(jlq1);
          break;
        } 
      } 
    } 
    return false;
  }
  
  public void b() {
    mxn.d((Activity)this.n, this.n.getString(2131298094));
    j();
  }
  
  public void b(String paramString) {
    Intent intent = new Intent("android.intent.action.CALL", Uri.parse("tel:0" + paramString));
    if (ActivityCompat.checkSelfPermission((Context)this.n, "android.permission.CALL_PHONE") != 0)
      return; 
    this.n.startActivity(intent);
  }
  
  public void c() {
    mxn.d((Activity)this.n, this.n.getString(2131297343));
  }
  
  public void d() {
    if (o()) {
      this.k.d();
      j();
      return;
    } 
    this.k.c();
  }
  
  public void e() {
    Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
    this.l.startActivity(intent);
  }
  
  public void f() {
    this.k.d();
    this.k.finish();
  }
  
  public void g() {
    this.l.registerReceiver(this.x, new IntentFilter("android.location.PROVIDERS_CHANGED"));
  }
  
  public void h() {
    this.l.unregisterReceiver(this.x);
  }
  
  public void onClick(View paramView) {
    Intent intent;
    switch (paramView.getId()) {
      default:
        return;
      case 2131755898:
        this.n.findViewById(2131755899).setVisibility(8);
        j();
        return;
      case 2131755897:
        intent = new Intent((Context)this.n, BuscaLocalizadorAgenciaActivity.class);
        if (this.w.equalsIgnoreCase("menu")) {
          intent.putExtra("from", "menu");
        } else {
          intent.putExtra("from", "home");
        } 
        this.n.startActivityForResult(intent, 0);
        return;
      case 2131755900:
        this.n.findViewById(2131755899).setVisibility(8);
        if (this.e != null) {
          this.f = (this.e.a()).a;
          a(this.f.a, this.f.b);
          return;
        } 
      case 2131755908:
        if (this.t != null && this.n != null) {
          b(this.t.d());
          return;
        } 
      case 2131755909:
        break;
    } 
    if (this.t != null && this.n != null) {
      frq.d("Outros_Agencias_Acao", "TracarRota");
      a(this.t.l().a(), this.t.l().b());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jmn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */