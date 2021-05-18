.class public Lfks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/PoupancaResgateActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/PoupancaResgateActivity;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lfks;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lfks;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/PoupancaResgateActivity;->g(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    const-string v0, "Investimentos_Poupanca_Resgatar_Tipo_ValorParcial_Acao"

    iget-object v1, p0, Lfks;->a:Lcom/santander/app/PoupancaResgateActivity;

    invoke-static {v1}, Lcom/santander/app/PoupancaResgateActivity;->g(Lcom/santander/app/PoupancaResgateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method
