.class public Lbvi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lbvi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lbvi;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lbvi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lbvi;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lbvi;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lbvi;->c:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a()Lbvg;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lbvg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbvg;-><init>(Lbvi;Lbvh;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lbvi;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lbvi;->b:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public a(Z)Lbvi;
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbvi;->c:Ljava/lang/Boolean;

    .line 88
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbvi;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lbvi;->a:Ljava/lang/String;

    .line 111
    return-object p0
.end method
