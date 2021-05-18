import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.ca.android.app.CaMDOProgressBar;

public class ati extends RecyclerView.ViewHolder implements View.OnClickListener {
  private final asz a;
  
  private FrameLayout b;
  
  private TextView c;
  
  private ImageView d;
  
  private TextView e;
  
  private TextView f;
  
  private ImageView g;
  
  private ImageView h;
  
  private ProgressBar i;
  
  private TextView j;
  
  public ati(View paramView, asz paramasz) {
    super(paramView);
    this.a = paramasz;
    this.b = (FrameLayout)paramView.findViewById(api.agent_file_fl);
    this.c = (TextView)paramView.findViewById(api.agent_name_text_view);
    this.d = (ImageView)paramView.findViewById(api.agent_image_received_imv);
    this.e = (TextView)paramView.findViewById(api.agent_file_name_new_tv);
    this.f = (TextView)paramView.findViewById(api.agent_file_size_new_tv);
    this.g = (ImageView)paramView.findViewById(api.agent_cancel_receiving_image_imv);
    this.h = (ImageView)paramView.findViewById(api.agent_start_download_image_imv);
    this.i = (ProgressBar)paramView.findViewById(api.agent_file_pb);
    this.j = (TextView)paramView.findViewById(api.agent_time_file_tv);
    this.b.setOnClickListener(this);
    this.h.setOnClickListener(this);
    this.g.setOnClickListener(this);
  }
  
  public void a(int paramInt) {
    this.i.setProgress(paramInt);
  }
  
  public void a(ark paramark) {
    byte b = 8;
    ProgressBar progressBar = this.i;
    if (!paramark.l().g() && paramark.l().o())
      b = 0; 
    CaMDOProgressBar.setVisibility(progressBar, b);
  }
  
  public void a(ark paramark, Context paramContext) {
    if (paramark.l().c() != null) {
      if (paramark.l().x() && !paramark.l().g()) {
        this.d.setImageResource(aph.thumbnail_download_fail);
        return;
      } 
    } else {
      return;
    } 
    if (paramark.l().y() && !paramark.l().g()) {
      bitmap = aqs.a(paramark.l().z().getAbsolutePath());
      this.d.setImageDrawable((Drawable)new BitmapDrawable(paramContext.getResources(), bitmap));
      return;
    } 
    Bitmap bitmap = aqs.a(bitmap.l().c().getAbsolutePath());
    this.d.setImageDrawable((Drawable)new BitmapDrawable(paramContext.getResources(), bitmap));
  }
  
  public void a(String paramString) {
    this.c.setText(paramString);
  }
  
  public void b(ark paramark) {
    byte b = 8;
    ImageView imageView = this.h;
    if (!paramark.l().g() && (!paramark.l().o() || paramark.l().l() || paramark.v()))
      b = 0; 
    imageView.setVisibility(b);
  }
  
  public void b(String paramString) {
    this.e.setText(paramString);
  }
  
  public void c(ark paramark) {
    byte b = 8;
    ImageView imageView = this.g;
    if (!paramark.l().g() && paramark.l().o())
      b = 0; 
    imageView.setVisibility(b);
  }
  
  public void c(String paramString) {
    this.f.setText(paramString);
  }
  
  public void d(String paramString) {
    this.j.setText(paramString);
  }
  
  public void onClick(View paramView) {
    int i = getAdapterPosition();
    if (paramView.getId() == api.agent_start_download_image_imv) {
      this.a.h(i);
      return;
    } 
    if (paramView.getId() == api.agent_cancel_receiving_image_imv) {
      this.a.e(i);
      return;
    } 
    if (paramView.getId() == api.agent_file_fl) {
      this.a.g(i);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ati.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */