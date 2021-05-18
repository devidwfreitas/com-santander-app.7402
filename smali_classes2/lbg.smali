.class Llbg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Llbc;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Llbc;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    iput-object p1, p0, Llbg;->a:Llbc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-boolean v0, p0, Llbg;->b:Z

    .line 142
    iput-boolean v0, p0, Llbg;->c:Z

    .line 143
    iput-boolean v0, p0, Llbg;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Llbc;Llbd;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Llbg;-><init>(Llbc;)V

    return-void
.end method

.method static synthetic a(Llbg;Z)Z
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Llbg;->b:Z

    return p1
.end method

.method static synthetic b(Llbg;Z)Z
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Llbg;->c:Z

    return p1
.end method

.method static synthetic c(Llbg;Z)Z
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Llbg;->d:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Llbg;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llbg;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llbg;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
