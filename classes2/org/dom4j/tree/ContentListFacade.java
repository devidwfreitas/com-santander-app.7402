package org.dom4j.tree;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.dom4j.Node;

public class ContentListFacade<T extends Node> extends AbstractList<T> {
  private AbstractBranch branch;
  
  private List<T> branchContent;
  
  public ContentListFacade(AbstractBranch paramAbstractBranch, List<T> paramList) {
    this.branch = paramAbstractBranch;
    this.branchContent = paramList;
  }
  
  public void add(int paramInt, T paramT) {
    this.branch.childAdded((Node)paramT);
    this.branchContent.add(paramInt, paramT);
  }
  
  public boolean add(T paramT) {
    this.branch.childAdded((Node)paramT);
    return this.branchContent.add(paramT);
  }
  
  public boolean addAll(int paramInt, Collection<? extends T> paramCollection) {
    int i = this.branchContent.size();
    Iterator<? extends T> iterator = paramCollection.iterator();
    while (iterator.hasNext()) {
      add(paramInt, iterator.next());
      i--;
      paramInt++;
    } 
    return (i == this.branchContent.size());
  }
  
  public boolean addAll(Collection<? extends T> paramCollection) {
    int i = this.branchContent.size();
    Iterator<? extends T> iterator = paramCollection.iterator();
    while (iterator.hasNext()) {
      add(iterator.next());
      i++;
    } 
    return (i == this.branchContent.size());
  }
  
  public void clear() {
    for (Node node : this)
      this.branch.childRemoved(node); 
    this.branchContent.clear();
  }
  
  public boolean contains(T paramT) {
    return this.branchContent.contains(paramT);
  }
  
  public boolean containsAll(Collection<?> paramCollection) {
    return this.branchContent.containsAll(paramCollection);
  }
  
  public T get(int paramInt) {
    return this.branchContent.get(paramInt);
  }
  
  protected List<T> getBackingList() {
    return this.branchContent;
  }
  
  public int indexOf(T paramT) {
    return this.branchContent.indexOf(paramT);
  }
  
  public boolean isEmpty() {
    return this.branchContent.isEmpty();
  }
  
  public int lastIndexOf(T paramT) {
    return this.branchContent.lastIndexOf(paramT);
  }
  
  public T remove(int paramInt) {
    Node node = (Node)this.branchContent.remove(paramInt);
    if (node != null)
      this.branch.childRemoved(node); 
    return (T)node;
  }
  
  public boolean remove(T paramT) {
    this.branch.childRemoved((Node)paramT);
    return this.branchContent.remove(paramT);
  }
  
  public boolean removeAll(Collection<?> paramCollection) {
    for (Object object : paramCollection) {
      if (object instanceof Node)
        this.branch.childRemoved((Node)object); 
    } 
    return this.branchContent.removeAll(paramCollection);
  }
  
  public T set(int paramInt, T paramT) {
    this.branch.childAdded((Node)paramT);
    return this.branchContent.set(paramInt, paramT);
  }
  
  public int size() {
    return this.branchContent.size();
  }
  
  public Node[] toArray() {
    return (Node[])this.branchContent.toArray();
  }
  
  public Node[] toArray(Node[] paramArrayOfNode) {
    return this.branchContent.<Node>toArray(paramArrayOfNode);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\ContentListFacade.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */