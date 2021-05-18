.class public Lkhl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lkhi;

.field private c:Lkie;


# direct methods
.method public constructor <init>(Lkhi;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "ListaOperadorasDialogFragment"

    iput-object v0, p0, Lkhl;->a:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lkhl;->b:Lkhi;

    .line 28
    new-instance v0, Lkie;

    invoke-direct {p0}, Lkhl;->c()Lkif;

    move-result-object v1

    invoke-direct {v0, v1}, Lkie;-><init>(Lkif;)V

    iput-object v0, p0, Lkhl;->c:Lkie;

    .line 29
    return-void
.end method

.method static synthetic a(Lkhl;)Lkie;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lkhl;->c:Lkie;

    return-object v0
.end method

.method static synthetic b(Lkhl;)Lkhi;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lkhl;->b:Lkhi;

    return-object v0
.end method

.method private c()Lkif;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lkho;

    invoke-direct {v0, p0}, Lkho;-><init>(Lkhl;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lkhm;

    invoke-direct {v0, p0}, Lkhm;-><init>(Lkhl;)V

    return-object v0
.end method

.method public b()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lkhn;

    invoke-direct {v0, p0}, Lkhn;-><init>(Lkhl;)V

    return-object v0
.end method
