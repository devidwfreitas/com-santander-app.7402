package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.Loader;

public interface LoaderManager$LoaderCallbacks<D> {
  Loader<D> onCreateLoader(int paramInt, Bundle paramBundle);
  
  void onLoadFinished(Loader<D> paramLoader, D paramD);
  
  void onLoaderReset(Loader<D> paramLoader);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\LoaderManager$LoaderCallbacks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */