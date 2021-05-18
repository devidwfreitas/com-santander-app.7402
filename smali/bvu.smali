.class public Lbvu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbvu;->d:Ljava/util/Set;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbvu;->e:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lbvu;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lbvu;->a:I

    return v0
.end method

.method static synthetic b(Lbvu;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lbvu;->b:I

    return v0
.end method

.method static synthetic c(Lbvu;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lbvu;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lbvu;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lbvu;->d:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lbvu;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lbvu;->e:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Lbvs;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lbvs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbvs;-><init>(Lbvu;Lbvt;)V

    return-object v0
.end method

.method public a(I)Lbvu;
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lbvu;->a:I

    .line 112
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbvu;
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lbvu;->c:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public b(I)Lbvu;
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lbvu;->b:I

    .line 123
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbvu;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lbvu;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lbvu;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lbvu;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    return-object p0
.end method
