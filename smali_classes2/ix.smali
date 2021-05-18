.class public Lix;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lix;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a()Lix;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lix;->a:Lix;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lix;

    invoke-direct {v0}, Lix;-><init>()V

    sput-object v0, Lix;->a:Lix;

    .line 16
    :cond_0
    sget-object v0, Lix;->a:Lix;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lix;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lix;->b:Ljava/lang/String;

    return-object v0
.end method
