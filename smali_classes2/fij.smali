.class public Lfij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/InvestimentosConsolidadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/InvestimentosConsolidadaActivity;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lfij;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 258
    new-instance v0, Lije;

    invoke-direct {v0}, Lije;-><init>()V

    .line 259
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 260
    const-string v2, "listener"

    iget-object v3, p0, Lfij;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 261
    const-string v2, "maximumDate"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    iget-object v2, p0, Lfij;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v2}, Lcom/santander/app/InvestimentosConsolidadaActivity;->b(Lcom/santander/app/InvestimentosConsolidadaActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 263
    const-string v2, "fechaAgendada"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    const-string v2, "year"

    iget-object v3, p0, Lfij;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v3}, Lcom/santander/app/InvestimentosConsolidadaActivity;->b(Lcom/santander/app/InvestimentosConsolidadaActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    const-string v2, "month"

    iget-object v3, p0, Lfij;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v3}, Lcom/santander/app/InvestimentosConsolidadaActivity;->b(Lcom/santander/app/InvestimentosConsolidadaActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string v2, "day"

    iget-object v3, p0, Lfij;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-static {v3}, Lcom/santander/app/InvestimentosConsolidadaActivity;->b(Lcom/santander/app/InvestimentosConsolidadaActivity;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 270
    iget-object v1, p0, Lfij;->a:Lcom/santander/app/InvestimentosConsolidadaActivity;

    invoke-virtual {v1}, Lcom/santander/app/InvestimentosConsolidadaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "datePicker"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 272
    return-void
.end method
