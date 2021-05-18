.class Lfdz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lfdy;


# direct methods
.method constructor <init>(Lfdy;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lfdz;->a:Lfdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lfdz;->a:Lfdy;

    invoke-static {v1}, Lfdy;->a(Lfdy;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lfdz;->a:Lfdy;

    invoke-static {v0}, Lfdy;->b(Lfdy;)V

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
