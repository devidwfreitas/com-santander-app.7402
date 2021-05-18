package android.support.v4.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class FragmentActivity$HostCallbacks extends FragmentHostCallback<FragmentActivity> {
  public FragmentActivity$HostCallbacks() {
    super(paramFragmentActivity);
  }
  
  public void onAttachFragment(Fragment paramFragment) {
    FragmentActivity.this.onAttachFragment(paramFragment);
  }
  
  @SuppressLint({"NewApi"})
  public void onDump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    FragmentActivity.this.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  @Nullable
  public View onFindViewById(int paramInt) {
    return FragmentActivity.this.findViewById(paramInt);
  }
  
  public FragmentActivity onGetHost() {
    return FragmentActivity.this;
  }
  
  public LayoutInflater onGetLayoutInflater() {
    return FragmentActivity.this.getLayoutInflater().cloneInContext((Context)FragmentActivity.this);
  }
  
  public int onGetWindowAnimations() {
    Window window = FragmentActivity.this.getWindow();
    return (window == null) ? 0 : (window.getAttributes()).windowAnimations;
  }
  
  public boolean onHasView() {
    Window window = FragmentActivity.this.getWindow();
    return (window != null && window.peekDecorView() != null);
  }
  
  public boolean onHasWindowAnimations() {
    return (FragmentActivity.this.getWindow() != null);
  }
  
  public void onRequestPermissionsFromFragment(@NonNull Fragment paramFragment, @NonNull String[] paramArrayOfString, int paramInt) {
    FragmentActivity.this.requestPermissionsFromFragment(paramFragment, paramArrayOfString, paramInt);
  }
  
  public boolean onShouldSaveFragmentState(Fragment paramFragment) {
    return !FragmentActivity.this.isFinishing();
  }
  
  public boolean onShouldShowRequestPermissionRationale(@NonNull String paramString) {
    return ActivityCompat.shouldShowRequestPermissionRationale((Activity)FragmentActivity.this, paramString);
  }
  
  public void onStartActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt) {
    FragmentActivity.this.startActivityFromFragment(paramFragment, paramIntent, paramInt);
  }
  
  public void onStartActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt, @Nullable Bundle paramBundle) {
    FragmentActivity.this.startActivityFromFragment(paramFragment, paramIntent, paramInt, paramBundle);
  }
  
  public void onStartIntentSenderFromFragment(Fragment paramFragment, IntentSender paramIntentSender, int paramInt1, @Nullable Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle) {
    FragmentActivity.this.startIntentSenderFromFragment(paramFragment, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
  }
  
  public void onSupportInvalidateOptionsMenu() {
    FragmentActivity.this.supportInvalidateOptionsMenu();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentActivity$HostCallbacks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */