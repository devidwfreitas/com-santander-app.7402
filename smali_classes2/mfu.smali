.class Lmfu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmfq;


# direct methods
.method constructor <init>(Lmfq;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lmfu;->a:Lmfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lmfu;->a:Lmfq;

    invoke-static {v0}, Lmfq;->d(Lmfq;)V

    .line 175
    return-void
.end method
