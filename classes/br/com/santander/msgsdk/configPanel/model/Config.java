package br.com.santander.msgsdk.configPanel.model;

import java.util.ArrayList;
import java.util.List;

public class Config {
  static List<Category> categoryList;
  
  private static volatile Config config;
  
  public List<Category> getCategoryList() {
    return categoryList;
  }
  
  public List<Category> getConfigCategoryListMock() {
    ArrayList<Category> arrayList = new ArrayList();
    Category category1 = new Category("1", "Conta Corrente", "Seja notificado ao realizar transferências e saques.", "Você deixará de receber notificações via push ao realizar transferências. Tem certeza que deseja continuar?", true);
    Category category2 = new Category("2", "Cartões", "Acompanhe todas suas compras no cartão e receba alertas como fechamento de fatura.", "Você deixará de receber notificações via push após suas compras. Tem certeza que deseja continuar?", true);
    Category category3 = new Category("3", "Ofertas especiais", "Receba as melhores ofertas, promoções e alertas importantes como vencimento de investimentos.", "Você deixará de receber notificações via push com alertas importantes sobre sua conta. Tem certeza que deseja continuar?", false);
    arrayList.add(category1);
    arrayList.add(category2);
    arrayList.add(category3);
    return arrayList;
  }
  
  public void setConfigCategoryModelList(List<Category> paramList) {
    categoryList = paramList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\model\Config.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */