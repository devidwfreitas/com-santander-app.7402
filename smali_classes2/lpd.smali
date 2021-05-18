.class Llpd;
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
        "Lkte;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lloz;


# direct methods
.method constructor <init>(Lloz;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Llpd;->a:Lloz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 590
    check-cast p1, Lkte;

    invoke-virtual {p0, p1}, Llpd;->a(Lkte;)V

    return-void
.end method

.method public a(Lkte;)V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Llpd;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 595
    iget-object v0, p0, Llpd;->a:Lloz;

    invoke-static {v0}, Lloz;->j(Lloz;)V

    .line 596
    return-void
.end method
