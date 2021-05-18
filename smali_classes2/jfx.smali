.class public Ljfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Ljfx;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Ljfx;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->c(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Ljfx;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v0, v4}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;Z)Z

    .line 167
    iget-object v0, p0, Ljfx;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->d(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Ljfx;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object v0, p0, Ljfx;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->e(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    const-string v0, "Investimentos_Fundos_Aplicar_Termo_Acao"

    const-string v1, "Sim"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Ljfx;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v0, v3}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;Z)Z

    .line 173
    iget-object v0, p0, Ljfx;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->d(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Ljfx;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v0, p0, Ljfx;->a:Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;->e(Lcom/santander/app/investimentos/fundos/presentation/ConfirmacaoAplicacaoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    const-string v0, "Investimentos_Fundos_Aplicar_Termo_Acao"

    const-string v1, "Nao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
