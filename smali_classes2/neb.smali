.class Lneb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lnea;


# direct methods
.method constructor <init>(Lnea;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lneb;->a:Lnea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lneb;->a:Lnea;

    invoke-static {v0}, Lnea;->a(Lnea;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 43
    return-void
.end method
