.class public final Lhx;
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
        "Landroid/content/Context;",
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
    const-class v0, Lhx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lhx;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lhw;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-boolean v0, Lhx;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_0
    iput-object p1, p0, Lhx;->b:Lhw;

    .line 14
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
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lhx;

    invoke-direct {v0, p0}, Lhx;-><init>(Lhw;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lhx;->b:Lhw;

    .line 19
    invoke-virtual {v0}, Lhw;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 18
    invoke-static {v0, v1}, Lnmd;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lhx;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
