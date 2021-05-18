package android.support.v4.widget;

class ContentLoadingProgressBar$2 implements Runnable {
  public void run() {
    ContentLoadingProgressBar.this.mPostedShow = false;
    if (!ContentLoadingProgressBar.this.mDismissed) {
      ContentLoadingProgressBar.this.mStartTime = System.currentTimeMillis();
      ContentLoadingProgressBar.this.setVisibility(0);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\ContentLoadingProgressBar$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */