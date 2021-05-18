.class public Lkws;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lkws;


# instance fields
.field private a:Lmgz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lkws;

    invoke-direct {v0}, Lkws;-><init>()V

    sput-object v0, Lkws;->b:Lkws;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lmgz;

    invoke-direct {v0}, Lmgz;-><init>()V

    iput-object v0, p0, Lkws;->a:Lmgz;

    .line 25
    return-void
.end method

.method public static a()Lkws;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lkws;->b:Lkws;

    return-object v0
.end method


# virtual methods
.method public b()Lnfg;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lkws;->a:Lmgz;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lmgz;

    invoke-direct {v0}, Lmgz;-><init>()V

    iput-object v0, p0, Lkws;->a:Lmgz;

    .line 35
    :cond_0
    iget-object v0, p0, Lkws;->a:Lmgz;

    return-object v0
.end method
