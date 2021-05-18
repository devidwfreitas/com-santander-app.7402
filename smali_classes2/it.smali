.class public Lit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lit;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a()Lit;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lit;->a:Lit;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lit;

    invoke-direct {v0}, Lit;-><init>()V

    sput-object v0, Lit;->a:Lit;

    .line 32
    :cond_0
    sget-object v0, Lit;->a:Lit;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lit;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lit;->b:Ljava/lang/String;

    return-object v0
.end method
