.class public Lhwn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhvl;
.implements Lhvm;
.implements Lhwm;


# instance fields
.field private a:Lhwa;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lhvk;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhwa;)V
    .locals 1
    .param p1    # Lhwa;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lhwn;->a:Lhwa;

    .line 39
    invoke-static {}, Lhvn;->e()Lhvk;

    move-result-object v0

    iput-object v0, p0, Lhwn;->b:Lhvk;

    .line 40
    return-void
.end method

.method private c(Lhxn;)V
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lhwn;->b:Lhvk;

    invoke-interface {v0}, Lhvk;->a()Ljava/util/List;

    move-result-object v2

    .line 123
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lhxn;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 124
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 125
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 127
    :goto_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lhwn;->c:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0, v2}, Lhwa;->b(Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0, v1}, Lhwa;->a(I)V

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method private d(Lhxn;)V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lhwn;->b:Lhvk;

    invoke-interface {v0}, Lhvk;->b()Ljava/util/List;

    move-result-object v2

    .line 136
    const-string v0, "%01d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lhxn;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 137
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 138
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 140
    :goto_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lhwn;->d:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0, v2}, Lhwa;->c(Ljava/util/List;)V

    .line 142
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0, v1}, Lhwa;->b(I)V

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0}, Lhwa;->a()V

    .line 150
    iget-object v0, p0, Lhwn;->b:Lhvk;

    invoke-interface {v0}, Lhvk;->c()Lhxn;

    move-result-object v0

    invoke-static {v0}, Lhxi;->b(Lhxn;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0}, Lhwa;->c()V

    .line 47
    iget-object v0, p0, Lhwn;->b:Lhvk;

    invoke-interface {v0, p0}, Lhvk;->a(Lhvm;)V

    goto :goto_0
.end method

.method public a(Lhur;)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0}, Lhwa;->d()V

    .line 116
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-virtual {p1}, Lhur;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lhwa;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(Lhxn;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0}, Lhwa;->d()V

    .line 107
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0, p1}, Lhwa;->a(Lhxn;)V

    .line 108
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {p1}, Lhxn;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lhwa;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwn;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhwn;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iput-object p1, p0, Lhwn;->c:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0}, Lhwa;->c()V

    .line 87
    iget-object v0, p0, Lhwn;->b:Lhvk;

    iget-object v1, p0, Lhwn;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2, p0}, Lhvk;->a(IILhvl;)V

    .line 88
    iget-object v0, p0, Lhwn;->b:Lhvk;

    invoke-interface {v0}, Lhvk;->c()Lhxn;

    move-result-object v0

    invoke-static {v0, p1}, Lhxi;->a(Lhxn;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0}, Lhwa;->b()V

    .line 158
    iget-object v0, p0, Lhwn;->b:Lhvk;

    invoke-interface {v0}, Lhvk;->c()Lhxn;

    move-result-object v0

    invoke-static {v0}, Lhxi;->c(Lhxn;)V

    goto :goto_0
.end method

.method public b(Lhur;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0}, Lhwa;->d()V

    .line 72
    invoke-virtual {p1}, Lhur;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    iget-object v1, p0, Lhwn;->a:Lhwa;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lhwa;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0}, Lhwa;->e()V

    goto :goto_0
.end method

.method public b(Lhxn;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0}, Lhwa;->d()V

    .line 60
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0, p1}, Lhwa;->a(Lhxn;)V

    .line 61
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {p1}, Lhxn;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lhwa;->a(Ljava/util/List;)V

    .line 62
    invoke-direct {p0, p1}, Lhwn;->c(Lhxn;)V

    .line 63
    invoke-direct {p0, p1}, Lhwn;->d(Lhxn;)V

    .line 64
    invoke-static {p1}, Lhxi;->a(Lhxn;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwn;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhwn;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iput-object p1, p0, Lhwn;->d:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0}, Lhwa;->c()V

    .line 98
    iget-object v0, p0, Lhwn;->b:Lhvk;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lhwn;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2, p0}, Lhvk;->a(IILhvl;)V

    .line 99
    iget-object v0, p0, Lhwn;->b:Lhvk;

    invoke-interface {v0}, Lhvk;->c()Lhxn;

    move-result-object v0

    invoke-static {v0, p1}, Lhxi;->b(Lhxn;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lhwn;->a:Lhwa;

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lhwn;->a:Lhwa;

    invoke-interface {v0}, Lhwa;->f()V

    .line 166
    iget-object v0, p0, Lhwn;->b:Lhvk;

    invoke-interface {v0}, Lhvk;->c()Lhxn;

    move-result-object v0

    invoke-static {v0}, Lhxi;->d(Lhxn;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lhwn;->a:Lhwa;

    .line 53
    return-void
.end method
