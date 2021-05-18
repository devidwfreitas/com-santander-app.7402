.class Ljjk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgkw;

.field final synthetic b:Ljiz;


# direct methods
.method constructor <init>(Ljiz;Lgkw;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Ljjk;->b:Ljiz;

    iput-object p2, p0, Ljjk;->a:Lgkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ljjk;->a:Lgkw;

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 139
    return-void
.end method
