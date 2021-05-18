.class public Lknx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Date;
    .annotation runtime Leks;
        a = "paymentDate"
    .end annotation
.end field

.field private b:Ljava/util/Date;
    .annotation runtime Leks;
        a = "dueDate"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "installment"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "status"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "value"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "discountValue"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "paidValue"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lknx;->a:Ljava/util/Date;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lknx;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lknx;->a:Ljava/util/Date;

    .line 39
    return-void
.end method

.method public b()Ljava/util/Date;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lknx;->b:Ljava/util/Date;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lknx;->d:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lknx;->b:Ljava/util/Date;

    .line 47
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lknx;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lknx;->e:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lknx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lknx;->f:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lknx;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lknx;->g:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lknx;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lknx;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lknx;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
