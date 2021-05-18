package android.support.v4.text.util;

import java.util.Comparator;

final class LinkifyCompat$1 implements Comparator<LinkifyCompat$LinkSpec> {
  public final int compare(LinkifyCompat$LinkSpec paramLinkifyCompat$LinkSpec1, LinkifyCompat$LinkSpec paramLinkifyCompat$LinkSpec2) {
    if (paramLinkifyCompat$LinkSpec1.start >= paramLinkifyCompat$LinkSpec2.start) {
      if (paramLinkifyCompat$LinkSpec1.start > paramLinkifyCompat$LinkSpec2.start)
        return 1; 
      if (paramLinkifyCompat$LinkSpec1.end < paramLinkifyCompat$LinkSpec2.end)
        return 1; 
      if (paramLinkifyCompat$LinkSpec1.end <= paramLinkifyCompat$LinkSpec2.end)
        return 0; 
    } 
    return -1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\tex\\util\LinkifyCompat$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */