.class Lmkh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lmkc;


# direct methods
.method constructor <init>(Lmkc;Lgkw;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lmkh;->b:Lmkc;

    iput-object p2, p0, Lmkh;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmkh;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
