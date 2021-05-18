.class public Ljlj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "main_text"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "secondary_text"
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljlk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljlj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Ljlj;->d:I

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Ljlj;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public a(Ljlk;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Ljlj;->e:Ljlk;

    .line 71
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ljlj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Ljlj;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljlj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Ljlj;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Ljlj;->d:I

    return v0
.end method

.method public e()Ljlk;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljlj;->e:Ljlk;

    return-object v0
.end method
