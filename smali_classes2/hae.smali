.class Lhae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lgzy;


# direct methods
.method constructor <init>(Lgzy;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lhae;->a:Lgzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lhae;->a:Lgzy;

    invoke-static {v0}, Lgzy;->a(Lgzy;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 129
    return-void
.end method
