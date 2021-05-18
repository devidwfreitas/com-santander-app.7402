import android.media.MediaPlayer;

class lzb implements MediaPlayer.OnCompletionListener {
  lzb(lyy paramlyy) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer) {
    lyy.e(this.a).b().setText("00:00");
    lyy.e(this.a).setImageButtonPlay(2130838600);
    lyy.f(this.a).setClickable(true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lzb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */