.class public Lljh;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lljh;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lljh;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    const-string v0, "ERRORAUTHORIZE"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lljh;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 111
    return-void
.end method
