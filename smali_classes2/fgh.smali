.class Lfgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lfgg;


# direct methods
.method constructor <init>(Lfgg;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lfgh;->a:Lfgg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 83
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 84
    iget-object v0, p0, Lfgh;->a:Lfgg;

    iget-object v0, v0, Lfgg;->d:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->a(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)Lfur;

    move-result-object v0

    iget-object v1, p0, Lfgh;->a:Lfgg;

    iget-object v1, v1, Lfgg;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfur;->a(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lfgh;->a:Lfgg;

    iget-object v0, v0, Lfgg;->d:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->a(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)Lfur;

    move-result-object v0

    iget-object v1, p0, Lfgh;->a:Lfgg;

    iget-object v1, v1, Lfgg;->b:Landroid/widget/EditText;

    .line 86
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfur;->b(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lfgh;->a:Lfgg;

    iget-object v0, v0, Lfgg;->d:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->a(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)Lfur;

    move-result-object v0

    iget-object v1, p0, Lfgh;->a:Lfgg;

    iget-object v1, v1, Lfgg;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfur;->c(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lfgh;->a:Lfgg;

    iget-object v0, v0, Lfgg;->d:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->a(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)Lfur;

    move-result-object v0

    sget-object v1, Lfus;->UPDATE:Lfus;

    invoke-virtual {v0, v1}, Lfur;->a(Lfus;)V

    .line 93
    iget-object v0, p0, Lfgh;->a:Lfgg;

    iget-object v0, v0, Lfgg;->d:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-static {v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->a(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)Lfur;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lfgk;

    iget-object v1, p0, Lfgh;->a:Lfgg;

    iget-object v1, v1, Lfgg;->d:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-direct {v0, v1}, Lfgk;-><init>(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lfur;

    const/4 v2, 0x0

    iget-object v3, p0, Lfgh;->a:Lfgg;

    iget-object v3, v3, Lfgg;->d:Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-static {v3}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->a(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)Lfur;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lfgk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    :cond_0
    return-void
.end method
