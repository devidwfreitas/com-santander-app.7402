.class Lgkd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lfoh;

.field final synthetic b:Lgkc;


# direct methods
.method constructor <init>(Lgkc;Lfoh;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lgkd;->b:Lgkc;

    iput-object p2, p0, Lgkd;->a:Lfoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    check-cast p1, Ljava/util/List;

    .line 39
    iget-object v0, p0, Lgkd;->b:Lgkc;

    invoke-static {v0, p1}, Lgkc;->a(Lgkc;Ljava/util/List;)V

    .line 41
    iget-object v0, p0, Lgkd;->a:Lfoh;

    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 42
    return-void
.end method
