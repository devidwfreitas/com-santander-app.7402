.class public final Lawh;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/adjust/sdk/OnDeviceIdsRead;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/OnDeviceIdsRead;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lawh;->a:Lcom/adjust/sdk/OnDeviceIdsRead;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    .line 118
    aget-object v1, p1, v4

    .line 119
    invoke-static {v1}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleAdId read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-object v1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 127
    iget-object v0, p0, Lawh;->a:Lcom/adjust/sdk/OnDeviceIdsRead;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/OnDeviceIdsRead;->onGoogleAdIdRead(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lawh;->a([Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lawh;->a(Ljava/lang/String;)V

    return-void
.end method
