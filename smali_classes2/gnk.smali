.class Lgnk;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgnf;)V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Lgnk;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 646
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lgnj;

    .line 647
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 656
    :goto_0
    return-void

    .line 650
    :pswitch_0
    iget-object v1, v0, Lgnj;->a:Lgne;

    iget-object v0, v0, Lgnj;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lgne;->c(Lgne;Ljava/lang/Object;)V

    goto :goto_0

    .line 653
    :pswitch_1
    iget-object v1, v0, Lgnj;->a:Lgne;

    iget-object v0, v0, Lgnj;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lgne;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
