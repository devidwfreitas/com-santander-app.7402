.class public Llqq;
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
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 4

    .prologue
    .line 270
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    .line 271
    iget-object v0, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 277
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 279
    iget-object v1, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, [Lkvp;

    invoke-virtual {v2, v0, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkvp;

    check-cast v0, [Lkvp;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;Ljava/util/List;)Ljava/util/List;

    .line 282
    iget-object v0, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 283
    iget-object v0, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Llqr;

    invoke-direct {v1, p0}, Llqr;-><init>(Llqq;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 295
    :cond_2
    iget-object v0, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    iget-object v1, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    iget-object v0, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;Ljava/util/List;)V

    goto :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 306
    iget-object v0, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 309
    :cond_4
    iget-object v0, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 311
    iget-object v0, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    iget-object v1, p0, Llqq;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 266
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llqq;->a(Lis;)V

    return-void
.end method
