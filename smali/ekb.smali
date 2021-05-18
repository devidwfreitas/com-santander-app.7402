.class public final Lekb;
.super Lejz;
.source "SourceFile"


# static fields
.field public static final a:Lekb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lekb;

    invoke-direct {v0}, Lekb;-><init>()V

    sput-object v0, Lekb;->a:Lekb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lejz;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method a()Lekb;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lekb;->a:Lekb;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 61
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lekb;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 53
    const-class v0, Lekb;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method synthetic o()Lejz;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lekb;->a()Lekb;

    move-result-object v0

    return-object v0
.end method
