.class public Lktt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "name"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "description"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "image"
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkts;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "products"
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkoe;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "proposal"
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkoe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lktt;->f:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lktt;->a:I

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lktt;->d:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkoe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lktt;->f:Ljava/util/List;

    .line 37
    return-void
.end method

.method public a(Lkoe;)V
    .locals 1

    .prologue
    .line 40
    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lktt;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lktt;->f:Ljava/util/List;

    .line 45
    :cond_0
    iget-object v0, p0, Lktt;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lktt;->k:Z

    .line 62
    return-void
.end method

.method public a(Lkts;)Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lktt;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lktt;->e:Ljava/util/List;

    .line 102
    :cond_0
    iget-object v0, p0, Lktt;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public b(Z)Lktt;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lktt;

    invoke-direct {v0}, Lktt;-><init>()V

    .line 86
    iget-object v1, p0, Lktt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lktt;->b(Ljava/lang/String;)V

    .line 87
    iget v1, p0, Lktt;->a:I

    invoke-virtual {v0, v1}, Lktt;->a(I)V

    .line 88
    iget-object v1, p0, Lktt;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lktt;->c(Ljava/lang/String;)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v1, p0, Lktt;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lktt;->b(Ljava/util/List;)V

    .line 91
    iget-object v1, p0, Lktt;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lktt;->a(Ljava/util/List;)V

    .line 93
    :cond_0
    iget-object v1, p0, Lktt;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lktt;->a(Ljava/lang/String;)V

    .line 94
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lktt;->b:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkts;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lktt;->e:Ljava/util/List;

    .line 126
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lktt;->k:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lktt;->a:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lktt;->c:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lktt;->i:Z

    .line 150
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lktt;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lktt;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lktt;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lktt;->g:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lktt;->j:Z

    .line 158
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lktt;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lktt;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lktt;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lktt;->h:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkts;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lktt;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lktt;->e:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lktt;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lktt;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lktt;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lktt;->i:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lktt;->j:Z

    return v0
.end method
