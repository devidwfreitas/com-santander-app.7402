import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.ca.android.app.CaMDOProgressBar;

public class atj extends RecyclerView.ViewHolder implements View.OnClickListener {
  private final ata a;
  
  private ImageView b;
  
  private ImageView c;
  
  private TextView d;
  
  private TextView e;
  
  private ImageView f;
  
  private ProgressBar g;
  
  private TextView h;
  
  private ImageView i;
  
  private LinearLayout j;
  
  public atj(View paramView, ata paramata) {
    super(paramView);
    this.a = paramata;
    this.b = (ImageView)paramView.findViewById(api.user_msg_error_imv);
    this.c = (ImageView)paramView.findViewById(api.user_image_sended_imv);
    this.d = (TextView)paramView.findViewById(api.user_file_name_tv);
    this.e = (TextView)paramView.findViewById(api.user_file_size_tv);
    this.f = (ImageView)paramView.findViewById(api.user_cancel_send_image_imv);
    this.g = (ProgressBar)paramView.findViewById(api.user_file_pb);
    this.h = (TextView)paramView.findViewById(api.user_time_tv);
    this.i = (ImageView)paramView.findViewById(api.user_file_status_msg_imv);
    this.j = (LinearLayout)paramView.findViewById(api.user_image_ll);
    this.f.setOnClickListener(this);
    this.b.setOnClickListener(this);
    this.j.setOnClickListener(this);
  }
  
  public void a(int paramInt) {
    this.g.setProgress(paramInt);
  }
  
  public void a(ark paramark) {
    byte b;
    ImageView imageView = this.b;
    if (paramark.o() || paramark.v()) {
      b = 0;
    } else {
      b = 8;
    } 
    imageView.setVisibility(b);
  }
  
  public void a(ark paramark, Context paramContext) {
    Bitmap bitmap = aqs.a(paramark.l().c().getAbsolutePath());
    this.c.setImageDrawable((Drawable)new BitmapDrawable(paramContext.getResources(), bitmap));
  }
  
  public void a(String paramString) {
    this.d.setText(paramString);
  }
  
  public void b(int paramInt) {
    this.i.setImageResource(paramInt);
  }
  
  public void b(ark paramark) {
    boolean bool;
    ImageView imageView = this.f;
    if (paramark.o() || paramark.v() || paramark.n() || paramark.l().g()) {
      bool = true;
    } else {
      bool = false;
    } 
    imageView.setVisibility(bool);
  }
  
  public void b(String paramString) {
    this.e.setText(paramString);
  }
  
  public void c(ark paramark) {
    boolean bool;
    ProgressBar progressBar = this.g;
    if (paramark.o() || paramark.v() || paramark.n() || paramark.l().g()) {
      bool = true;
    } else {
      bool = false;
    } 
    CaMDOProgressBar.setVisibility(progressBar, bool);
  }
  
  public void c(String paramString) {
    this.h.setText(paramString);
  }
  
  public void d(ark paramark) {
    boolean bool;
    ImageView imageView = this.i;
    if (paramark.o() || paramark.v()) {
      bool = true;
    } else {
      bool = false;
    } 
    imageView.setVisibility(bool);
  }
  
  public void onClick(View paramView) {
    int i = getAdapterPosition();
    if (paramView.getId() == api.user_cancel_send_image_imv) {
      this.a.b(getAdapterPosition());
      return;
    } 
    if (paramView.getId() == api.user_msg_error_imv) {
      this.a.c(i);
      return;
    } 
    if (paramView.getId() == api.user_image_ll) {
      this.a.d(i);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\atj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */