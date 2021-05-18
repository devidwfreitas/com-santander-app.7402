package com.santander.app.seguros.utils;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import mhx;

public class SmoothScrollerLinearLayoutManager extends LinearLayoutManager {
  private boolean a = true;
  
  public SmoothScrollerLinearLayoutManager(Context paramContext) {
    super(paramContext);
  }
  
  public SmoothScrollerLinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean) {
    super(paramContext, paramInt, paramBoolean);
  }
  
  public void a(boolean paramBoolean) {
    this.a = paramBoolean;
  }
  
  public boolean canScrollVertically() {
    return (this.a && super.canScrollVertically());
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.State paramState, int paramInt) {
    mhx mhx = new mhx(this, paramRecyclerView.getContext());
    mhx.setTargetPosition(paramInt);
    startSmoothScroll((RecyclerView.SmoothScroller)mhx);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\utils\SmoothScrollerLinearLayoutManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */