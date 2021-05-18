package org.dom4j.tree;

import java.util.List;
import org.dom4j.Node;

public class BackedList<T extends Node> extends LazyList<T> {
  private final AbstractBranch branch;
  
  private final List<Node> branchContent;
  
  public BackedList(AbstractBranch paramAbstractBranch, List<Node> paramList) {
    this.branch = paramAbstractBranch;
    this.branchContent = paramList;
  }
  
  public BackedList(AbstractBranch paramAbstractBranch, List<Node> paramList, List<T> paramList1) {
    this(paramAbstractBranch, paramList);
    addAll(paramList1);
  }
  
  public void add(int paramInt, T paramT) {
    int i;
    if (paramInt < 0)
      throw new IndexOutOfBoundsException("Index value: " + paramInt + " is less than zero"); 
    if (paramInt > size())
      throw new IndexOutOfBoundsException("Index value: " + paramInt + " cannot be greater than " + "the size: " + size()); 
    if (size() == 0) {
      i = this.branchContent.size();
    } else if (paramInt < size()) {
      i = this.branchContent.indexOf(get(paramInt));
    } else {
      i = this.branchContent.indexOf(get(size() - 1)) + 1;
    } 
    this.branch.addNode(i, (Node)paramT);
    super.add(paramInt, paramT);
  }
  
  public boolean add(T paramT) {
    this.branch.addNode((Node)paramT);
    return super.add(paramT);
  }
  
  public void addLocal(T paramT) {
    super.add(paramT);
  }
  
  public void clear() {
    for (Node node : this) {
      this.branchContent.remove(node);
      this.branch.childRemoved(node);
    } 
    super.clear();
  }
  
  public T remove(int paramInt) {
    Node node = (Node)super.remove(paramInt);
    if (node != null)
      this.branch.removeNode(node); 
    return (T)node;
  }
  
  public boolean remove(Node paramNode) {
    this.branch.removeNode(paramNode);
    return remove(paramNode);
  }
  
  public T set(int paramInt, T paramT) {
    int i = this.branchContent.indexOf(get(paramInt));
    if (i < 0)
      if (paramInt == 0) {
        i = 0;
      } else {
        i = Integer.MAX_VALUE;
      }  
    if (i < this.branchContent.size()) {
      this.branch.removeNode((Node)get(paramInt));
      this.branch.addNode(i, (Node)paramT);
      this.branch.childAdded((Node)paramT);
      return super.set(paramInt, paramT);
    } 
    this.branch.removeNode((Node)get(paramInt));
    this.branch.addNode((Node)paramT);
    this.branch.childAdded((Node)paramT);
    return super.set(paramInt, paramT);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\tree\BackedList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */