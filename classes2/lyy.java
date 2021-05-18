import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.PowerManager;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;
import com.santander.app.seguros.ui.widgets.AudioPlayerView;
import java.io.File;
import java.text.SimpleDateFormat;

public class lyy extends Fragment implements mbc {
  private static final String a = "response-key";
  
  private static final int b = 8557;
  
  private MediaPlayer c = null;
  
  private String d;
  
  private String e;
  
  private boolean f = true;
  
  private SimpleDateFormat g;
  
  private int h = 0;
  
  private Handler i;
  
  private Runnable j;
  
  private TextView k;
  
  private ImageButton l;
  
  private AudioPlayerView m;
  
  private TextView n;
  
  private Button o;
  
  private Button p;
  
  private TextView q;
  
  private SinisterActivity r;
  
  private kvb s;
  
  private mgf t;
  
  private mgf u;
  
  private PowerManager.WakeLock v;
  
  private MediaRecorder w = null;
  
  public static lyy a(kvb paramkvb) {
    Bundle bundle = new Bundle();
    bundle.putString("response-key", (new ejm()).b(paramkvb));
    lyy lyy1 = new lyy();
    lyy1.setArguments(bundle);
    return lyy1;
  }
  
  private void a(int paramInt, Handler paramHandler) {
    this.j = new lzd(this, paramHandler);
    this.j.run();
    this.u = new lze(this, paramInt, 1000L);
  }
  
  private void a(View paramView) {
    this.k = (TextView)paramView.findViewById(2131755789);
    this.l = (ImageButton)paramView.findViewById(2131757341);
    this.m = (AudioPlayerView)paramView.findViewById(2131757342);
    this.n = (TextView)paramView.findViewById(2131757343);
    this.o = (Button)paramView.findViewById(2131755733);
    this.o.setOnClickListener(new lzg(this));
    this.p = (Button)paramView.findViewById(2131757344);
    this.q = (TextView)paramView.findViewById(2131755914);
    this.p.setOnClickListener(new lzh(this));
  }
  
  private void a(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      this.c = new MediaPlayer();
      try {
        this.c.setDataSource(paramString);
        this.c.prepare();
        this.m.a().setProgress(0);
        this.m.b().setText(this.g.format(Integer.valueOf(this.c.getDuration())));
        return;
      } catch (Exception exception) {
        exception.printStackTrace();
        return;
      } 
    } 
  }
  
  private void b(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      File file = new File(paramString);
      if (file != null && file.exists()) {
        if (file.delete()) {
          this.p.setVisibility(0);
          return;
        } 
      } else {
        return;
      } 
    } else {
      return;
    } 
    Log.e("RECORD", "ERRO AO EXCLUIR");
  }
  
  public static void blockView(View paramView) {
    paramView.setEnabled(false);
    (new Handler()).postDelayed(new lzf(paramView), 1000L);
  }
  
  private void c() {
    if (Boolean.valueOf(Environment.getExternalStorageState().equals("mounted")).booleanValue()) {
      System.out.println("There is SDCard");
      return;
    } 
    System.out.println("There is no SDCard");
  }
  
  private void d() {
    c();
    this.g = new SimpleDateFormat("mm:ss");
    this.i = new Handler();
    this.m.setListener(this);
    this.k.setText(this.s.e());
    this.l.setOnClickListener(new lyz(this));
    if ((new File(m())).exists()) {
      j();
      this.p.setVisibility(8);
      return;
    } 
    this.m.setVisibility(8);
  }
  
  private void e() {
    String[] arrayOfString = mhf.a((Context)this.r, false, new String[] { "android.permission.RECORD_AUDIO", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.WAKE_LOCK" });
    if (arrayOfString != null && arrayOfString.length > 0) {
      requestPermissions(arrayOfString, 8557);
      return;
    } 
    this.p.setVisibility(8);
    this.o.setClickable(false);
    if (this.f) {
      this.n.setVisibility(0);
      this.m.setVisibility(8);
      k();
      this.l.setImageResource(2130838642);
      h();
      this.f = false;
      return;
    } 
    i();
  }
  
  private void f() {
    this.v = ((PowerManager)this.r.getSystemService("power")).newWakeLock(26, "My Lock");
    this.v.acquire();
  }
  
  private void g() {
    if (this.v != null) {
      this.v.release();
      this.v = null;
    } 
  }
  
  private void h() {
    if (this.t != null)
      this.t.b(); 
    this.t = new lza(this, getResources().getInteger(2131558414), 1000L);
    this.t.c();
  }
  
  private void i() {
    if (this.t != null)
      this.t.b(); 
    l();
    j();
    g();
  }
  
  private void j() {
    this.l.setImageResource(2130838334);
    this.o.setClickable(true);
    this.n.setVisibility(8);
    a(this.d);
    this.m.setVisibility(0);
    this.m.setImageButtonPlay(2130838600);
    this.f = true;
    this.h = 0;
  }
  
  private void k() {
    blockView((View)this.l);
    if (this.w == null)
      n(); 
    try {
      this.w.prepare();
      this.w.start();
      f();
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    this.q.setText(getString(2131298589));
  }
  
  private void l() {
    if (this.w != null)
      try {
        this.w.stop();
        this.w.release();
        this.w = null;
      } catch (RuntimeException runtimeException) {
        runtimeException.printStackTrace();
      }  
    this.q.setText(getString(2131296874));
  }
  
  private String m() {
    return Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "voices/audio_sinister.m4a";
  }
  
  private void n() {
    this.d = Environment.getExternalStorageDirectory().getAbsolutePath();
    b(this.d);
    o();
    this.d += File.separator + "voices/audio_sinister.m4a";
    if (this.w == null) {
      this.w = new MediaRecorder();
      this.w.setAudioSource(1);
      this.w.setOutputFormat(2);
      this.w.setAudioEncoder(3);
      this.w.setAudioSamplingRate(16000);
      this.w.setAudioChannels(1);
      this.w.setOutputFile(this.d);
    } 
  }
  
  private void o() {
    File file = new File(this.d + File.separator + "voices");
    if (!file.exists())
      file.mkdir(); 
  }
  
  private void p() {
    this.c = new MediaPlayer();
    try {
      this.c.setDataSource(this.d);
      this.c.prepare();
      int i = this.c.getDuration();
      this.m.a().setMax(i);
      a(i, this.i);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void q() {
    mhg.a().c("audio-base64-key");
    if (!TextUtils.isEmpty(this.d))
      if ((new File(this.d)).exists()) {
        this.e = mhj.v(this.d);
        if (!TextUtils.isEmpty(this.e)) {
          mhg.a().a("audio-base64-key", this.e);
        } else {
          Log.e("Audio", "No Save");
        } 
      } else {
        this.e = "";
      }  
    kva kva = new kva();
    if (mhv.INSTANCE.getCoverageId() != -1L)
      kva.b(Long.valueOf(mhv.INSTANCE.getCoverageId())); 
    kva.a(kuz.NEXT);
    kva.a(this.s.q());
    kva.a(this.e);
    kva.a(kuq.AUDIO);
    this.r.a(kva);
  }
  
  public void a() {
    if (this.c != null) {
      if (this.c.isPlaying()) {
        this.m.setImageButtonPlay(2130838600);
        this.l.setClickable(true);
        this.c.pause();
        this.u.d();
        this.h = this.c.getCurrentPosition();
      } else {
        frq.d("Seguros_Sinistro_Acionar_ContarSobreAcontecido_Acao", "ReproduzirGravacao");
        this.m.setImageButtonPlay(2130838587);
        this.l.setClickable(false);
        if (this.h > 0) {
          this.c.seekTo(this.h);
          this.c.start();
          this.u.e();
          this.h = 0;
        } else {
          p();
          this.c.start();
          this.u.c();
        } 
      } 
      this.c.setOnCompletionListener(new lzb(this));
    } 
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    if (this.c.isPlaying()) {
      if (paramBoolean)
        this.c.seekTo(paramInt); 
      this.m.b().setText(this.g.format(Integer.valueOf(this.c.getDuration() - paramInt)));
    } 
  }
  
  public void b() {
    this.l.setClickable(true);
    Animation animation = AnimationUtils.loadAnimation((Context)this.r, 2131034145);
    animation.setDuration(400L);
    animation.setAnimationListener(new lzc(this));
    this.m.startAnimation(animation);
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof android.support.v7.app.AppCompatActivity)
      this.r = (SinisterActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("response-key"))
      this.s = (new ejm()).<kvb>a(getArguments().getString("response-key"), kvb.class); 
    mhg.a().c("audio-base64-key");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969053, paramViewGroup, false);
    a(view);
    d();
    return view;
  }
  
  public void onPause() {
    super.onPause();
    i();
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfint) {
    switch (paramInt) {
      default:
        return;
      case 8557:
        break;
    } 
    if (mhf.a((Context)this.r, paramArrayOfString)) {
      e();
      return;
    } 
    mhj.c((Context)this.r, getResources().getString(2131297378));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lyy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */