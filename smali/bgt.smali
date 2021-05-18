.class Lbgt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbgp;

.field final synthetic b:Lbgs;


# direct methods
.method constructor <init>(Lbgs;Lbgp;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lbgt;->b:Lbgs;

    iput-object p2, p0, Lbgt;->a:Lbgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lbgt;->b:Lbgs;

    iget-object v1, p0, Lbgt;->a:Lbgp;

    invoke-static {v0, v1}, Lbgs;->a(Lbgs;Lbgp;)V

    .line 206
    return-void
.end method
