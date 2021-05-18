.class public Lnr;
.super Labv;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "title"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "subTitle"
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labz;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "groups"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "contractText"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "signatureOwner"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "signatureDate"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "usefulServicesInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Labv;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnr;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lnr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lnr;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lnr;->c:Ljava/util/List;

    .line 57
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lnr;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lnr;->c:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lnr;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lnr;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnr;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lnr;->f:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lnr;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lnr;->g:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lnr;->g:Ljava/lang/String;

    return-object v0
.end method
