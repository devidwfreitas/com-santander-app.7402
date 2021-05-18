.class public Lliz;
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
        "Lkqj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lliz;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 285
    check-cast p1, Lkqj;

    invoke-virtual {p0, p1}, Lliz;->a(Lkqj;)V

    return-void
.end method

.method public a(Lkqj;)V
    .locals 2

    .prologue
    .line 288
    const-string v0, "ContractService"

    const-string v1, "success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lliz;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lliz;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;)Lmhz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmhz;->a(Lkqj;)V

    goto :goto_0
.end method
