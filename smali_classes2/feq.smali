.class public Lfeq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lfdu;

.field private c:I

.field private d:Z

.field private e:Lfew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lfeq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfeq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfeq;->d:Z

    .line 18
    new-instance v0, Lfer;

    invoke-direct {v0}, Lfer;-><init>()V

    iput-object v0, p0, Lfeq;->e:Lfew;

    .line 21
    iput p1, p0, Lfeq;->c:I

    .line 22
    return-void
.end method

.method public constructor <init>(ILfdu;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfeq;->d:Z

    .line 18
    new-instance v0, Lfer;

    invoke-direct {v0}, Lfer;-><init>()V

    iput-object v0, p0, Lfeq;->e:Lfew;

    .line 25
    iput p1, p0, Lfeq;->c:I

    .line 26
    iput-object p2, p0, Lfeq;->b:Lfdu;

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lfeq;->c:I

    return v0
.end method

.method public a(Lfdu;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lfeq;->e:Lfew;

    iget-object v1, p0, Lfeq;->b:Lfdu;

    invoke-virtual {v0, p1, v1}, Lfew;->b(Lfdu;Lfdu;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;Z)Lfdu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfdu;",
            ">;Z)",
            "Lfdu;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p2}, Lfeq;->a(Z)Lfdu;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lfeq;->e:Lfew;

    invoke-virtual {v1, p1, v0}, Lfew;->a(Ljava/util/List;Lfdu;)Lfdu;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lfdu;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lfeq;->b:Lfdu;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    if-eqz p1, :cond_1

    .line 53
    iget-object v0, p0, Lfeq;->b:Lfdu;

    invoke-virtual {v0}, Lfdu;->a()Lfdu;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lfeq;->b:Lfdu;

    goto :goto_0
.end method

.method public a(Lfew;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lfeq;->e:Lfew;

    .line 43
    return-void
.end method

.method public b()Lfdu;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lfeq;->b:Lfdu;

    return-object v0
.end method

.method public c()Lfew;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lfeq;->e:Lfew;

    return-object v0
.end method
