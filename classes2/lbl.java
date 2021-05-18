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

public class lbl extends Fragment {
  private static final int a = 45678;
  
  private static final String b = "VIEW_TYPE_KEY";
  
  private static final String c = "ASSISTANCE_TYPE_KEY";
  
  private static final String d = "PROTOCOL_NUMBER_KEY";
  
  private static final int e = 0;
  
  private static final int f = 1;
  
  private TextView g;
  
  private TextView h;
  
  private TextView i;
  
  private TextView j;
  
  private TextView k;
  
  private RelativeLayout l;
  
  private Button m;
  
  private lbo n;
  
  private String o;
  
  private String p;
  
  private int q;
  
  public static lbl a(String paramString1, String paramString2) {
    lbl lbl1 = new lbl();
    Bundle bundle = new Bundle();
    bundle.putInt("VIEW_TYPE_KEY", 0);
    a(bundle, paramString1, paramString2);
    lbl1.setArguments(bundle);
    return lbl1;
  }
  
  private void a() {
    this.g.setText(this.o);
    this.h.setText(this.p);
    String str = mhj.a(new Date(), "dd/MM/yyyy HH:mm");
    this.k.setText(str);
    if (this.q == 0) {
      this.i.setText(2131297525);
      this.j.setText(2131299277);
    } else {
      this.j.setText(2131299279);
    } 
    this.i.setOnClickListener(new lbm(this));
    this.m.setOnClickListener(new lbn(this));
  }
  
  private static void a(Bundle paramBundle, String paramString1, String paramString2) {
    paramBundle.putString("ASSISTANCE_TYPE_KEY", paramString1);
    paramBundle.putString("PROTOCOL_NUMBER_KEY", paramString2);
  }
  
  private void a(View paramView) {
    this.g = (TextView)paramView.findViewById(2131757333);
    this.h = (TextView)paramView.findViewById(2131757336);
    this.j = (TextView)paramView.findViewById(2131757334);
    this.k = (TextView)paramView.findViewById(2131757337);
    this.i = (TextView)paramView.findViewById(2131757338);
    this.l = (RelativeLayout)paramView.findViewById(2131755536);
    this.m = (Button)paramView.findViewById(2131755543);
  }
  
  public static lbl b(String paramString1, String paramString2) {
    lbl lbl1 = new lbl();
    Bundle bundle = new Bundle();
    bundle.putInt("VIEW_TYPE_KEY", 1);
    a(bundle, paramString1, paramString2);
    lbl1.setArguments(bundle);
    return lbl1;
  }
  
  private void b() {
    if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
      ActivityCompat.requestPermissions((Activity)getActivity(), new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 45678);
      return;
    } 
    File file = mhj.a((View)this.l, (Context)getActivity());
    if (file != null) {
      mhj.a((Context)getActivity(), Uri.fromFile(file), getResources().getString(2131299065));
      return;
    } 
  }
  
  public void a(lbo paramlbo) {
    this.n = paramlbo;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null) {
      this.q = getArguments().getInt("VIEW_TYPE_KEY");
      this.o = getArguments().getString("ASSISTANCE_TYPE_KEY");
      this.p = getArguments().getString("PROTOCOL_NUMBER_KEY");
    } 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969051, paramViewGroup, false);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lbl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */