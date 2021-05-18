package android.support.transition;

import java.util.ArrayList;

class TransitionPort$ArrayListManager {
  static <T> ArrayList<T> add(ArrayList<T> paramArrayList, T paramT) {
    ArrayList<T> arrayList = paramArrayList;
    if (paramArrayList == null)
      arrayList = new ArrayList<T>(); 
    if (!arrayList.contains(paramT))
      arrayList.add(paramT); 
    return arrayList;
  }
  
  static <T> ArrayList<T> remove(ArrayList<T> paramArrayList, T paramT) {
    ArrayList<T> arrayList = paramArrayList;
    if (paramArrayList != null) {
      paramArrayList.remove(paramT);
      arrayList = paramArrayList;
      if (paramArrayList.isEmpty())
        arrayList = null; 
    } 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\transition\TransitionPort$ArrayListManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */