.class Lkcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Lkco;


# direct methods
.method constructor <init>(Lkco;Lgkw;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lkcq;->b:Lkco;

    iput-object p2, p0, Lkcq;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lkcq;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
