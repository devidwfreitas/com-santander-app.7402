.class public Llee;
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
.field final synthetic a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Llee;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 469
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llee;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Llee;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->b(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 474
    return-void
.end method
