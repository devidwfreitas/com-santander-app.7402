.class public Lbh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lbh;->b:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lbh;->a:Ljava/lang/Object;

    .line 22
    new-instance v0, Lbj;

    invoke-direct {v0, p0}, Lbj;-><init>(Lbh;)V

    .line 34
    invoke-virtual {v0}, Lbj;->a()Ljava/lang/Object;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lbh;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lbh;-><init>()V

    return-void
.end method

.method public static a()Lbh;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lbh;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lbi;

    invoke-direct {v0}, Lbi;-><init>()V

    .line 16
    invoke-virtual {v0}, Lbi;->a()Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Lbh;

    sput-object v0, Lbh;->b:Ljava/lang/Object;

    .line 18
    :cond_0
    sget-object v0, Lbh;->b:Ljava/lang/Object;

    check-cast v0, Lbh;

    return-object v0
.end method
