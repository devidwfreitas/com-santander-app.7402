.class Ljcs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Ljcr;


# direct methods
.method constructor <init>(Ljcr;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Ljcs;->a:Ljcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ljcs;->a:Ljcr;

    invoke-static {v0}, Ljcr;->a(Ljcr;)Lgkw;

    move-result-object v0

    invoke-interface {v0, p1}, Lgkw;->a(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
