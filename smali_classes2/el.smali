.class public Lel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lel;->b:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lel;->c:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lel;->a:Landroid/net/Uri;

    .line 44
    iput-object p4, p0, Lel;->d:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lel;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lel;->b:Ljava/lang/String;

    return-object v0
.end method
