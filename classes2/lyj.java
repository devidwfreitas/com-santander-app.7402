import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class lyj extends DialogFragment {
  public static final String a = "title-key";
  
  public static final String b = "image-base64-key";
  
  public static final String c = "image-res-key";
  
  public static final String d = "desc-key";
  
  private TextView e;
  
  private ImageView f;
  
  private TextView g;
  
  private Button h;
  
  private String i = "";
  
  private String j = "";
  
  private String k = "";
  
  private int l = 0;
  
  public static lyj a(String paramString1, int paramInt, String paramString2) {
    Bundle bundle = new Bundle();
    bundle.putString("title-key", paramString1);
    bundle.putInt("image-res-key", paramInt);
    bundle.putString("desc-key", paramString2);
    lyj lyj1 = new lyj();
    lyj1.setArguments(bundle);
    return lyj1;
  }
  
  public static lyj a(String paramString1, String paramString2, String paramString3) {
    Bundle bundle = new Bundle();
    bundle.putString("title-key", paramString1);
    bundle.putString("image-base64-key", paramString2);
    bundle.putString("desc-key", paramString3);
    lyj lyj1 = new lyj();
    lyj1.setArguments(bundle);
    return lyj1;
  }
  
  private void a() {
    if (!TextUtils.isEmpty(this.i)) {
      this.e.setText(this.i);
    } else {
      this.e.setVisibility(8);
    } 
    try {
      if (!TextUtils.isEmpty(this.j)) {
        this.f.setImageBitmap(mhj.o(this.j));
      } else if (this.l > 0) {
        this.f.setImageResource(this.l);
      } else {
        this.f.setVisibility(8);
      } 
      if (!TextUtils.isEmpty(this.k)) {
        this.g.setText(this.k);
        return;
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      this.f.setVisibility(8);
      if (!TextUtils.isEmpty(this.k)) {
        this.g.setText(this.k);
        return;
      } 
    } 
    this.g.setVisibility(8);
  }
  
  private void a(View paramView) {
    this.e = (TextView)paramView.findViewById(2131755789);
    this.f = (ImageView)paramView.findViewById(2131756950);
    this.g = (TextView)paramView.findViewById(2131755914);
    this.h = (Button)paramView.findViewById(2131756865);
    this.h.setOnClickListener(new lyk(this));
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("title-key") && !TextUtils.isEmpty(getArguments().getString("title-key")))
      this.i = getArguments().getString("title-key"); 
    if (getArguments() != null && getArguments().containsKey("image-base64-key") && !TextUtils.isEmpty(getArguments().getString("image-base64-key"))) {
      this.j = getArguments().getString("image-base64-key");
    } else if (getArguments() != null && getArguments().containsKey("image-res-key")) {
      this.l = getArguments().getInt("image-res-key");
    } 
    if (getArguments() != null && getArguments().containsKey("desc-key") && !TextUtils.isEmpty(getArguments().getString("desc-key")))
      this.k = getArguments().getString("desc-key"); 
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968977, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lyj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */