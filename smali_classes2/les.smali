.class public Lles;
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
.field final synthetic a:Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lles;->a:Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 251
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lles;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 255
    const-string v0, "ERRORAUTHORIZE"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lles;->a:Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->d(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 257
    return-void
.end method
