import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;
import com.santander.app.seguros.ui.widgets.DocumentView;

public class lwe extends Fragment implements min {
  public static final String a = "verse_key";
  
  ScanDocumentActivity b;
  
  private TextView c;
  
  private DocumentView d;
  
  private boolean e;
  
  public static lwe a(boolean paramBoolean) {
    Bundle bundle = new Bundle();
    bundle.putBoolean("verse_key", paramBoolean);
    lwe lwe1 = new lwe();
    lwe1.setArguments(bundle);
    return lwe1;
  }
  
  private void a(View paramView) {
    this.c = (TextView)paramView.findViewById(2131755789);
    this.d = (DocumentView)paramView.findViewById(2131757473);
  }
  
  private void b() {
    String str;
    mio mio = this.b.a();
    if (this.e) {
      this.c.setText((CharSequence)mhj.a((Context)this.b, "fonts/opensans_semibold.ttf", Integer.valueOf(getResources().getColor(2131624115)), getResources().getString(2131298505), new String[] { getResources().getString(2131299257) }));
      Bitmap bitmap1 = mio.i();
      if (bitmap1 != null) {
        this.d.setPhoto(bitmap1);
        return;
      } 
      if (!TextUtils.isEmpty(mio.b())) {
        str = mio.b();
        this.d.setTextCenter(str);
        return;
      } 
      this.d.setTextCenter(getResources().getString(2131298507));
      return;
    } 
    this.c.setText((CharSequence)mhj.a((Context)this.b, "fonts/opensans_semibold.ttf", Integer.valueOf(getResources().getColor(2131624115)), getResources().getString(2131298506), new String[] { getResources().getString(2131297505) }));
    Bitmap bitmap = str.h();
    if (bitmap != null) {
      this.d.setPhoto(bitmap);
      return;
    } 
    if (!TextUtils.isEmpty(str.c())) {
      str = str.c();
      this.d.setTextCenter(str);
      return;
    } 
    this.d.setTextCenter(getResources().getString(2131298377));
  }
  
  public void a() {
    this.d.b();
    if (this.e) {
      this.d.setTextCenter(getResources().getString(2131298507));
      return;
    } 
    this.d.setTextCenter(getResources().getString(2131298377));
  }
  
  public void a(Bitmap paramBitmap) {
    this.d.setPhoto(paramBitmap);
  }
  
  public void a(String paramString) {
    this.d.setTextCenter(paramString);
    this.d.a();
  }
  
  public void b(String paramString) {
    this.d.setTextCenter(paramString);
    this.d.a();
  }
  
  public void c(String paramString) {
    this.d.setTextCenter(paramString);
    this.d.a();
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof ScanDocumentActivity)
      this.b = (ScanDocumentActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("verse_key"))
      this.e = getArguments().getBoolean("verse_key"); 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969068, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */