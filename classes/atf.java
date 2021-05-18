import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

public class atf extends RecyclerView.ViewHolder implements View.OnClickListener {
  private final asz a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private FrameLayout e;
  
  private ImageView f;
  
  private ImageView g;
  
  private LinearLayout h;
  
  private ProgressBar i;
  
  private TextView j;
  
  private ImageView k;
  
  private FrameLayout l;
  
  private LinearLayout m;
  
  public atf(View paramView, asz paramasz) {
    super(paramView);
    this.a = paramasz;
    this.b = (TextView)paramView.findViewById(api.agent_name_file_tv);
    this.c = (TextView)paramView.findViewById(api.agent_file_name_tv);
    this.d = (TextView)paramView.findViewById(api.agent_file_size_tv);
    this.e = (FrameLayout)paramView.findViewById(api.agent_file_download_fl);
    this.f = (ImageView)paramView.findViewById(api.agent_start_download_imv);
    this.g = (ImageView)paramView.findViewById(api.agent_stop_download_imv);
    this.h = (LinearLayout)paramView.findViewById(api.agent_file_progress_ll);
    this.i = (ProgressBar)paramView.findViewById(api.agent_file_download_pb);
    this.j = (TextView)paramView.findViewById(api.agent_file_time_tv);
    this.k = (ImageView)paramView.findViewById(api.agent_file_imv);
    this.l = (FrameLayout)paramView.findViewById(api.agent_file_frame_layout);
    this.m = (LinearLayout)paramView.findViewById(api.agent_stop_download_ll);
    this.f.setOnClickListener(this);
    this.g.setOnClickListener(this);
    this.l.setOnClickListener(this);
  }
  
  public void a(int paramInt) {
    this.i.setProgress(paramInt);
  }
  
  public void a(ark paramark) {
    byte b = 8;
    FrameLayout frameLayout = this.e;
    if (!paramark.l().g() && (!paramark.l().o() || paramark.l().l() || paramark.v()))
      b = 0; 
    frameLayout.setVisibility(b);
  }
  
  public void a(String paramString) {
    this.b.setText(paramString);
  }
  
  public void b(int paramInt) {
    this.k.setImageResource(paramInt);
  }
  
  public void b(ark paramark) {
    byte b = 8;
    LinearLayout linearLayout = this.h;
    if (!paramark.l().g() && (paramark.l().o() || !paramark.l().l() || !paramark.v()))
      b = 0; 
    linearLayout.setVisibility(b);
  }
  
  public void b(String paramString) {
    this.c.setText(paramString);
  }
  
  public void c(ark paramark) {
    byte b = 8;
    LinearLayout linearLayout = this.m;
    if (!paramark.l().g() && (paramark.l().o() || !paramark.l().l() || !paramark.v()))
      b = 0; 
    linearLayout.setVisibility(b);
  }
  
  public void c(String paramString) {
    this.d.setText(paramString);
  }
  
  public void d(String paramString) {
    this.j.setText(paramString);
  }
  
  public void onClick(View paramView) {
    int i = getAdapterPosition();
    if (paramView.getId() == api.agent_start_download_imv) {
      this.a.h(i);
      return;
    } 
    if (paramView.getId() == api.agent_stop_download_imv) {
      this.a.e(i);
      return;
    } 
    if (paramView.getId() == api.agent_file_frame_layout) {
      this.a.g(i);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\atf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */