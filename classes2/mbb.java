import android.widget.SeekBar;
import com.santander.app.seguros.ui.widgets.AudioPlayerView;

public class mbb implements SeekBar.OnSeekBarChangeListener {
  public mbb(AudioPlayerView paramAudioPlayerView) {}
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean) {
    if (AudioPlayerView.a(this.a) != null)
      AudioPlayerView.a(this.a).a(paramInt, paramBoolean); 
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public void onStopTrackingTouch(SeekBar paramSeekBar) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mbb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */