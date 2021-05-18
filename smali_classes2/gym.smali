.class Lgym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgxa;

.field final synthetic b:Lgyl;


# direct methods
.method constructor <init>(Lgyl;Lgxa;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lgym;->b:Lgyl;

    iput-object p2, p0, Lgym;->a:Lgxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 41
    check-cast p1, Lgwy;

    .line 43
    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lgym;->b:Lgyl;

    invoke-static {v0}, Lgyl;->a(Lgyl;)Lgyk;

    move-result-object v0

    iget-object v1, p0, Lgym;->a:Lgxa;

    invoke-interface {v0, v1}, Lgyk;->a(Lgxa;)V

    .line 47
    :cond_0
    return-void
.end method
