.class Lmvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmvn;


# direct methods
.method constructor <init>(Lmvn;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lmvo;->a:Lmvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmvo;->a:Lmvn;

    iget-object v0, v0, Lmvn;->a:Lmvm;

    invoke-static {v0}, Lmvm;->b(Lmvm;)V

    .line 100
    return-void
.end method
