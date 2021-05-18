.class public Llqv;
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
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 3

    .prologue
    .line 324
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 325
    iget-object v0, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 327
    if-eqz p1, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 331
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 336
    :goto_1
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, [Lkve;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkve;

    check-cast v0, [Lkve;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 337
    iget-object v1, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v1, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkve;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;Lkve;)Lkve;

    .line 343
    iget-object v0, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    iget-object v1, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Lkve;

    move-result-object v1

    invoke-virtual {v1}, Lkve;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    iget-object v0, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->f(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->h(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "dd/MM/yyyy - HH:mm:ss"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 351
    :cond_2
    iget-object v0, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 354
    iget-object v0, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Llqv;->a:Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 321
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llqv;->a(Lis;)V

    return-void
.end method
