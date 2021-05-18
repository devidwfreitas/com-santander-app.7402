.class public Lled;
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
        "Lksu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lled;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 462
    check-cast p1, Lksu;

    invoke-virtual {p0, p1}, Lled;->a(Lksu;)V

    return-void
.end method

.method public a(Lksu;)V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lled;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-virtual {p1}, Lksu;->b()Lksz;

    move-result-object v1

    invoke-virtual {v1}, Lksz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->a(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lled;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->b(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 467
    return-void
.end method
