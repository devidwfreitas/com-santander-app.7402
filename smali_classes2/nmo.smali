.class public final Lnmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnlh;
.implements Lnne;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnlh",
        "<TT;>;",
        "Lnne",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/Object;


# instance fields
.field private volatile c:Lnne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnne",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lnmo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnmo;->a:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnmo;->b:Ljava/lang/Object;

    return-void

    .line 28
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
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lnmo;->b:Ljava/lang/Object;

    iput-object v0, p0, Lnmo;->d:Ljava/lang/Object;

    .line 35
    sget-boolean v0, Lnmo;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lnmo;->c:Lnne;

    .line 37
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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    instance-of v0, p0, Lnmo;

    if-nez v0, :cond_0

    instance-of v0, p0, Lnlt;

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v1, Lnmo;

    invoke-static {p0}, Lnmd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnne;

    invoke-direct {v1, v0}, Lnmo;-><init>(Lnne;)V

    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lnmo;->c:Lnne;

    .line 47
    iget-object v1, p0, Lnmo;->d:Ljava/lang/Object;

    sget-object v2, Lnmo;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 48
    invoke-interface {v0}, Lnne;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnmo;->d:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lnmo;->c:Lnne;

    .line 53
    :cond_0
    iget-object v0, p0, Lnmo;->d:Ljava/lang/Object;

    return-object v0
.end method
