.class Lfdm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lfdl;


# direct methods
.method constructor <init>(Lfdl;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lfdm;->a:Lfdl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lerz;->zxing_decode:I

    if-ne v0, v1, :cond_1

    .line 38
    iget-object v1, p0, Lfdm;->a:Lfdl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lfdv;

    invoke-static {v1, v0}, Lfdl;->a(Lfdl;Lfdv;)V

    .line 43
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 39
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lerz;->zxing_preview_failed:I

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lfdm;->a:Lfdl;

    invoke-static {v0}, Lfdl;->a(Lfdl;)V

    goto :goto_0
.end method
