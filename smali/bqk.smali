.class Lbqk;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbqj;


# direct methods
.method constructor <init>(Lbqj;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lbqk;->a:Lbqj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbqk;->a:Lbqj;

    invoke-virtual {v0, p1}, Lbqj;->a(Landroid/os/Message;)V

    .line 63
    return-void
.end method
