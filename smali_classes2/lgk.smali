.class public Llgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Llgk;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 4

    .prologue
    .line 339
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 340
    iget-object v0, p0, Llgk;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Llgk;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->c(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 343
    const/4 v1, 0x0

    .line 345
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    :goto_1
    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Llgk;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, [Lknx;

    invoke-virtual {v2, v0, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lknx;

    check-cast v0, [Lknx;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->a(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;Ljava/util/List;)Ljava/util/List;

    .line 353
    iget-object v0, p0, Llgk;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->d(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 354
    iget-object v0, p0, Llgk;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->d(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Llgl;

    invoke-direct {v1, p0}, Llgl;-><init>(Llgk;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 381
    :cond_2
    iget-object v0, p0, Llgk;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->e(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 383
    :cond_3
    iget-object v0, p0, Llgk;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Llgk;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->c(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 386
    iget-object v1, p0, Llgk;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Llgk;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    const v2, 0x7f09043f

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 335
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llgk;->a(Lis;)V

    return-void
.end method
