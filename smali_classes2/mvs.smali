.class Lmvs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmvr;


# direct methods
.method constructor <init>(Lmvr;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lmvs;->a:Lmvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmvs;->a:Lmvr;

    iget-object v0, v0, Lmvr;->a:Lmvm;

    invoke-static {v0}, Lmvm;->e(Lmvm;)V

    .line 171
    return-void
.end method
