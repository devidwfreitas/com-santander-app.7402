.class Llpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lloz;


# direct methods
.method constructor <init>(Lloz;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Llpj;->a:Lloz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 295
    iget-object v0, p0, Llpj;->a:Lloz;

    invoke-static {v0}, Lloz;->c(Lloz;)V

    .line 296
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Llpj;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 297
    iget-object v1, p0, Llpj;->a:Lloz;

    invoke-static {v1}, Lloz;->d(Lloz;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 298
    iget-object v0, p0, Llpj;->a:Lloz;

    invoke-static {v0}, Lloz;->d(Lloz;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lmgw;

    iget-object v2, p0, Llpj;->a:Lloz;

    invoke-static {v2}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v2

    sget-object v3, Lmgx;->GRAY_BACKGROUND_DETAILS:Lmgx;

    invoke-direct {v1, v2, v3}, Lmgw;-><init>(Landroid/content/Context;Lmgx;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 299
    iget-object v0, p0, Llpj;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llpj;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 300
    iget-object v0, p0, Llpj;->a:Lloz;

    new-instance v1, Llkm;

    iget-object v2, p0, Llpj;->a:Lloz;

    invoke-static {v2}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->e()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Llkm;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lloz;->a(Lloz;Llkm;)Llkm;

    .line 301
    iget-object v0, p0, Llpj;->a:Lloz;

    invoke-static {v0}, Lloz;->d(Lloz;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Llpj;->a:Lloz;

    invoke-static {v1}, Lloz;->e(Lloz;)Llkm;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 302
    iget-object v0, p0, Llpj;->a:Lloz;

    invoke-static {v0}, Lloz;->d(Lloz;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 303
    iget-object v0, p0, Llpj;->a:Lloz;

    invoke-static {v0}, Lloz;->d(Lloz;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Llpj;->a:Lloz;

    invoke-static {v0}, Lloz;->d(Lloz;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method
