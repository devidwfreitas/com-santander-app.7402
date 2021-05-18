.class public final Lelp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lekp;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lelp;

.field private static final b:D = -1.0


# instance fields
.field private c:D

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lejd;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lejd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lelp;

    invoke-direct {v0}, Lelp;-><init>()V

    sput-object v0, Lelp;->a:Lelp;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lelp;->c:D

    .line 55
    const/16 v0, 0x88

    iput v0, p0, Lelp;->d:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lelp;->e:Z

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lelp;->g:Ljava/util/List;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lelp;->h:Ljava/util/List;

    return-void
.end method

.method private a(Lekt;)Z
    .locals 4

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-interface {p1}, Lekt;->a()D

    move-result-wide v0

    .line 235
    iget-wide v2, p0, Lelp;->c:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lekt;Leku;)Z
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lelp;->a(Lekt;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lelp;->a(Leku;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Leku;)Z
    .locals 4

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    invoke-interface {p1}, Leku;->a()D

    move-result-wide v0

    .line 245
    iget-wide v2, p0, Lelp;->c:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 216
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lelp;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lejm;Lepn;)Lekn;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lejm;",
            "Lepn",
            "<TT;>;)",
            "Lekn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p2}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 113
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lelp;->a(Ljava/lang/Class;Z)Z

    move-result v3

    .line 114
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lelp;->a(Ljava/lang/Class;Z)Z

    move-result v2

    .line 116
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lelq;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lelq;-><init>(Lelp;ZZLejm;Lepn;)V

    goto :goto_0
.end method

.method protected a()Lelp;
    .locals 2

    .prologue
    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lelp;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(D)Lelp;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lelp;->a()Lelp;

    move-result-object v0

    .line 71
    iput-wide p1, v0, Lelp;->c:D

    .line 72
    return-object v0
.end method

.method public a(Lejd;ZZ)Lelp;
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lelp;->a()Lelp;

    move-result-object v0

    .line 99
    if-eqz p2, :cond_0

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lelp;->g:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lelp;->g:Ljava/util/List;

    .line 101
    iget-object v1, v0, Lelp;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    if-eqz p3, :cond_1

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lelp;->h:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lelp;->h:Ljava/util/List;

    .line 106
    iget-object v1, v0, Lelp;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    return-object v0
.end method

.method public varargs a([I)Lelp;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0}, Lelp;->a()Lelp;

    move-result-object v1

    .line 77
    iput v0, v1, Lelp;->d:I

    .line 78
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 79
    iget v4, v1, Lelp;->d:I

    or-int/2addr v3, v4

    iput v3, v1, Lelp;->d:I

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-object v1
.end method

.method public a(Ljava/lang/Class;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 192
    iget-wide v0, p0, Lelp;->c:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    const-class v0, Lekt;

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lekt;

    const-class v1, Leku;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Leku;

    invoke-direct {p0, v0, v1}, Lelp;->a(Lekt;Leku;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 212
    :goto_0
    return v0

    .line 197
    :cond_0
    iget-boolean v0, p0, Lelp;->e:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lelp;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 198
    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0, p1}, Lelp;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 202
    goto :goto_0

    .line 205
    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Lelp;->g:Ljava/util/List;

    .line 206
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejd;

    .line 207
    invoke-interface {v0, p1}, Lejd;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 208
    goto :goto_0

    .line 205
    :cond_4
    iget-object v0, p0, Lelp;->h:Ljava/util/List;

    goto :goto_1

    .line 212
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 150
    iget v0, p0, Lelp;->d:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    .line 188
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-wide v0, p0, Lelp;->c:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    const-class v0, Lekt;

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lekt;

    const-class v1, Leku;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Leku;

    invoke-direct {p0, v0, v1}, Lelp;->a(Lekt;Leku;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 156
    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 160
    goto :goto_0

    .line 163
    :cond_2
    iget-boolean v0, p0, Lelp;->f:Z

    if-eqz v0, :cond_5

    .line 164
    const-class v0, Lekq;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lekq;

    .line 165
    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    invoke-interface {v0}, Lekq;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    .line 166
    goto :goto_0

    .line 165
    :cond_4
    invoke-interface {v0}, Lekq;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    :cond_5
    iget-boolean v0, p0, Lelp;->e:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lelp;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 171
    goto :goto_0

    .line 174
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lelp;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 175
    goto :goto_0

    .line 178
    :cond_7
    if-eqz p2, :cond_9

    iget-object v0, p0, Lelp;->g:Ljava/util/List;

    .line 179
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 180
    new-instance v1, Leje;

    invoke-direct {v1, p1}, Leje;-><init>(Ljava/lang/reflect/Field;)V

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejd;

    .line 182
    invoke-interface {v0, v1}, Lejd;->a(Leje;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 183
    goto/16 :goto_0

    .line 178
    :cond_9
    iget-object v0, p0, Lelp;->h:Ljava/util/List;

    goto :goto_1

    .line 188
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b()Lelp;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lelp;->a()Lelp;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, v0, Lelp;->e:Z

    .line 87
    return-object v0
.end method

.method public c()Lelp;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lelp;->a()Lelp;

    move-result-object v0

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, v0, Lelp;->f:Z

    .line 93
    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lelp;->a()Lelp;

    move-result-object v0

    return-object v0
.end method
