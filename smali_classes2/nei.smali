.class Lnei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lneh;


# direct methods
.method constructor <init>(Lneh;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lnei;->a:Lneh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnei;->a:Lneh;

    invoke-static {v0}, Lneh;->a(Lneh;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 39
    return-void
.end method
