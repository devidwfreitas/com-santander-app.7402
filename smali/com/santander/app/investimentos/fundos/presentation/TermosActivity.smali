.class public Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljgx;


# instance fields
.field private a:Ljdx;

.field private b:Landroid/widget/TextView;

.field private c:Ljis;

.field private d:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->d:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->i:Landroid/app/Activity;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljhm;

    invoke-direct {v2, p0}, Ljhm;-><init>(Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;)V

    invoke-static {v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->d:Landroid/app/Dialog;

    .line 70
    return-void
.end method

.method public a(Ljel;)V
    .locals 2

    .prologue
    .line 53
    const v0, 0x7f10044b

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->b:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p1}, Ljel;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->b:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0400b0

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 42
    const-string v1, "Aplica\u00e7\u00e3o"

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fundos_confirmacao"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljdx;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->a:Ljdx;

    .line 45
    new-instance v0, Ljit;

    invoke-direct {v0, p0}, Ljit;-><init>(Ljgx;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->c:Ljis;

    .line 46
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->c:Ljis;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->a:Ljdx;

    invoke-interface {v0, v1}, Ljis;->a(Ljdx;)V

    .line 47
    return-void
.end method
