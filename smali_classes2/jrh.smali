.class Ljrh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Ljrg;


# direct methods
.method constructor <init>(Ljrg;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Ljrh;->a:Ljrg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ljrh;->a:Ljrg;

    invoke-static {v0}, Ljrg;->a(Ljrg;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
