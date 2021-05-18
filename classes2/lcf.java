import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.io.File;
import java.util.Date;

public class lcf extends Fragment {
  private static final String a = "ASSISTANCE_NAME_KEY";
  
  private static final String b = "PROTOCOL_NUMBER_KEY";
  
  private static final String c = "EMERGENCY_SCHEDULE";
  
  private static final int d = 45678;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView h;
  
  private TextView i;
  
  private lci j;
  
  private String k;
  
  private String l;
  
  private Button m;
  
  private RelativeLayout n;
  
  private boolean o;
  
  public static lcf a(String paramString1, String paramString2, boolean paramBoolean) {
    lcf lcf1 = new lcf();
    Bundle bundle = new Bundle();
    bundle.putString("ASSISTANCE_NAME_KEY", paramString1);
    bundle.putString("PROTOCOL_NUMBER_KEY", paramString2);
    bundle.putBoolean("EMERGENCY_SCHEDULE", paramBoolean);
    lcf1.setArguments(bundle);
    return lcf1;
  }
  
  private void a() {
    this.e.setText(this.k);
    this.f.setText(this.l);
    String str = mhj.a(new Date(), "dd/MM/yyyy HH:mm");
    this.g.setText(str);
    if (this.o)
      this.i.setVisibility(0); 
    this.h.setOnClickListener(new lcg(this));
    this.m.setOnClickListener(new lch(this));
  }
  
  private void a(View paramView) {
    this.e = (TextView)paramView.findViewById(2131757333);
    this.f = (TextView)paramView.findViewById(2131757336);
    this.g = (TextView)paramView.findViewById(2131757337);
    this.h = (TextView)paramView.findViewById(2131757338);
    this.i = (TextView)paramView.findViewById(2131757340);
    this.n = (RelativeLayout)paramView.findViewById(2131755536);
    this.m = (Button)paramView.findViewById(2131755543);
  }
  
  private void b() {
    if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
      ActivityCompat.requestPermissions((Activity)getActivity(), new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 45678);
      return;
    } 
    File file = mhj.a((View)this.n, (Context)getActivity());
    if (file != null) {
      mhj.a((Context)getActivity(), Uri.fromFile(file), getResources().getString(2131299065));
      return;
    } 
  }
  
  public void a(lci paramlci) {
    this.j = paramlci;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null) {
      this.k = getArguments().getString("ASSISTANCE_NAME_KEY");
      this.l = getArguments().getString("PROTOCOL_NUMBER_KEY");
      this.o = getArguments().getBoolean("EMERGENCY_SCHEDULE");
    } 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969052, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfint);
    switch (paramInt) {
      default:
        return;
      case 45678:
        break;
    } 
    if (paramArrayOfint.length >= 1 && paramArrayOfint[0] == 0) {
      b();
      return;
    } 
    mhj.c((Context)getActivity(), getResources().getString(2131297378));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lcf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */