import android.view.animation.Animation;

class lzc implements Animation.AnimationListener {
  lzc(lyy paramlyy) {}
  
  public void onAnimationEnd(Animation paramAnimation) {
    lyy.e(this.a).setVisibility(8);
    lyy.e(this.a).clearAnimation();
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {
    if (lyy.g(this.a).isPlaying()) {
      lyy.g(this.a).stop();
      lyy.f(this.a).setClickable(true);
      lyy.i(this.a).removeCallbacks(lyy.h(this.a));
      lyy.a(this.a, 0);
    } 
    frq.d("Seguros_Sinistro_Acionar_ContarSobreAcontecido_Acao", "ExcluirGravacao");
    lyy.a(this.a, lyy.j(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lzc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */