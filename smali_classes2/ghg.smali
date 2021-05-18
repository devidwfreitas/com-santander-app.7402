.class public Lghg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lghg;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 157
    iget-object v0, p0, Lghg;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->b(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    iget-object v3, p0, Lghg;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lggx;

    invoke-static {v3, v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->a(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;Lggx;)Lggx;

    .line 159
    iget-object v0, p0, Lghg;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->e(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)Lggx;

    move-result-object v0

    invoke-virtual {v0}, Lggx;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_1
    return-void

    .line 159
    :sswitch_0
    const-string v2, "Perda"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v1, "Roubo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 161
    :pswitch_0
    const-string v0, "Cartoes_Bloqueio_OpcoesMotivo_Acao"

    const-string v1, "Perda"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :pswitch_1
    const-string v0, "Cartoes_Bloqueio_OpcoesMotivo_Acao"

    const-string v1, "Roubo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_1
    iget-object v0, p0, Lghg;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->b(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lghg;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->a(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;Lggx;)Lggx;

    goto :goto_1

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x496fa3a -> :sswitch_0
        0x4b7c005 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lghg;->a:Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;->b(Lcom/santander/app/cartoes/bloqueio/presentation/BloqueioCartaoActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    return-void
.end method
