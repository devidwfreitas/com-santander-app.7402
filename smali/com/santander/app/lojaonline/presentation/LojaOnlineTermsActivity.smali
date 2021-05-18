.class public Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljnu;


# instance fields
.field private a:Ljod;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 73
    invoke-static {v0, p1}, Lgpu;->b(Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->c:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->b()V

    .line 43
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->b:Landroid/app/Dialog;

    .line 44
    return-void
.end method

.method public a(Lcom/santander/app/lojaonline/domain/LojaTerm;)V
    .locals 1

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaTerm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->a(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaTerm;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->b(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaTerm;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->a(I)V

    .line 61
    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaTerm;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->b(I)V

    .line 63
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->b:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->b:Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f040085

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f100377

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->c:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f100376

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->d:Landroid/widget/LinearLayout;

    .line 33
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->c(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljoe;

    invoke-direct {v0, p0}, Ljoe;-><init>(Ljnu;)V

    iput-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->a:Ljod;

    .line 36
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->a:Ljod;

    invoke-interface {v0}, Ljod;->a()V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 68
    iget-object v0, p0, Lcom/santander/app/lojaonline/presentation/LojaOnlineTermsActivity;->a:Ljod;

    invoke-interface {v0}, Ljod;->b()V

    .line 69
    return-void
.end method
