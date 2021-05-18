package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class LoaderManager {
  public static void enableDebugLogging(boolean paramBoolean) {
    LoaderManagerImpl.DEBUG = paramBoolean;
  }
  
  public abstract void destroyLoader(int paramInt);
  
  public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public abstract <D> Loader<D> getLoader(int paramInt);
  
  public boolean hasRunningLoaders() {
    return false;
  }
  
  public abstract <D> Loader<D> initLoader(int paramInt, Bundle paramBundle, LoaderManager$LoaderCallbacks<D> paramLoaderManager$LoaderCallbacks);
  
  public abstract <D> Loader<D> restartLoader(int paramInt, Bundle paramBundle, LoaderManager$LoaderCallbacks<D> paramLoaderManager$LoaderCallbacks);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\LoaderManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */