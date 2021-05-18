.class Libe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Liba;


# direct methods
.method constructor <init>(Liba;Lgkw;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Libe;->b:Liba;

    iput-object p2, p0, Libe;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Libe;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
