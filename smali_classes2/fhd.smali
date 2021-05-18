.class public Lfhd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/ContaMovementActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/ContaMovementActivity;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 290
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    iget-object v1, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v1}, Lcom/santander/app/ContaMovementActivity;->c(Lcom/santander/app/ContaMovementActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;I)I

    .line 292
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->d(Lcom/santander/app/ContaMovementActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 293
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhau;->e(I)V

    .line 294
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "TipoLancTodos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    iget-object v1, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v1}, Lcom/santander/app/ContaMovementActivity;->e(Lcom/santander/app/ContaMovementActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 296
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    iget-object v1, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v1}, Lcom/santander/app/ContaMovementActivity;->f(Lcom/santander/app/ContaMovementActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;Landroid/support/v4/widget/NestedScrollView;)Landroid/support/v4/widget/NestedScrollView;

    .line 297
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->g(Lcom/santander/app/ContaMovementActivity;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->d(Lcom/santander/app/ContaMovementActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 299
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v3}, Lhau;->e(I)V

    .line 300
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "TipoLancDebito"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    iget-object v1, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v1}, Lcom/santander/app/ContaMovementActivity;->h(Lcom/santander/app/ContaMovementActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 302
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    iget-object v1, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v1}, Lcom/santander/app/ContaMovementActivity;->i(Lcom/santander/app/ContaMovementActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;Landroid/support/v4/widget/NestedScrollView;)Landroid/support/v4/widget/NestedScrollView;

    .line 303
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->g(Lcom/santander/app/ContaMovementActivity;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->d(Lcom/santander/app/ContaMovementActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 305
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v2}, Lhau;->e(I)V

    .line 306
    const-string v0, "ContaCorrente_Acao"

    const-string v1, "TipoLancCredito"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    iget-object v1, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v1}, Lcom/santander/app/ContaMovementActivity;->j(Lcom/santander/app/ContaMovementActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 308
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    iget-object v1, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v1}, Lcom/santander/app/ContaMovementActivity;->k(Lcom/santander/app/ContaMovementActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;Landroid/support/v4/widget/NestedScrollView;)Landroid/support/v4/widget/NestedScrollView;

    .line 309
    iget-object v0, p0, Lfhd;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->g(Lcom/santander/app/ContaMovementActivity;)V

    goto :goto_0
.end method
