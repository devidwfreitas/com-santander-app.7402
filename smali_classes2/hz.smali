.class public final Lhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnlu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnlu",
        "<",
        "Ljd;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lhw;

.field private final c:Lnne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnne",
            "<",
            "Liz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lhz;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lhz;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lhw;Lnne;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhw;",
            "Lnne",
            "<",
            "Liz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lhz;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lhz;->b:Lhw;

    .line 19
    sget-boolean v0, Lhz;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_1
    iput-object p2, p0, Lhz;->c:Lnne;

    .line 21
    return-void
.end method

.method public static a(Lhw;Lnne;)Lnlu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhw;",
            "Lnne",
            "<",
            "Liz;",
            ">;)",
            "Lnlu",
            "<",
            "Ljd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lhz;

    invoke-direct {v0, p0, p1}, Lhz;-><init>(Lhw;Lnne;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljd;
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lhz;->b:Lhw;

    iget-object v0, p0, Lhz;->c:Lnne;

    .line 26
    invoke-interface {v0}, Lnne;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liz;

    invoke-virtual {v1, v0}, Lhw;->a(Liz;)Ljd;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 25
    invoke-static {v0, v1}, Lnmd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljd;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lhz;->a()Ljd;

    move-result-object v0

    return-object v0
.end method
