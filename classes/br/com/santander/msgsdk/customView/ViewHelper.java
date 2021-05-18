package br.com.santander.msgsdk.customView;

import android.os.Bundle;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ViewHelper {
  private static final String BUNDLE_MAP_KEY = "ViewHelper_Bundle_Map_Key";
  
  private Set<String> lockedSwipeSet = Collections.synchronizedSet(new HashSet<String>());
  
  private Map<String, SwipeLayout> mapLayouts = Collections.synchronizedMap(new HashMap<String, SwipeLayout>());
  
  private Map<String, Integer> mapStates = Collections.synchronizedMap(new HashMap<String, Integer>());
  
  private volatile boolean openOnlyOne = false;
  
  private final Object stateChangeLock = new Object();
  
  private void closeOthers(String paramString, SwipeLayout paramSwipeLayout) {
    synchronized (this.stateChangeLock) {
      if (getOpenCount() > 1) {
        for (Map.Entry<String, Integer> entry : this.mapStates.entrySet()) {
          if (!((String)entry.getKey()).equals(paramString))
            entry.setValue(Integer.valueOf(0)); 
        } 
        for (SwipeLayout swipeLayout : this.mapLayouts.values()) {
          if (swipeLayout != paramSwipeLayout)
            swipeLayout.close(true); 
        } 
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_3} */
  }
  
  private int getOpenCount() {
    Iterator<Integer> iterator = this.mapStates.values().iterator();
    int i = 0;
    while (iterator.hasNext()) {
      int j = ((Integer)iterator.next()).intValue();
      if (j == 2 || j == 3)
        i++; 
    } 
    return i;
  }
  
  private void setLockSwipe(boolean paramBoolean, String... paramVarArgs) {
    if (paramVarArgs != null && paramVarArgs.length != 0) {
      if (paramBoolean) {
        this.lockedSwipeSet.addAll(Arrays.asList(paramVarArgs));
      } else {
        this.lockedSwipeSet.removeAll(Arrays.asList((Object[])paramVarArgs));
      } 
      int j = paramVarArgs.length;
      int i = 0;
      while (true) {
        if (i < j) {
          String str = paramVarArgs[i];
          SwipeLayout swipeLayout = this.mapLayouts.get(str);
          if (swipeLayout != null)
            swipeLayout.setLockDrag(paramBoolean); 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void bind(SwipeLayout paramSwipeLayout, String paramString) {
    if (paramSwipeLayout.shouldRequestLayout())
      paramSwipeLayout.requestLayout(); 
    this.mapLayouts.values().remove(paramSwipeLayout);
    this.mapLayouts.put(paramString, paramSwipeLayout);
    paramSwipeLayout.abort();
    paramSwipeLayout.setDragStateChangeListener(new ViewHelper$1(this, paramString, paramSwipeLayout));
    if (!this.mapStates.containsKey(paramString)) {
      this.mapStates.put(paramString, Integer.valueOf(0));
      paramSwipeLayout.close(false);
    } else {
      int i = ((Integer)this.mapStates.get(paramString)).intValue();
      if (i == 0 || i == 1 || i == 4) {
        paramSwipeLayout.close(false);
      } else {
        paramSwipeLayout.open(false);
      } 
    } 
    paramSwipeLayout.setLockDrag(this.lockedSwipeSet.contains(paramString));
  }
  
  public void closeLayout(String paramString) {
    synchronized (this.stateChangeLock) {
      this.mapStates.put(paramString, Integer.valueOf(0));
      if (this.mapLayouts.containsKey(paramString))
        ((SwipeLayout)this.mapLayouts.get(paramString)).close(true); 
      return;
    } 
  }
  
  public void lockSwipe(String... paramVarArgs) {
    setLockSwipe(true, paramVarArgs);
  }
  
  public void openLayout(String paramString) {
    synchronized (this.stateChangeLock) {
      this.mapStates.put(paramString, Integer.valueOf(2));
      if (this.mapLayouts.containsKey(paramString)) {
        ((SwipeLayout)this.mapLayouts.get(paramString)).open(true);
      } else if (this.openOnlyOne) {
        closeOthers(paramString, this.mapLayouts.get(paramString));
      } 
      return;
    } 
  }
  
  public void restoreStates(Bundle paramBundle) {
    if (paramBundle != null && paramBundle.containsKey("ViewHelper_Bundle_Map_Key")) {
      HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
      paramBundle = paramBundle.getBundle("ViewHelper_Bundle_Map_Key");
      Set set = paramBundle.keySet();
      if (set != null)
        for (String str : set)
          hashMap.put(str, Integer.valueOf(paramBundle.getInt(str)));  
      this.mapStates = (Map)hashMap;
      return;
    } 
  }
  
  public void saveStates(Bundle paramBundle) {
    if (paramBundle == null)
      return; 
    Bundle bundle = new Bundle();
    for (Map.Entry<String, Integer> entry : this.mapStates.entrySet())
      bundle.putInt((String)entry.getKey(), ((Integer)entry.getValue()).intValue()); 
    paramBundle.putBundle("ViewHelper_Bundle_Map_Key", bundle);
  }
  
  public void setOpenOnlyOne(boolean paramBoolean) {
    this.openOnlyOne = paramBoolean;
  }
  
  public void unlockSwipe(String... paramVarArgs) {
    setLockSwipe(false, paramVarArgs);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\customView\ViewHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */