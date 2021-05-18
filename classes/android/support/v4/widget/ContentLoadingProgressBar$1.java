package android.support.v4.widget;

class ContentLoadingProgressBar$1 implements Runnable {
  public void run() {
    ContentLoadingProgressBar.this.mPostedHide = false;
    ContentLoadingProgressBar.this.mStartTime = -1L;
    ContentLoadingProgressBar.this.setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\ContentLoadingProgressBar$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */