.class public final Lnme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnne;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnne",
        "<",
        "Lnlh",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lnne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnne",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lnme;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnme;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lnne;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnne",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-boolean v0, Lnme;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lnme;->b:Lnne;

    .line 34
    return-void
.end method

.method public static a(Lnne;)Lnne;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnne",
            "<TT;>;)",
            "Lnne",
            "<",
            "Lnlh",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Lnme;

    invoke-static {p0}, Lnmd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnne;

    invoke-direct {v1, v0}, Lnme;-><init>(Lnne;)V

    return-object v1
.end method


# virtual methods
.method public a()Lnlh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnlh",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lnme;->b:Lnne;

    invoke-static {v0}, Lnlt;->b(Lnne;)Lnlh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lnme;->a()Lnlh;

    move-result-object v0

    return-object v0
.end method
