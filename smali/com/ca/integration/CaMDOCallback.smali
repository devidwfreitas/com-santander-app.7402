.class public abstract Lcom/ca/integration/CaMDOCallback;
.super Landroid/os/ResultReceiver;
.source "CaMDOCallback.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# static fields
.field public static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final EXTRA_EXCEPTION:Ljava/lang/String; = "camdo_exception"

.field public static final STATUS_ERROR:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CaMDOCallback"

.field public static final UPLOAD_EVENT_COUNT:Ljava/lang/String; = "upload_event_count"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 39
    return-void
.end method


# virtual methods
.method public abstract onError(ILjava/lang/Exception;)V
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 43
    if-nez p1, :cond_1

    .line 44
    if-eqz p2, :cond_0

    .line 45
    const-string v3, "camdo_exception"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 46
    .local v2, "mException":Ljava/io/Serializable;
    const-string v3, "error_code"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, "errorCode":I
    if-eqz v2, :cond_0

    .line 49
    :try_start_0
    check-cast v2, Ljava/lang/Exception;

    .end local v2    # "mException":Ljava/io/Serializable;
    invoke-virtual {p0, v1, v2}, Lcom/ca/integration/CaMDOCallback;->onError(ILjava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "errorCode":I
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local v1    # "errorCode":I
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CaMDOCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorCode":I
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 56
    invoke-virtual {p0, p2}, Lcom/ca/integration/CaMDOCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public abstract onSuccess(Landroid/os/Bundle;)V
.end method
