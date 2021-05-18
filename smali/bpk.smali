.class public Lbpk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private c:Lbpl;

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string v0, "imageUri"

    invoke-static {p2, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lbpk;->a:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lbpk;->b:Landroid/net/Uri;

    .line 135
    return-void
.end method

.method static synthetic a(Lbpk;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lbpk;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lbpk;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lbpk;->b:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c(Lbpk;)Lbpl;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lbpk;->c:Lbpl;

    return-object v0
.end method

.method static synthetic d(Lbpk;)Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lbpk;->d:Z

    return v0
.end method

.method static synthetic e(Lbpk;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lbpk;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Lbpi;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lbpi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbpi;-><init>(Lbpk;Lbpj;)V

    return-object v0
.end method

.method public a(Lbpl;)Lbpk;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lbpk;->c:Lbpl;

    .line 139
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lbpk;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lbpk;->e:Ljava/lang/Object;

    .line 144
    return-object p0
.end method

.method public a(Z)Lbpk;
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lbpk;->d:Z

    .line 149
    return-object p0
.end method
