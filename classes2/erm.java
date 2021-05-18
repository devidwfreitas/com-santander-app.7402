import android.media.MediaPlayer;
import android.util.Log;

class erm implements MediaPlayer.OnErrorListener {
  erm(erk paramerk) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2) {
    Log.w(erk.e(), "Failed to beep " + paramInt1 + ", " + paramInt2);
    paramMediaPlayer.stop();
    paramMediaPlayer.release();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\erm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */