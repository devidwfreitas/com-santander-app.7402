.class Lmvq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmvp;


# direct methods
.method constructor <init>(Lmvp;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lmvq;->a:Lmvp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lmvq;->a:Lmvp;

    iget-object v0, v0, Lmvp;->a:Lmvm;

    invoke-static {v0}, Lmvm;->c(Lmvm;)V

    .line 138
    return-void
.end method
