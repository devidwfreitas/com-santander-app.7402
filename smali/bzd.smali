.class public final Lbzd;
.super Lcal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcal",
        "<",
        "Lcom/facebook/share/internal/ShareFeedContent;",
        "Lbzd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcal;-><init>()V

    return-void
.end method

.method public static synthetic a(Lbzd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lbzd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lbzd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lbzd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lbzd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lbzd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lbzd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lbzd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lbzd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lbzd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lbzd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lbzd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lbzd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lbzd;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/share/internal/ShareFeedContent;)Lbzd;
    .locals 2

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-object p0

    .line 176
    :cond_0
    invoke-super {p0, p1}, Lcal;->a(Lcom/facebook/share/model/ShareContent;)Lcal;

    move-result-object v0

    check-cast v0, Lbzd;

    .line 177
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbzd;->a(Ljava/lang/String;)Lbzd;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbzd;->b(Ljava/lang/String;)Lbzd;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbzd;->c(Ljava/lang/String;)Lbzd;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbzd;->d(Ljava/lang/String;)Lbzd;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbzd;->e(Ljava/lang/String;)Lbzd;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbzd;->f(Ljava/lang/String;)Lbzd;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbzd;->g(Ljava/lang/String;)Lbzd;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lbzd;
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lbzd;->a:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareContent;)Lcal;
    .locals 1

    .prologue
    .line 120
    check-cast p1, Lcom/facebook/share/internal/ShareFeedContent;

    invoke-virtual {p0, p1}, Lbzd;->a(Lcom/facebook/share/internal/ShareFeedContent;)Lbzd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 120
    check-cast p1, Lcom/facebook/share/internal/ShareFeedContent;

    invoke-virtual {p0, p1}, Lbzd;->a(Lcom/facebook/share/internal/ShareFeedContent;)Lbzd;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lbzd;->b()Lcom/facebook/share/internal/ShareFeedContent;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lbzd;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lbzd;->b:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public b()Lcom/facebook/share/internal/ShareFeedContent;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/facebook/share/internal/ShareFeedContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/internal/ShareFeedContent;-><init>(Lbzd;Lbzc;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lbzd;
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lbzd;->c:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lbzd;
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lbzd;->d:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lbzd;
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lbzd;->e:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lbzd;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lbzd;->f:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lbzd;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lbzd;->g:Ljava/lang/String;

    .line 162
    return-object p0
.end method
