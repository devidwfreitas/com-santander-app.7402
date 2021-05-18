.class Lgyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgyl;


# direct methods
.method constructor <init>(Lgyl;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lgyn;->a:Lgyl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 56
    check-cast p1, Lgxe;

    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgxe;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgxe;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :cond_0
    return-void
.end method
