.class Lbhg;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbhf;


# direct methods
.method constructor <init>(Lbhf;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lbhg;->a:Lbhf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lbhg;->a:Lbhf;

    invoke-virtual {v0}, Lbhf;->finish()V

    .line 74
    return-void
.end method
