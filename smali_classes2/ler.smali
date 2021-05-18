.class public Ller;
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
.field final synthetic a:Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Ller;->a:Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 241
    check-cast p1, Lksj;

    invoke-virtual {p0, p1}, Ller;->a(Lksj;)V

    return-void
.end method

.method public a(Lksj;)V
    .locals 2

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    iget-object v0, p0, Ller;->a:Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->a(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;Lksj;)V

    .line 249
    :cond_0
    iget-object v0, p0, Ller;->a:Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->d(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 250
    return-void
.end method
