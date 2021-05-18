.class public Lbqg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbqf;

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    return-void
.end method

.method static synthetic a(Lbqg;)Lbqf;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lbqg;->a:Lbqf;

    return-object v0
.end method

.method public static a()Lbqg;
    .locals 2

    .prologue
    .line 993
    new-instance v0, Lbqg;

    invoke-direct {v0}, Lbqg;-><init>()V

    .line 994
    const/4 v1, -0x1

    iput v1, v0, Lbqg;->b:I

    .line 996
    return-object v0
.end method

.method public static a(Lbqf;I)Lbqg;
    .locals 1

    .prologue
    .line 985
    new-instance v0, Lbqg;

    invoke-direct {v0}, Lbqg;-><init>()V

    .line 986
    iput-object p0, v0, Lbqg;->a:Lbqf;

    .line 987
    iput p1, v0, Lbqg;->b:I

    .line 989
    return-object v0
.end method

.method static synthetic b(Lbqg;)I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Lbqg;->b:I

    return v0
.end method


# virtual methods
.method public b()Lbqf;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1003
    iget-object v0, p0, Lbqg;->a:Lbqf;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lbqg;->b:I

    return v0
.end method
