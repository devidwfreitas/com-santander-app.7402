.class public Llix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Lkry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iput-object p2, p0, Llix;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 226
    check-cast p1, Lkry;

    invoke-virtual {p0, p1}, Llix;->a(Lkry;)V

    return-void
.end method

.method public a(Lkry;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f09087f

    .line 229
    iget-object v0, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 232
    :goto_1
    invoke-virtual {p1}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 233
    invoke-virtual {p1}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p1}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 239
    :cond_2
    new-instance v0, Lkry;

    invoke-direct {v0}, Lkry;-><init>()V

    .line 240
    invoke-virtual {v0, v3}, Lkry;->a(Ljava/util/List;)V

    .line 242
    iget-object v1, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Lkry;)Lkry;

    .line 243
    iget-object v0, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)Lkry;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)Lkry;

    move-result-object v0

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 245
    iget-object v0, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)Lkry;

    move-result-object v0

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 246
    iget-object v0, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iget-object v1, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)Lkry;

    move-result-object v0

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->a()Lkrq;

    move-result-object v0

    invoke-virtual {v0}, Lkrq;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 252
    iget-object v0, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)Lkry;

    move-result-object v0

    iget-object v1, p0, Llix;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Llnt;->a(Lkry;Ljava/lang/String;)Llnt;

    move-result-object v0

    .line 253
    iget-object v1, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const-string v2, "offers_is_tag"

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :cond_4
    iget-object v0, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iget-object v1, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_5
    iget-object v0, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iget-object v1, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iget-object v1, v1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i:Landroid/app/Activity;

    iget-object v2, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Llix;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->b(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto/16 :goto_0
.end method
