import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public enum mhv {
  INSTANCE;
  
  private long coverageId = -1L;
  
  private String coverageName;
  
  private List<kvo> flowCache = new ArrayList<kvo>();
  
  private Map<kuq, kva> mapRequest = new HashMap<kuq, kva>();
  
  private Map<kuq, kvb> mapResponse = new HashMap<kuq, kvb>();
  
  static {
    $VALUES = new mhv[] { INSTANCE };
  }
  
  private List<kvo> copyFlow(List<kvo> paramList) {
    ArrayList<kvo> arrayList = new ArrayList();
    for (kvo kvo1 : paramList) {
      kvo kvo2 = new kvo();
      kvo2.a(kvo1.a());
      kvo2.a(kvo1.b());
      arrayList.add(kvo2);
    } 
    return arrayList;
  }
  
  public void addRequest(kuq paramkuq, kva paramkva) {
    this.mapRequest.put(paramkuq, paramkva);
  }
  
  public void addRequestList(List<kva> paramList) {
    for (kva kva : paramList)
      this.mapRequest.put(kva.g(), kva); 
  }
  
  public void addResponse(kuq paramkuq, kvb paramkvb) {
    this.mapResponse.put(paramkuq, paramkvb);
  }
  
  public void clear() {
    this.mapRequest.clear();
    this.mapResponse.clear();
    if (this.flowCache != null)
      this.flowCache.clear(); 
    this.coverageId = -1L;
  }
  
  public void clearRequest() {
    if (this.mapRequest != null)
      this.mapRequest.clear(); 
  }
  
  public boolean containsRequest(kuq paramkuq) {
    return this.mapRequest.containsKey(paramkuq);
  }
  
  public boolean containsResponse(kuq paramkuq) {
    return this.mapResponse.containsKey(paramkuq);
  }
  
  public kva getAllRequest() {
    kva kva = new kva();
    for (kvo kvo : this.flowCache) {
      kva kva1 = INSTANCE.getRequest(kvo.b());
      if (kva1 != null)
        switch (mhw.a[kvo.b().ordinal()]) {
          case 1:
            kva.b(kva1.j());
            kva.b(Long.valueOf(kva1.r()));
            break;
          case 2:
            kva.a(kva1.d());
            break;
          case 3:
            kva.a(kva1.c());
            kva.a(kva1.k());
            break;
          case 4:
            kva.e(kva1.p());
            kva.d(kva1.o());
            break;
          case 5:
            kva.a(kva1.b());
            kva.a(kva1.m());
            break;
        }  
    } 
    return kva;
  }
  
  public int getCountRequest() {
    return this.mapResponse.size();
  }
  
  public int getCountResponse() {
    return this.mapResponse.size();
  }
  
  public long getCoverageId() {
    return this.coverageId;
  }
  
  public String getCoverageName() {
    return this.coverageName;
  }
  
  public List<kvo> getFlowCache() {
    return copyFlow(this.flowCache);
  }
  
  public Map<kuq, kva> getMapRequest() {
    return this.mapRequest;
  }
  
  public Map<kuq, kvb> getMapResponse() {
    return this.mapResponse;
  }
  
  public kva getRequest(kuq paramkuq) {
    return containsRequest(paramkuq) ? this.mapRequest.get(paramkuq) : null;
  }
  
  public kvb getResponse(kuq paramkuq) {
    return containsResponse(paramkuq) ? this.mapResponse.get(paramkuq) : null;
  }
  
  public boolean removeRequest(kuq paramkuq) {
    if (containsRequest(paramkuq)) {
      this.mapRequest.remove(paramkuq);
      return true;
    } 
    return false;
  }
  
  public boolean removeResponse(kuq paramkuq) {
    if (containsResponse(paramkuq)) {
      this.mapResponse.remove(paramkuq);
      return true;
    } 
    return false;
  }
  
  public void setCoverageId(long paramLong) {
    this.coverageId = paramLong;
  }
  
  public void setCoverageName(String paramString) {
    this.coverageName = paramString;
  }
  
  public void setFlowCache(List<kvo> paramList) {
    this.flowCache = copyFlow(paramList);
  }
  
  public void setMapRequest(Map<kuq, kva> paramMap) {
    this.mapRequest = paramMap;
  }
  
  public void setMapResponse(Map<kuq, kvb> paramMap) {
    this.mapResponse = paramMap;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */