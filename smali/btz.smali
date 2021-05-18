.class public Lbtz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lbtz;->a:Landroid/net/Uri;

    .line 37
    iput-object p2, p0, Lbtz;->b:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lbtz;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Lbtz;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lbtz;->d:Landroid/net/Uri;

    .line 97
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbtz;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lbtz;->c:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lbtz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbtz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbtz;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public e()Lbty;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lbty;

    invoke-direct {v0, p0}, Lbty;-><init>(Lbtz;)V

    return-object v0
.end method
