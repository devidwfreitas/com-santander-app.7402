import android.media.MediaPlayer;

class erl implements MediaPlayer.OnCompletionListener {
  erl(erk paramerk) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer) {
    paramMediaPlayer.stop();
    paramMediaPlayer.release();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\erl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */