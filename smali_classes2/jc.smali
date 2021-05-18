.class public final Ljc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnlj",
        "<",
        "Ljb;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lnne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnne",
            "<",
            "Ljd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Ljc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljc;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lnne;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnne",
            "<",
            "Ljd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-boolean v0, Ljc;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 12
    :cond_0
    iput-object p1, p0, Ljc;->b:Lnne;

    .line 13
    return-void
.end method

.method public static a(Lnne;)Lnlj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnne",
            "<",
            "Ljd;",
            ">;)",
            "Lnlj",
            "<",
            "Ljb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Ljc;

    invoke-direct {v0, p0}, Ljc;-><init>(Lnne;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljb;)V
    .locals 2

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iget-object v0, p0, Ljc;->b:Lnne;

    invoke-interface {v0}, Lnne;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljd;

    iput-object v0, p1, Ljb;->a:Ljd;

    .line 25
    return-void
.end method

.method public synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Ljb;

    invoke-virtual {p0, p1}, Ljc;->a(Ljb;)V

    return-void
.end method
