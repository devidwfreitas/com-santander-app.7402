.class public Lljg;
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
        "Lksj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lljg;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Lksj;

    invoke-virtual {p0, p1}, Lljg;->a(Lksj;)V

    return-void
.end method

.method public a(Lksj;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lljg;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;Lksj;)V

    .line 102
    sget-object v0, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v0}, Lksq;->clearData()V

    .line 103
    iget-object v0, p0, Lljg;->a:Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 104
    return-void
.end method
