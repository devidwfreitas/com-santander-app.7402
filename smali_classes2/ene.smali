.class public final Lene;
.super Leps;
.source "SourceFile"


# static fields
.field private static final a:Ljava/io/Writer;

.field private static final b:Lekf;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lejz;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lejz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lenf;

    invoke-direct {v0}, Lenf;-><init>()V

    sput-object v0, Lene;->a:Ljava/io/Writer;

    .line 46
    new-instance v0, Lekf;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lekf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lene;->b:Lekf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lene;->a:Ljava/io/Writer;

    invoke-direct {p0, v0}, Leps;-><init>(Ljava/io/Writer;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lene;->c:Ljava/util/List;

    .line 55
    sget-object v0, Lekb;->a:Lekb;

    iput-object v0, p0, Lene;->e:Lejz;

    .line 59
    return-void
.end method

.method private a(Lejz;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lene;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p1}, Lejz;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lene;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    invoke-direct {p0}, Lene;->j()Lejz;

    move-result-object v0

    check-cast v0, Lekc;

    .line 79
    iget-object v1, p0, Lene;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lekc;->a(Ljava/lang/String;Lejz;)V

    .line 81
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lene;->d:Ljava/lang/String;

    .line 92
    :goto_0
    return-void

    .line 82
    :cond_2
    iget-object v0, p0, Lene;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    iput-object p1, p0, Lene;->e:Lejz;

    goto :goto_0

    .line 85
    :cond_3
    invoke-direct {p0}, Lene;->j()Lejz;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lejw;

    if-eqz v1, :cond_4

    .line 87
    check-cast v0, Lejw;

    invoke-virtual {v0, p1}, Lejw;->a(Lejz;)V

    goto :goto_0

    .line 89
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private j()Lejz;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lene;->c:Ljava/util/List;

    iget-object v1, p0, Lene;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    return-object v0
.end method


# virtual methods
.method public a()Lejz;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lene;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lene;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lene;->e:Lejz;

    return-object v0
.end method

.method public a(D)Leps;
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lene;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    new-instance v0, Lekf;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lekf;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lene;->a(Lejz;)V

    .line 175
    return-object p0
.end method

.method public a(J)Leps;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Lekf;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lekf;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lene;->a(Lejz;)V

    .line 180
    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Leps;
    .locals 1

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lene;->f()Leps;

    move-result-object p0

    .line 167
    :goto_0
    return-object p0

    .line 166
    :cond_0
    new-instance v0, Lekf;

    invoke-direct {v0, p1}, Lekf;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lene;->a(Lejz;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Number;)Leps;
    .locals 3

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lene;->f()Leps;

    move-result-object p0

    .line 196
    :goto_0
    return-object p0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lene;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_2
    new-instance v0, Lekf;

    invoke-direct {v0, p1}, Lekf;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lene;->a(Lejz;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Leps;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lene;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lene;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 136
    :cond_1
    invoke-direct {p0}, Lene;->j()Lejz;

    move-result-object v0

    .line 137
    instance-of v0, v0, Lekc;

    if-eqz v0, :cond_2

    .line 138
    iput-object p1, p0, Lene;->d:Ljava/lang/String;

    .line 139
    return-object p0

    .line 141
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Z)Leps;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lekf;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lekf;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lene;->a(Lejz;)V

    .line 159
    return-object p0
.end method

.method public b()Leps;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lejw;

    invoke-direct {v0}, Lejw;-><init>()V

    .line 96
    invoke-direct {p0, v0}, Lene;->a(Lejz;)V

    .line 97
    iget-object v1, p0, Lene;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-object p0
.end method

.method public b(Ljava/lang/String;)Leps;
    .locals 1

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lene;->f()Leps;

    move-result-object p0

    .line 149
    :goto_0
    return-object p0

    .line 148
    :cond_0
    new-instance v0, Lekf;

    invoke-direct {v0, p1}, Lekf;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lene;->a(Lejz;)V

    goto :goto_0
.end method

.method public c()Leps;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lene;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lene;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 105
    :cond_1
    invoke-direct {p0}, Lene;->j()Lejz;

    move-result-object v0

    .line 106
    instance-of v0, v0, Lejw;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lene;->c:Ljava/util/List;

    iget-object v1, p0, Lene;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    return-object p0

    .line 110
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lene;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lene;->c:Ljava/util/List;

    sget-object v1, Lene;->b:Lekf;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public d()Leps;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lekc;

    invoke-direct {v0}, Lekc;-><init>()V

    .line 115
    invoke-direct {p0, v0}, Lene;->a(Lejz;)V

    .line 116
    iget-object v1, p0, Lene;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object p0
.end method

.method public e()Leps;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lene;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lene;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 124
    :cond_1
    invoke-direct {p0}, Lene;->j()Lejz;

    move-result-object v0

    .line 125
    instance-of v0, v0, Lekc;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lene;->c:Ljava/util/List;

    iget-object v1, p0, Lene;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    return-object p0

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public f()Leps;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lekb;->a:Lekb;

    invoke-direct {p0, v0}, Lene;->a(Lejz;)V

    .line 154
    return-object p0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method
