.class public final Lhy;
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
        "Liz;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lhw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lhy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lhy;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lhw;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-boolean v0, Lhy;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_0
    iput-object p1, p0, Lhy;->b:Lhw;

    .line 15
    return-void
.end method

.method public static a(Lhw;)Lnlu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhw;",
            ")",
            "Lnlu",
            "<",
            "Liz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lhy;

    invoke-direct {v0, p0}, Lhy;-><init>(Lhw;)V

    return-object v0
.end method


# virtual methods
.method public a()Liz;
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lhy;->b:Lhw;

    .line 20
    invoke-virtual {v0}, Lhw;->a()Liz;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 19
    invoke-static {v0, v1}, Lnmd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liz;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lhy;->a()Liz;

    move-result-object v0

    return-object v0
.end method
