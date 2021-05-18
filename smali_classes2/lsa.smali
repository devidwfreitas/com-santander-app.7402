.class public Llsa;
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
        "Lkvr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Llsa;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 378
    check-cast p1, Lkvr;

    invoke-virtual {p0, p1}, Llsa;->a(Lkvr;)V

    return-void
.end method

.method public a(Lkvr;)V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Llsa;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Llsa;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Lkvr;)Lkvr;

    .line 389
    iget-object v0, p0, Llsa;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Lkvr;

    move-result-object v0

    invoke-virtual {v0}, Lkvr;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    iget-object v1, p0, Llsa;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Lkvr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkvr;->h(Ljava/lang/String;)V

    .line 394
    :cond_1
    iget-object v0, p0, Llsa;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v1, p0, Llsa;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Lkvr;

    move-result-object v1

    invoke-virtual {v1}, Lkvr;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)I

    .line 396
    iget-object v0, p0, Llsa;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    .line 397
    iget-object v0, p0, Llsa;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v1, p0, Llsa;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)V

    goto :goto_0
.end method
