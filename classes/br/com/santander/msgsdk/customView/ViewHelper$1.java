package br.com.santander.msgsdk.customView;

class ViewHelper$1 implements SwipeLayout$DragStateChangeListener {
  public void onDragStateChanged(int paramInt) {
    ViewHelper.access$000(ViewHelper.this).put(id, Integer.valueOf(paramInt));
    if (ViewHelper.access$100(ViewHelper.this))
      ViewHelper.access$200(ViewHelper.this, id, swipeLayout); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\customView\ViewHelper$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */