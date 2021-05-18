.class Ljbt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Ljbq;


# direct methods
.method constructor <init>(Ljbq;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Ljbt;->a:Ljbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljbt;->a:Ljbq;

    invoke-static {v0}, Ljbq;->a(Ljbq;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
