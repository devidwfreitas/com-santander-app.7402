.class public Lbee;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbcd;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lawr;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Lbeh;

.field private final g:J

.field private final h:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbcm;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lbbr;

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:F

.field private final o:F

.field private final p:I

.field private final q:I

.field private final r:Lbbm;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final s:Lbbp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final t:Lbao;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final v:Lbei;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lbee;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbee;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lawr;Ljava/lang/String;JLbeh;JLjava/lang/String;Ljava/util/List;Lbbr;IIIFFIILbbm;Lbbp;Ljava/util/List;Lbei;Lbao;)V
    .locals 1
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Lbbm;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lbbp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p23    # Lbao;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbcd;",
            ">;",
            "Lawr;",
            "Ljava/lang/String;",
            "J",
            "Lbeh;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbcm;",
            ">;",
            "Lbbr;",
            "IIIFFII",
            "Lbbm;",
            "Lbbp;",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lbei;",
            "Lbao;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lbee;->b:Ljava/util/List;

    .line 78
    iput-object p2, p0, Lbee;->c:Lawr;

    .line 79
    iput-object p3, p0, Lbee;->d:Ljava/lang/String;

    .line 80
    iput-wide p4, p0, Lbee;->e:J

    .line 81
    iput-object p6, p0, Lbee;->f:Lbeh;

    .line 82
    iput-wide p7, p0, Lbee;->g:J

    .line 83
    iput-object p9, p0, Lbee;->h:Ljava/lang/String;

    .line 84
    iput-object p10, p0, Lbee;->i:Ljava/util/List;

    .line 85
    iput-object p11, p0, Lbee;->j:Lbbr;

    .line 86
    iput p12, p0, Lbee;->k:I

    .line 87
    iput p13, p0, Lbee;->l:I

    .line 88
    iput p14, p0, Lbee;->m:I

    .line 89
    move/from16 v0, p15

    iput v0, p0, Lbee;->n:F

    .line 90
    move/from16 v0, p16

    iput v0, p0, Lbee;->o:F

    .line 91
    move/from16 v0, p17

    iput v0, p0, Lbee;->p:I

    .line 92
    move/from16 v0, p18

    iput v0, p0, Lbee;->q:I

    .line 93
    move-object/from16 v0, p19

    iput-object v0, p0, Lbee;->r:Lbbm;

    .line 94
    move-object/from16 v0, p20

    iput-object v0, p0, Lbee;->s:Lbbp;

    .line 95
    move-object/from16 v0, p21

    iput-object v0, p0, Lbee;->u:Ljava/util/List;

    .line 96
    move-object/from16 v0, p22

    iput-object v0, p0, Lbee;->v:Lbei;

    .line 97
    move-object/from16 v0, p23

    iput-object v0, p0, Lbee;->t:Lbao;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lawr;Ljava/lang/String;JLbeh;JLjava/lang/String;Ljava/util/List;Lbbr;IIIFFIILbbm;Lbbp;Ljava/util/List;Lbei;Lbao;Lbef;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p23}, Lbee;-><init>(Ljava/util/List;Lawr;Ljava/lang/String;JLbeh;JLjava/lang/String;Ljava/util/List;Lbbr;IIIFFIILbbm;Lbbp;Ljava/util/List;Lbei;Lbao;)V

    return-void
.end method


# virtual methods
.method a()Lawr;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lbee;->c:Lawr;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbee;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v0, p0, Lbee;->c:Lawr;

    invoke-virtual {p0}, Lbee;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lawr;->a(J)Lbee;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_1

    .line 193
    const-string v2, "\t\tParents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbee;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v2, p0, Lbee;->c:Lawr;

    invoke-virtual {v0}, Lbee;->m()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lawr;->a(J)Lbee;

    move-result-object v0

    .line 195
    :goto_0
    if-eqz v0, :cond_0

    .line 196
    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbee;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v2, p0, Lbee;->c:Lawr;

    invoke-virtual {v0}, Lbee;->m()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lawr;->a(J)Lbee;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_1
    invoke-virtual {p0}, Lbee;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbee;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_2
    invoke-virtual {p0}, Lbee;->r()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbee;->q()I

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%dx%d %X\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 206
    invoke-virtual {p0}, Lbee;->r()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lbee;->q()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p0}, Lbee;->p()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_3
    iget-object v0, p0, Lbee;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 209
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v0, p0, Lbee;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 211
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 214
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lbee;->n:F

    return v0
.end method

.method c()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lbee;->o:F

    return v0
.end method

.method d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lbee;->u:Ljava/util/List;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lbee;->e:J

    return-wide v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lbee;->d:Ljava/lang/String;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lbee;->h:Ljava/lang/String;

    return-object v0
.end method

.method h()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lbee;->p:I

    return v0
.end method

.method i()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lbee;->q:I

    return v0
.end method

.method j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbcm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lbee;->i:Ljava/util/List;

    return-object v0
.end method

.method public k()Lbeh;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lbee;->f:Lbeh;

    return-object v0
.end method

.method l()Lbei;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lbee;->v:Lbei;

    return-object v0
.end method

.method m()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lbee;->g:J

    return-wide v0
.end method

.method n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbcd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lbee;->b:Ljava/util/List;

    return-object v0
.end method

.method o()Lbbr;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lbee;->j:Lbbr;

    return-object v0
.end method

.method p()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lbee;->m:I

    return v0
.end method

.method q()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lbee;->l:I

    return v0
.end method

.method r()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lbee;->k:I

    return v0
.end method

.method s()Lbbm;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lbee;->r:Lbbm;

    return-object v0
.end method

.method t()Lbbp;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lbee;->s:Lbbp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, ""

    invoke-virtual {p0, v0}, Lbee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Lbao;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lbee;->t:Lbao;

    return-object v0
.end method
