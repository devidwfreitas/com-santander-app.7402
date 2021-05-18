public enum gwq {
  acordoAbandono, cardCDB, carrinhoAbandonadoPDI, carrinhoCP, carrinhoPoupanca, creditounificado, emprestimo, formalizacao, investimento, link, lojaOnline, parcelamentoFatura, poupanca, tela;
  
  static {
    carrinhoPoupanca = new gwq("carrinhoPoupanca", 3);
    tela = new gwq("tela", 4);
    link = new gwq("link", 5);
    carrinhoCP = new gwq("carrinhoCP", 6);
    parcelamentoFatura = new gwq("parcelamentoFatura", 7);
    cardCDB = new gwq("cardCDB", 8);
    acordoAbandono = new gwq("acordoAbandono", 9);
    formalizacao = new gwq("formalizacao", 10);
    creditounificado = new gwq("creditounificado", 11);
    lojaOnline = new gwq("lojaOnline", 12);
    carrinhoAbandonadoPDI = new gwq("carrinhoAbandonadoPDI", 13);
    $VALUES = new gwq[] { 
        emprestimo, investimento, poupanca, carrinhoPoupanca, tela, link, carrinhoCP, parcelamentoFatura, cardCDB, acordoAbandono, 
        formalizacao, creditounificado, lojaOnline, carrinhoAbandonadoPDI };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */