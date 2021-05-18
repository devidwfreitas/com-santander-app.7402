import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.ca.android.app.CaMDOProgressBar;

public class atk extends RecyclerView.ViewHolder implements View.OnClickListener {
  private final ata a;
  
  private ImageView b;
  
  private ProgressBar c;
  
  private TextView d;
  
  private TextView e;
  
  private ImageView f;
  
  private TextView g;
  
  private ImageView h;
  
  private ImageView i;
  
  private FrameLayout j;
  
  public atk(View paramView, ata paramata) {
    super(paramView);
    this.a = paramata;
    this.d = (TextView)paramView.findViewById(api.client_time_tv);
    this.b = (ImageView)paramView.findViewById(api.client_file_imv);
    this.c = (ProgressBar)paramView.findViewById(api.client_file_pb);
    this.e = (TextView)paramView.findViewById(api.client_file_name_tv);
    this.g = (TextView)paramView.findViewById(api.client_file_size_tv);
    this.f = (ImageView)paramView.findViewById(api.stop_upload_imv);
    this.h = (ImageView)paramView.findViewById(api.status_file_imv);
    this.i = (ImageView)paramView.findViewById(api.client_file_error_imv);
    this.j = (FrameLayout)paramView.findViewById(api.client_file_frame_layout);
    this.f.setOnClickListener(this);
    this.i.setOnClickListener(this);
    this.j.setOnClickListener(this);
  }
  
  public void a(int paramInt) {
    this.b.setImageResource(paramInt);
  }
  
  public void a(ark paramark) {
    boolean bool;
    ProgressBar progressBar = this.c;
    if (paramark.o() || paramark.v() || paramark.n()) {
      bool = true;
    } else {
      bool = false;
    } 
    CaMDOProgressBar.setVisibility(progressBar, bool);
  }
  
  public void a(String paramString) {
    this.e.setText(paramString);
  }
  
  public void b(int paramInt) {
    this.c.setProgress(paramInt);
  }
  
  public void b(ark paramark) {
    boolean bool;
    ImageView imageView = this.h;
    if (paramark.o() || paramark.v()) {
      bool = true;
    } else {
      bool = false;
    } 
    imageView.setVisibility(bool);
  }
  
  public void b(String paramString) {
    this.g.setText(paramString);
  }
  
  public void c(int paramInt) {
    this.h.setImageResource(paramInt);
  }
  
  public void c(ark paramark) {
    byte b;
    ImageView imageView = this.i;
    if (paramark.o() || paramark.v()) {
      b = 0;
    } else {
      b = 8;
    } 
    imageView.setVisibility(b);
  }
  
  public void c(String paramString) {
    this.d.setText(paramString);
  }
  
  public void d(ark paramark) {
    boolean bool;
    ImageView imageView = this.f;
    if (paramark.o() || paramark.v() || paramark.n()) {
      bool = true;
    } else {
      bool = false;
    } 
    imageView.setVisibility(bool);
  }
  
  public void onClick(View paramView) {
    int i = getAdapterPosition();
    if (paramView.getId() == api.stop_upload_imv) {
      this.a.b(i);
      return;
    } 
    if (paramView.getId() == api.client_file_error_imv) {
      this.a.c(i);
      return;
    } 
    if (paramView.getId() == api.client_file_frame_layout) {
      this.a.d(i);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\atk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */