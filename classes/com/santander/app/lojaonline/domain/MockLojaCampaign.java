package com.santander.app.lojaonline.domain;

import java.util.Collection;
import jng;

public class MockLojaCampaign extends LojaCampaign {
  public MockLojaCampaign() {
    this.f.addAll((Collection<? extends LojaCampaign$Campaign>)new jng());
    this.f.add(new MockLojaCampaign$CartoesCampaign());
    this.f.add(new MockLojaCampaign$EsferaCampaign());
    this.f.add(new MockLojaCampaign$PassCampaign());
    this.f.add(new MockLojaCampaign$SegurosCampaign());
    this.f.add(new MockLojaCampaign$ConsorcioCampaign());
    this.f.add(new MockLojaCampaign$PouparCampaign());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\lojaonline\domain\MockLojaCampaign.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */