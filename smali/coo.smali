.class Lcoo;
.super Landroid/os/Handler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcon;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcon;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcoo;->a:Lcon;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcoo;->b:Landroid/content/Context;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "GoogleApiAvailability"

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Don\'t know how to handle this message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcoo;->a:Lcon;

    iget-object v1, p0, Lcoo;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcon;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcoo;->a:Lcon;

    invoke-virtual {v1, v0}, Lcon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcoo;->a:Lcon;

    iget-object v2, p0, Lcoo;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcon;->a(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
