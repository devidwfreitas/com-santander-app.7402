.class final Lgkm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lgkq;

.field final synthetic b:Lfoh;


# direct methods
.method constructor <init>(Lgkq;Lfoh;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lgkm;->a:Lgkq;

    iput-object p2, p0, Lgkm;->b:Lfoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lgkm;->a:Lgkq;

    new-instance v1, Lgkn;

    invoke-direct {v1, p0}, Lgkn;-><init>(Lgkm;)V

    invoke-virtual {v0, v1}, Lgkq;->a(Lfoh;)V

    .line 34
    return-void
.end method
