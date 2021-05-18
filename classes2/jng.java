import com.santander.app.lojaonline.domain.LojaCampaign;
import java.util.ArrayList;
import java.util.Collections;

public class jng extends ArrayList<LojaCampaign.Campaign> {
  public jng() {
    LojaCampaign.Campaign campaign = new LojaCampaign.Campaign();
    campaign.c = 1;
    campaign.g = jou.a(2130838918);
    campaign.a = 1;
    campaign.e = "santanderpf://deeplink?tela=investimentosFundos";
    campaign.f = "Fundos";
    add(campaign);
    campaign = new LojaCampaign.Campaign();
    campaign.c = 1;
    campaign.g = jou.a(2130838917);
    campaign.a = 1;
    campaign.e = "santanderpf://deeplink?tela=investimentosCDB";
    campaign.f = "CDB";
    add(campaign);
    campaign = new LojaCampaign.Campaign();
    campaign.c = 1;
    campaign.g = jou.a(2130838919);
    campaign.a = 3;
    campaign.e = "https://santander.custhelp.com/app/chat/chat_santander/p/94";
    campaign.f = "Previdencia";
    add(campaign);
    Collections.shuffle(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jng.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */