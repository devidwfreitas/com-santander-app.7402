import android.app.Activity;
import android.text.Html;
import android.view.View;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

public class gjh implements View.OnClickListener {
  public gjh(ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity paramParcelamentoFaturaNaoCorrentistaConfirmacaoActivity) {}
  
  public void onClick(View paramView) {
    mxn.b((Activity)this.a, "Atenção", Html.fromHtml(new String("O Parcelamento de fatura está sujeito à disponibilidade e critérios de elegibilidade do Santander e inclui apenas o valor total da fatura no momento da contratação, sem considerar as compras parceladas a vencer nos próximos meses. Há incidência de encargos contratuais e o valor mínimo para contratação é de R$ 150,00. O limite será comprometido no valor das parcelas pendentes e, ao pagar as parcelas nos próximos meses, seu limite será automaticamente recomposto. <br/><br/>".concat(" Esta opção não é válida para clientes com mais de 60 dias de atraso. Caso o pagamento da 1ª parcela, ou pelo menos, o valor do Pagamento Mínimo da fatura, não seja realizado até a data do vencimento da Fatura, serão cobrados encargos de mora sobre o saldo devedor em atraso. Além disso, até a identificação do pagamento o cartão poderá ser bloqueado. <br/><br/>").concat("Para efetivar o parcelamento de fatura é necessário realizar o pagamento exato da 1ª parcela em um de nossos canais de relacionamiento até a data de vencimento da sua fatura."))).toString(), false, "Fechar");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gjh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */