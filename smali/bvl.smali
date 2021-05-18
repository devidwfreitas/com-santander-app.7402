.class public Lbvl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/location/Location;

.field private b:Lbvn;

.field private c:Lbvm;

.field private d:I

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
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget-object v0, Lbvn;->HIGH_ACCURACY:Lbvn;

    iput-object v0, p0, Lbvl;->b:Lbvn;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbvl;->e:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lbvl;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lbvl;->a:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic b(Lbvl;)Lbvn;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lbvl;->b:Lbvn;

    return-object v0
.end method

.method static synthetic c(Lbvl;)Lbvm;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lbvl;->c:Lbvm;

    return-object v0
.end method

.method static synthetic d(Lbvl;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lbvl;->d:I

    return v0
.end method

.method static synthetic e(Lbvl;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lbvl;->e:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Lbvj;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lbvj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbvj;-><init>(Lbvl;Lbvk;)V

    return-object v0
.end method

.method public a(I)Lbvl;
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lbvl;->d:I

    .line 180
    return-object p0
.end method

.method public a(Landroid/location/Location;)Lbvl;
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lbvl;->a:Landroid/location/Location;

    .line 145
    return-object p0
.end method

.method public a(Lbvm;)Lbvl;
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lbvl;->c:Lbvm;

    .line 169
    return-object p0
.end method

.method public a(Lbvn;)Lbvl;
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lbvl;->b:Lbvn;

    .line 159
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbvl;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lbvl;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method
