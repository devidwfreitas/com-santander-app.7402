.class public Llso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxa;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 514
    iget-object v0, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 516
    :cond_0
    new-instance v0, Lkut;

    invoke-direct {v0}, Lkut;-><init>()V

    .line 518
    invoke-virtual {v0, v3}, Lkut;->c(Z)V

    .line 519
    sget-object v1, Lkuu;->GONE:Lkuu;

    invoke-virtual {v0, v1}, Lkut;->a(Lkuu;)V

    .line 520
    sget-object v1, Lkuu;->CAMERA:Lkuu;

    invoke-virtual {v0, v1}, Lkut;->b(Lkuu;)V

    .line 521
    invoke-virtual {v0, v3}, Lkut;->b(Z)V

    .line 522
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkut;->a(Z)V

    .line 524
    iget-object v1, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lltm;

    move-result-object v1

    iget-object v2, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v0, v3}, Lltm;->a(ILkut;Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 474
    iget-object v0, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v1, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    iget-object v0, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuw;

    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkus;

    .line 481
    if-eqz p1, :cond_2

    .line 482
    :try_start_0
    check-cast p1, Lis;

    .line 483
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 484
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    .line 485
    new-instance v3, Lejm;

    invoke-direct {v3}, Lejm;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lkob;

    invoke-virtual {v3, v1, v4}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkob;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v2, v1

    .line 493
    :goto_2
    if-eqz v2, :cond_1

    .line 494
    invoke-virtual {v2}, Lkob;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lkus;->a(I)V

    .line 499
    :goto_3
    new-instance v1, Lkut;

    invoke-direct {v1}, Lkut;-><init>()V

    .line 500
    invoke-virtual {v1, v0}, Lkut;->a(Lkus;)V

    .line 502
    invoke-virtual {v1, v5}, Lkut;->c(Z)V

    .line 503
    sget-object v0, Lkuu;->TO_VIEW:Lkuu;

    invoke-virtual {v1, v0}, Lkut;->a(Lkuu;)V

    .line 504
    sget-object v0, Lkuu;->TRASH:Lkuu;

    invoke-virtual {v1, v0}, Lkut;->b(Lkuu;)V

    .line 505
    invoke-virtual {v1, v5}, Lkut;->b(Z)V

    .line 506
    invoke-virtual {v1, v5}, Lkut;->a(Z)V

    .line 508
    iget-object v0, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lltm;

    move-result-object v0

    iget-object v2, p0, Llso;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lltm;->a(ILkut;Z)V

    goto/16 :goto_0

    .line 488
    :catch_0
    move-exception v1

    .line 489
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 496
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lkus;->a(I)V

    goto :goto_3

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method
