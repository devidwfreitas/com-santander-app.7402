.class Lmyw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lmyu;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lmyu;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lmyw;->a:Lmyu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmyu;Lmyv;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lmyw;-><init>(Lmyu;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lmyw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lmyw;->b:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lmyw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lmyw;->c:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lmyw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lmyw;->d:Ljava/lang/String;

    .line 212
    return-void
.end method
