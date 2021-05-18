.class public final Lnmb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnlj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnlj",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-interface {p0, p1}, Lnlj;->injectMembers(Ljava/lang/Object;)V

    .line 38
    return-object p1
.end method

.method public static a()Lnlj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lnlj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lnmc;->INSTANCE:Lnmc;

    return-object v0
.end method

.method public static a(Lnlj;)Lnlj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnlj",
            "<-TT;>;)",
            "Lnlj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0}, Lnmd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnlj;

    return-object v0
.end method
