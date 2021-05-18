.class public Lbtj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbrn;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lbpv;

.field private d:Lbse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Lbrn;->FRIENDS:Lbrn;

    iput-object v0, p0, Lbtj;->a:Lbrn;

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbtj;->b:Ljava/util/List;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lbtj;->c:Lbpv;

    .line 137
    sget-object v0, Lbse;->NATIVE_WITH_FALLBACK:Lbse;

    iput-object v0, p0, Lbtj;->d:Lbse;

    return-void
.end method

.method static synthetic a(Lbtj;)Lbpv;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lbtj;->c:Lbpv;

    return-object v0
.end method

.method static synthetic b(Lbtj;)Ljava/util/List;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lbtj;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Lbrn;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lbtj;->a:Lbrn;

    return-object v0
.end method

.method public a(Lbrn;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lbtj;->a:Lbrn;

    .line 141
    return-void
.end method

.method public a(Lbse;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lbtj;->d:Lbse;

    .line 182
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lbpv;->PUBLISH:Lbpv;

    iget-object v1, p0, Lbtj;->c:Lbpv;

    invoke-virtual {v0, v1}, Lbpv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setReadPermissions after setPublishPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iput-object p1, p0, Lbtj;->b:Ljava/util/List;

    .line 154
    sget-object v0, Lbpv;->READ:Lbpv;

    iput-object v0, p0, Lbtj;->c:Lbpv;

    .line 155
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lbtj;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    sget-object v0, Lbpv;->READ:Lbpv;

    iget-object v1, p0, Lbtj;->c:Lbpv;

    invoke-virtual {v0, v1}, Lbpv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setPublishPermissions after setReadPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    invoke-static {p1}, Lbqq;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Permissions for publish actions cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    iput-object p1, p0, Lbtj;->b:Ljava/util/List;

    .line 168
    sget-object v0, Lbpv;->PUBLISH:Lbpv;

    iput-object v0, p0, Lbtj;->c:Lbpv;

    .line 169
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lbtj;->b:Ljava/util/List;

    .line 177
    iput-object v0, p0, Lbtj;->c:Lbpv;

    .line 178
    return-void
.end method

.method public d()Lbse;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lbtj;->d:Lbse;

    return-object v0
.end method
