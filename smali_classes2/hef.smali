.class public Lhef;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lheo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;


# direct methods
.method constructor <init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lheo;
    .locals 3

    .prologue
    .line 946
    const/4 v0, 0x0

    .line 949
    :try_start_0
    invoke-static {}, Lhat;->u()Lhfa;

    move-result-object v1

    invoke-virtual {v1}, Lhfa;->c()Lheo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 954
    :goto_0
    return-object v0

    .line 951
    :catch_0
    move-exception v1

    .line 952
    const-string v2, "DPPoupanca"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lheo;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 959
    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->t(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 961
    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 964
    :cond_0
    invoke-virtual {p1}, Lheo;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 965
    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->g(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 966
    const-string v1, "R"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 967
    const-string v1, "$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 968
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 969
    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-virtual {p1}, Lheo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3

    .line 974
    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->c(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 975
    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->j(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v0, v0, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-virtual {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 977
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 978
    iget-object v2, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v2

    const-string v3, "S"

    invoke-virtual {v2, v3}, Lheq;->u(Ljava/lang/String;)V

    .line 979
    const-string v2, "dpp"

    iget-object v3, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 980
    const-string v2, "novaPoupanca"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 981
    const-string v2, "opcao"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 990
    :goto_0
    const-string v2, "isProprioCliente"

    iget-object v3, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1000
    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->startActivity(Landroid/content/Intent;)V

    .line 1008
    :goto_2
    return-void

    .line 983
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-virtual {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/santander/app/dpp/DPPConfirmacaoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 984
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 985
    iget-object v2, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v2}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v2

    const-string v3, "N"

    invoke-virtual {v2, v3}, Lheq;->u(Ljava/lang/String;)V

    .line 986
    const-string v2, "dpp"

    iget-object v3, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 987
    const-string v2, "opcao"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 988
    const-string v2, "novaPoupanca"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 992
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-virtual {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/santander/app/dpp/DPPConfirmacaoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 993
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 994
    const-string v2, "dpp"

    iget-object v3, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->n(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lheq;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 995
    const-string v2, "opcao"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 996
    const-string v2, "novaPoupanca"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1002
    :cond_3
    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v0

    const-string v1, "Valor inferior ao minimo."

    invoke-static {v0, v1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 1006
    :cond_4
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v5, v4}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 937
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhef;->a([Ljava/lang/Void;)Lheo;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 937
    check-cast p1, Lheo;

    invoke-virtual {p0, p1}, Lhef;->a(Lheo;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    iget-object v1, p0, Lhef;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->i(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    move-result-object v1

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 942
    return-void
.end method
