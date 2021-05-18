.class public abstract Lbny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTENT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbhn",
        "<TCONTENT;TRESU",
        "LT;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/String; = "FacebookDialog"


# instance fields
.field private final c:Landroid/app/Activity;

.field private final d:Lbpa;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbny",
            "<TCONTENT;TRESU",
            "LT;",
            ">.bnz;>;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbny;->a:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "activity"

    invoke-static {p1, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lbny;->c:Landroid/app/Activity;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lbny;->d:Lbpa;

    .line 57
    iput p2, p0, Lbny;->f:I

    .line 58
    return-void
.end method

.method protected constructor <init>(Lbpa;I)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "fragmentWrapper"

    invoke-static {p1, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lbny;->d:Lbpa;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lbny;->c:Landroid/app/Activity;

    .line 64
    iput p2, p0, Lbny;->f:I

    .line 66
    invoke-virtual {p1}, Lbpa;->c()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use a fragment that is not attached to an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)Lbmr;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")",
            "Lbmr;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 203
    sget-object v0, Lbny;->a:Ljava/lang/Object;

    if-ne p2, v0, :cond_3

    move v1, v2

    .line 205
    :goto_0
    const/4 v3, 0x0

    .line 206
    invoke-direct {p0}, Lbny;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnz;

    .line 207
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lbnz;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 210
    :cond_1
    invoke-virtual {v0, p1, v2}, Lbnz;->a(Ljava/lang/Object;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    :try_start_0
    invoke-virtual {v0, p1}, Lbnz;->a(Ljava/lang/Object;)Lbmr;
    :try_end_0
    .catch Lbhp; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_1
    if-nez v0, :cond_2

    .line 224
    invoke-virtual {p0}, Lbny;->d()Lbmr;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lbnw;->a(Lbmr;)V

    .line 228
    :cond_2
    return-object v0

    .line 203
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    invoke-virtual {p0}, Lbny;->d()Lbmr;

    move-result-object v0

    .line 218
    invoke-static {v0, v1}, Lbnw;->a(Lbmr;Lbhp;)V

    goto :goto_1

    :cond_4
    move-object v0, v3

    goto :goto_1
.end method

.method private e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbny",
            "<TCONTENT;TRESU",
            "LT;",
            ">.bnz;>;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lbny;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lbny;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbny;->e:Ljava/util/List;

    .line 236
    :cond_0
    iget-object v0, p0, Lbny;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lbny;->f:I

    return v0
.end method

.method protected a(I)V
    .locals 3

    .prologue
    .line 104
    invoke-static {p1}, Lbhv;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iput p1, p0, Lbny;->f:I

    .line 109
    return-void
.end method

.method protected a(Landroid/content/Intent;I)V
    .locals 4

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lbny;->c:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lbny;->c:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    :goto_0
    if-eqz v0, :cond_0

    .line 195
    sget-object v1, Lbjb;->DEVELOPER_ERRORS:Lbjb;

    const/4 v2, 0x6

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {v1, v2, v3, v0}, Lbpu;->a(Lbjb;ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lbny;->d:Lbpa;

    if-eqz v1, :cond_4

    .line 184
    iget-object v1, p0, Lbny;->d:Lbpa;

    invoke-virtual {v1}, Lbpa;->a()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lbny;->d:Lbpa;

    invoke-virtual {v1}, Lbpa;->a()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v1, p0, Lbny;->d:Lbpa;

    invoke-virtual {v1}, Lbpa;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 187
    iget-object v1, p0, Lbny;->d:Lbpa;

    invoke-virtual {v1}, Lbpa;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 189
    :cond_3
    const-string v0, "Failed to find Activity or Fragment to startActivityForResult "

    goto :goto_0

    .line 192
    :cond_4
    const-string v0, "Failed to find Activity or Fragment to startActivityForResult "

    goto :goto_0
.end method

.method public final a(Lbhd;Lbhl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhd;",
            "Lbhl",
            "<TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    instance-of v0, p1, Lbnj;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lbhp;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    check-cast p1, Lbnj;

    invoke-virtual {p0, p1, p2}, Lbny;->a(Lbnj;Lbhl;)V

    .line 81
    return-void
.end method

.method public final a(Lbhd;Lbhl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhd;",
            "Lbhl",
            "<TRESU",
            "LT;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0, p3}, Lbny;->a(I)V

    .line 89
    invoke-virtual {p0, p1, p2}, Lbny;->a(Lbhd;Lbhl;)V

    .line 90
    return-void
.end method

.method protected abstract a(Lbnj;Lbhl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbnj;",
            "Lbhl",
            "<TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)Z"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lbny;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lbny;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    sget-object v0, Lbny;->a:Ljava/lang/Object;

    if-ne p2, v0, :cond_2

    move v1, v2

    .line 129
    :goto_0
    invoke-direct {p0}, Lbny;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnz;

    .line 130
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lbnz;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    :cond_1
    invoke-virtual {v0, p1, v3}, Lbnz;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_1
    return v2

    :cond_2
    move v1, v3

    .line 127
    goto :goto_0

    :cond_3
    move v2, v3

    .line 140
    goto :goto_1
.end method

.method protected b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lbny;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lbny;->c:Landroid/app/Activity;

    .line 176
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lbny;->d:Lbpa;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lbny;->d:Lbpa;

    invoke-virtual {v0}, Lbpa;->c()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)V"
        }
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lbny;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lbny;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lbny;->c(Ljava/lang/Object;Ljava/lang/Object;)Lbmr;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    .line 152
    iget-object v1, p0, Lbny;->d:Lbpa;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lbny;->d:Lbpa;

    invoke-static {v0, v1}, Lbnw;->a(Lbmr;Lbpa;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lbny;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Lbnw;->a(Lbmr;Landroid/app/Activity;)V

    goto :goto_0

    .line 159
    :cond_2
    const-string v0, "No code path should ever result in a null appCall"

    .line 160
    const-string v1, "FacebookDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lbhv;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbny",
            "<TCONTENT;TRESU",
            "LT;",
            ">.bnz;>;"
        }
    .end annotation
.end method

.method protected abstract d()Lbmr;
.end method
