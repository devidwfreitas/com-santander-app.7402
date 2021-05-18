package com.datami.smi;

import android.app.Activity;
import android.content.Context;

final class b implements Runnable {
  private Activity b;
  
  public b(a parama, Activity paramActivity) {
    this.b = paramActivity;
  }
  
  public final void run() {
    SmiSdk.appVisibility((Context)this.b, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */