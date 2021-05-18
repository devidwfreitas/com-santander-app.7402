.class Lmha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lmgz;


# direct methods
.method constructor <init>(Lmgz;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lmha;->b:Lmgz;

    iput-object p2, p0, Lmha;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lmha;->b:Lmgz;

    iget-object v1, p0, Lmha;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lmgz;->a(Lmgz;Ljava/lang/Object;)V

    .line 26
    return-void
.end method
