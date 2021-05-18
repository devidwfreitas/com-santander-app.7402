.class final Lcom/ca/android/app/CaMDOWebView$1;
.super Ljava/lang/Object;
.source "CaMDOWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/android/app/CaMDOWebView;->registerxWalkBitMapCallback(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$fxWalkViewInternalArg:Lorg/xwalk/core/internal/XWalkViewInternal;

.field final synthetic val$rUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/ca/android/app/CaMDOWebView$1;->val$fxWalkViewInternalArg:Lorg/xwalk/core/internal/XWalkViewInternal;

    iput-object p2, p0, Lcom/ca/android/app/CaMDOWebView$1;->val$rUrl:Ljava/lang/String;

    iput p3, p0, Lcom/ca/android/app/CaMDOWebView$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 230
    :try_start_0
    iget-object v3, p0, Lcom/ca/android/app/CaMDOWebView$1;->val$fxWalkViewInternalArg:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/ca/android/app/CaMDOWebView$1;->val$fxWalkViewInternalArg:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 234
    .local v2, "fxWalkViewInternal":Lorg/xwalk/core/internal/XWalkViewInternal;
    :goto_0
    if-eqz v2, :cond_0

    .line 235
    new-instance v0, Lcom/ca/android/app/BitMapClass;

    iget-object v3, p0, Lcom/ca/android/app/CaMDOWebView$1;->val$rUrl:Ljava/lang/String;

    iget v4, p0, Lcom/ca/android/app/CaMDOWebView$1;->val$duration:I

    invoke-direct {v0, v3, v4}, Lcom/ca/android/app/BitMapClass;-><init>(Ljava/lang/String;I)V

    .line 236
    .local v0, "bmc":Lcom/ca/android/app/BitMapClass;
    invoke-virtual {v2, v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;)V

    .line 241
    .end local v0    # "bmc":Lcom/ca/android/app/BitMapClass;
    .end local v2    # "fxWalkViewInternal":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    :goto_1
    return-void

    .line 230
    :cond_1
    sget-object v3, Lcom/ca/android/app/CaMDOWebView;->lastXWalkInternalView:Ljava/util/concurrent/atomic/AtomicReference;

    .line 233
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xwalk/core/internal/XWalkViewInternal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in taking screenshot and postDelayed of captureBitmapAsync : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ca/mdo/CALog;->e(Ljava/lang/String;)I

    goto :goto_1
.end method
