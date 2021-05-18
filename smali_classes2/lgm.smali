.class public Llgm;
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
    .line 394
    iput-object p1, p0, Llgm;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lis;)V
    .locals 4

    .prologue
    .line 397
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 399
    iget-object v0, p0, Llgm;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Llgm;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->c(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 401
    iget-object v1, p0, Llgm;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lktp;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lktp;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->a(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;Lktp;)Lktp;

    .line 402
    iget-object v0, p0, Llgm;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->f(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V

    goto :goto_0

    .line 404
    :cond_2
    iget-object v0, p0, Llgm;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Llgm;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->c(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 406
    iget-object v1, p0, Llgm;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Llgm;->a:Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    const v2, 0x7f09043f

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 394
    check-cast p1, Lis;

    invoke-virtual {p0, p1}, Llgm;->a(Lis;)V

    return-void
.end method
